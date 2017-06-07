// XACTION instructions

#define XBEGIN(xid,handler,prio) ({					\
      u_int64_t ret2;							\
      asm volatile ("mov %1, %%rcx\n\t"					\
                    "mov %2, %%rdx\n\t"					\
                    "mov %3, %%rdi\n\t"					\
                    ".byte 0x0F, 0x04\n\t"				\
                    ".word 0x10\n\t"					\
                    "mov %%rax, %0\n\t"					\
                    : "=r"(ret2)					\
                    : "r"(xid), "r"(handler), "r"(prio)			\
                    : "%rax","%rcx", "%rdx", "%rdi");			\
      ret2;								\
    })

#define XEND(xid) ({				\
  asm volatile ("mov %0,%%rcx\n\t"		\
                ".byte 0x0F, 0x04\n\t"		\
                ".word 0x11\n\t"		\
                :				\
                : "r"(xid)			\
                : "%rcx");			\
})

#define XABORT(abort_code) ({						\
      u_int64_t code = abort_code;					\
      asm volatile ("mov %0,%%rcx\n\t"					\
                    ".byte 0x0F, 0x04\n\t"				\
                    ".word 0x12\n\t"					\
                    :							\
                    : "r"(code)						\
                    : "%rcx");						\
    })

/* Value returned in EAX after abort
 *******************************************
 *  killerID | abort addr   | abort code   |
 *******************************************
 *    8b           48b             8b
 */

#define XRELEASE(lineAddr) ({						\
      asm volatile ("mov %0,%%rax\n\t"					\
                    ".byte 0x0F, 0x04\n\t"				\
                    ".word 0x13\n\t"					\
                    :							\
                    : "r"(lineAddr)					\
                    : "%rax");						\
    })

#define DAE_ACCESS( ) ({			\
      asm volatile (".byte 0x0F, 0x04\n\t"	\
                    ".word 0x14\n\t"		\
                    :				\
                    : );			\
    })

#define ANNOTATE_REGION(region, value) ({ \
      u_int64_t reg = (u_int64_t)region;			\
      u_int64_t val = (u_int64_t)value;				\
      asm volatile ("mov %0, %%rcx\n\t"                         \
                    "mov %1, %%rdx\n\t"                         \
                    ".byte 0x0F, 0x04\n\t"                      \
                    ".word 0x20\n\t"                            \
                    :							\
                    : "r"(reg), "r"(val)				\
                    : "%rcx", "%rdx");	\
    })
