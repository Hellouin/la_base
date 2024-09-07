/*
 * tool.h
 *
 *  Created on: Sep 7, 2024
 *      Author: hellm
 */

#include "stdint.h"


#ifndef INC_TOOL_H_
#define INC_TOOL_H_

/*
 * @brief main macro function tool
 */

/*!
 * @name Min/max macros
 * @{
 */
#if !defined(MIN)
/*! Computes the minimum of \a a and \a b. */
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#endif

#if !defined(MAX)
/*! Computes the maximum of \a a and \a b. */
#define MAX(a, b) (((a) > (b)) ? (a) : (b))
#endif
/*! @} */

/*! @brief Computes the number of elements in an array. */
#if !defined(ARRAY_SIZE)
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
#endif

/*! @name UINT16_MAX/UINT32_MAX value */
/*! @{ */
#if !defined(UINT16_MAX)
/*! Max value of uint16_t type. */
#define UINT16_MAX ((uint16_t)-1)
#endif

#if !defined(UINT32_MAX)
/*! Max value of uint32_t type. */
#define UINT32_MAX ((uint32_t)-1)
#endif

#if !defined(DIV2)
/*! Max value of uint32_t type. */
#define DIV2(num) (num >> 2)
#endif

/*! \public
 * @brief Generic status return codes.
 */
/*! @brief Construct a status code value from a group and code number. */

#define MAKE_STATUS(group, code) ((((group)*100L) + (code)))

enum _status_groups
{
    kStatusGroup_Generic               = 0,   /*!< Group number for generic status codes. */
    kStatusGroup_YOUROWNMODULE         = 1,   /*!< create your own status codes for your module */

};
enum
{
    kStatus_Success         		= MAKE_STATUS(kStatusGroup_Generic, 0), /*!< Generic status for Success. */
    kStatus_Fail            		= MAKE_STATUS(kStatusGroup_Generic, 1), /*!< Generic status for Fail. */
    kStatus_ReadOnly       			= MAKE_STATUS(kStatusGroup_Generic, 2), /*!< Generic status for read only failure. */
    kStatus_OutOfRange      		= MAKE_STATUS(kStatusGroup_Generic, 3), /*!< Generic status for out of range access. */
    kStatus_InvalidArgument 		= MAKE_STATUS(kStatusGroup_Generic, 4), /*!< Generic status for invalid argument check. */
    kStatus_Timeout         		= MAKE_STATUS(kStatusGroup_Generic, 5), /*!< Generic status for timeout. */
    kStatus_NoTransferInProgress 	= MAKE_STATUS(kStatusGroup_Generic, 6),            /*!< Generic status for no transfer in progress. */
    kStatus_Busy 					= MAKE_STATUS(kStatusGroup_Generic, 7), /*!< Generic status for module is busy. */
    kStatus_NoData 					= MAKE_STATUS(kStatusGroup_Generic, 8), /*!< Generic status for no data is found for the operation. */
};

/*! @brief Type used for all status and error return values. */
typedef int32_t status_t;

#endif /* INC_TOOL_H_ */
