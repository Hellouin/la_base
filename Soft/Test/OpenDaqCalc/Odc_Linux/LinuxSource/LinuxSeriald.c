#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <termios.h>
#include <unistd.h>
#include <sys/ioctl.h>

#define RX_MSG_MAX_LEN       512
#define RX_DATA_FILE_MAX_LEN 512
#define RX_LOCK_FILE_MAX_LEN 512

static void CreateRxDataFile(char *FileName, char *Data);
static int  LockFileExists(char *FileName);
static void CreateLockFile(char *FileName);

int main(int argc,char** argv)
{
  struct termios tio;
  struct termios stdio;
  struct termios old_stdio;
  int tty_fd, Idx = 0, Ret, ExitVal = 1;
  char RxMsg[RX_MSG_MAX_LEN + 1];
  char RxDataFile[RX_DATA_FILE_MAX_LEN + 1];
  char RxLockFile[RX_DATA_FILE_MAX_LEN + 1];
  unsigned char c = 'D';

  if(argc < 5)
  {
    printf("Please start with %s /dev/ttyS1 19200 rxdata.txt lock.txt (for example)\n", argv[0]);
  }
  else
  {
    strncpy(RxDataFile, argv[3], RX_DATA_FILE_MAX_LEN);
    printf("RxDataFile=%s\n", RxDataFile);
    strncpy(RxLockFile, argv[4], RX_LOCK_FILE_MAX_LEN);
    printf("RxLockFile=%s\n", RxLockFile);
    tcgetattr(STDOUT_FILENO, &old_stdio);
    memset(&stdio, 0, sizeof(stdio));
    stdio.c_iflag = 0;
    stdio.c_oflag = 0;
    stdio.c_cflag = 0;
    stdio.c_lflag = 0;
    stdio.c_cc[VMIN] = 1;
    stdio.c_cc[VTIME] = 0;
    tcsetattr(STDOUT_FILENO, TCSANOW, &stdio);
    tcsetattr(STDOUT_FILENO, TCSAFLUSH, &stdio);
    fcntl(STDIN_FILENO, F_SETFL, O_NONBLOCK);       /* make the reads non-blocking */

    memset(&tio, 0, sizeof(tio));
    tio.c_iflag = 0;
    tio.c_oflag = 0;
    tio.c_cflag = CS8 | CREAD | CLOCAL;           /* 8n1, see termios.h for more information */
    tio.c_lflag = 0;
    tio.c_cc[VMIN] = 1;
    tio.c_cc[VTIME] = 5;

    tty_fd=open(argv[1], O_RDWR | O_NONBLOCK);
    if(!strcmp(argv[2], "115200"))
    {
      cfsetospeed(&tio, B115200);            /* 115200 baud */
      cfsetispeed(&tio, B115200);            /* 115200 baud */
    }
    else if(!strcmp(argv[2], "57600"))
    {
      cfsetospeed(&tio, B57600);            /* 57600 baud */
      cfsetispeed(&tio, B57600);            /* 57600 baud */
    }
    else if(!strcmp(argv[2], "38400"))
    {
      cfsetospeed(&tio, B38400);            /* 38400 baud */
      cfsetispeed(&tio, B38400);            /* 38400 baud */
    }
    else if(!strcmp(argv[2], "19200"))
    {
      cfsetospeed(&tio, B19200);            /* 19200 baud */
      cfsetispeed(&tio, B19200);            /* 19200 baud */
    }
    else if(!strcmp(argv[2], "9600"))
    {
      cfsetospeed(&tio, B9600);            /* 9600 baud */
      cfsetispeed(&tio, B9600);            /* 9600 baud */
    }
    else if(!strcmp(argv[2], "4800"))
    {
      cfsetospeed(&tio, B4800);            /* 4800 baud */
      cfsetispeed(&tio, B4800);            /* 4800 baud */
    }
    else if(!strcmp(argv[2], "2400"))
    {
      cfsetospeed(&tio, B2400);            /* 2400 baud */
      cfsetispeed(&tio, B2400);            /* 2400 baud */
    }
    else if(!strcmp(argv[2], "1200"))
    {
      cfsetospeed(&tio, B1200);            /* 1200 baud */
      cfsetispeed(&tio, B1200);            /* 1200 baud */
    }
    else
    {
      /* default is 115200 */
      cfsetospeed(&tio, B115200);            /* 115200 baud */
      cfsetispeed(&tio, B115200);            /* 115200 baud */
    }
    tcsetattr(tty_fd, TCSANOW, &tio);
    while (c != 'q')
    {
  /*	if (read(tty_fd,&c,1)>0)        write(STDOUT_FILENO,&c,1);  if new data is available on the serial port, print it out */
      Ret = 0;
      if (read(tty_fd, &c, 1) > 0)
      {
	if( ((c == 10) && Idx) || ((c == 13) && Idx) || (Idx >= RX_MSG_MAX_LEN))
	{
	  RxMsg[Idx] = 0;
	  Idx = 0;
	  Ret = 1;
	}
	else
	{
	  if((c != 10) && (c != 13))
	  {
	    RxMsg[Idx] = c;
	    Idx++;
	  }
	}
      }
      if(Ret)
      {
	Ret = 0;
	printf("Rx: '%s'\n\r", RxMsg);
        while(LockFileExists(RxLockFile))
	{
	  usleep(5);/* Wait until calc reads the data.txt file and removes the lock.txt file. */
#if 1
	  if(read(STDIN_FILENO, &c, 1) > 0) /* Allow to quit with q in the console */
	  {
	    if(c == 'q') break;
	  }
#endif
	}
	CreateRxDataFile(RxDataFile, RxMsg);
        CreateLockFile(RxLockFile);
      }
      usleep(5);
      if (read(STDIN_FILENO, &c, 1) > 0) Ret = write(tty_fd,&c,1);        /* if new data is available on the console, send it to the serial port */
    }
    close(tty_fd);
    tcsetattr(STDOUT_FILENO, TCSANOW, &old_stdio);
    ExitVal = 0;
  }
  return ExitVal;/* EXIT_SUCCESS; */
}

static void CreateRxDataFile(char *FileName, char *Data)
{
  FILE *f;
  
  f = fopen(FileName, "w");
  if (f == NULL)
  {
      printf("Error opening file!\n");
      return;
  }
  /* print some text */
  fprintf(f, "%s\n", Data);
  /* Do not forget to clode the file */
  fclose(f);
}

static void CreateLockFile(char *FileName)
{
  FILE *f;
  
  f = fopen(FileName, "w");
  if (f == NULL)
  {
      printf("Error opening lock file!\n");
      return;
  }
  /* print some text */
  fprintf(f, "%s\n", "DataAvailable");
  /* Do not forget to clode the file */
  fclose(f);
}

static int LockFileExists(char *FileName)
{
  FILE *fp;
  int Exists = 1;
  
  fp = fopen(FileName, "r");
  if (fp == NULL) {
    Exists = 0;
  }
  else
  fclose(fp);
  
  return(Exists);
}
