#ifndef MISC_H__
#define MISC_H__

#ifndef memset
# define memset(dest, chr, n)   __builtin_memset((dest), (chr), (n))
#endif

#ifndef memcpy
# define memcpy(dest, src, n)   __builtin_memcpy((dest), (src), (n))
#endif

#ifndef memmove
# define memmove(dest, src, n)  __builtin_memmove((dest), (src), (n))
#endif

#define SZ_SRTING(args) #args
#define STRING(args) SZ_STRING(args)
#define TP_EXT(type, name) tp/##type##/##name

#define AUTO_GEN_MAP\
        struct { __uint(type, BPF_MAP_TYPE_RINGBUF);} rb SEC(".maps");

#define AUTO_GEN_PROG(tptype,tpname)\
        SEC(SZ_SRTING(tp/tptype/tpname))\
        int auto_gen_handle(struct trace_event_raw_##tpname *ctx){ \
                struct trace_event_raw_##tpname *stx;\
                stx = bpf_ringbuf_reserve(&rb, sizeof(*stx), 0);\
                if (!stx) return 0;\
                memcpy((void *)stx, (void *)ctx, sizeof(*stx));\
                bpf_ringbuf_submit(stx, 0);\
                return 0;}

#define AUTO_FORMAT(args...) args

#define __auto_field(type, val) type val;

#ifdef AUTO_CREATE_KERNEL_CODE
#define LIBBPF_AUTOEVENT(tptype, tpname, format) \
        AUTO_GEN_MAP\
        AUTO_GEN_PROG(tptype, tpname)
#endif

#ifdef AUTO_CREATE_USER_CODE
#endif

#endif
