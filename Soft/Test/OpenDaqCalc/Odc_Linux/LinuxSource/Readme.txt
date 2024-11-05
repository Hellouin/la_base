LinuxSeriald is the Linux executable used by LibreOffice Basic Calc to read the serial port. This one is not needed for Windows.
The LinuxSeriald executable (binary) is provided with OpenDaqClac.
For Linux, if you want to compile from source, issue the following command, this will create the LinuxSeriald executable (binary):

gcc -Wall -pedantic -O2 -o LinuxSeriald LinuxSeriald.c
