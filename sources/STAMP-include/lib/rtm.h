/*
 * rtm.h
 *
 * Created on: 03.07.2012
 *     Introduces intrinsics for Intel compiler as defines.
 */

#ifndef RTM_H_
#define RTM_H_

#include <stdint.h>
#include <assert.h>
#include <cpuid.h>
#include <stddef.h>

/* Check CPUID Leaf 0x7 EBX[11] */
#define CPUID_RTM (1 << 11)
#define CPUID_HLE (1 << 4)
#define CPUID_RTM_CHECK {                \
        assert(__get_cpuid_max(0, NULL)  \
          >= 7 && "RTM is not present" );\
        unsigned a, b, c, d;             \
        __cpuid_count(7, 0, a, b, c, d); \
        assert(!!(b & CPUID_RTM)         \
            && "RTM is not present");\
}

/* Status bits */
#define XBEGIN_STARTED      (~0u)
#define XABORT_EXPLICIT_ABORT   (1 << 0)
#define XABORT_RETRY        (1 << 1)
#define XABORT_CONFLICT     (1 << 2)
#define XABORT_CAPACITY     (1 << 3)
#define XABORT_DEBUG        (1 << 4)
#define XABORT_NESTED       (1 << 5)
#define XABORT_STATUS(x)    (((x) >> 24) & 0xff)

#ifdef OLD_RTM_MACROSES
#   define __rtm_force_inline __attribute__((__always_inline__)) inline

    static __rtm_force_inline int _xbegin(void)
    {
        int ret = XBEGIN_STARTED;
        asm volatile(".byte 0xc7,0xf8 ; .long 0" : "+a" (ret) :: "memory");
        return ret;
    }

    static __rtm_force_inline void _xend(void)
    {
         asm volatile(".byte 0x0f,0x01,0xd5" ::: "memory");
    }

    /* This is a macro because some compilers do not propagate the constant
     * through an inline with optimization disabled.
     */
#   define _xabort(status) \
        asm volatile(".byte 0xc6,0xf8,%P0" :: "i" (status) : "memory")


#endif // OLD_RTM_MACROSES

#define XABORT(status) asm volatile(".byte 0xc6,0xf8,%P0" :: "i" (status))
#define XBEGIN(label)   \
    asm volatile goto(".byte 0xc7,0xf8 ; .long %l0-1f\n1:" ::: "eax","memory" : label)
#define XEND()    asm volatile(".byte 0x0f,0x01,0xd5" ::: "memory")
#define XFAIL(label) label: asm volatile("" ::: "eax", "memory")
#define XFAIL_STATUS(label, status) label: asm volatile("" : "=a" (status) :: "memory")
#define XTEST() ({ char o = 0 ;                     \
           asm volatile(".byte 0x0f,0x01,0xd6 ; setnz %0" : "+r" (o)::"memory"); \
           o; })


#endif /* RTM_H_ */
