# 1 "src/main/fc/config.c"
# 1 "/home/aravind/git/cleanflight//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "src/main/fc/config.c"
# 18 "src/main/fc/config.c"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h" 1 3 4
# 19 "src/main/fc/config.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 367 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 368 "/usr/include/features.h" 2 3 4
# 391 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 392 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4

# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 2 3 4
# 20 "src/main/fc/config.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 33 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 123 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 160 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 206 "/usr/include/string.h" 3 4

# 231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 277 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 392 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 422 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 440 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 484 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 512 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 529 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 552 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 658 "/usr/include/string.h" 3 4

# 21 "src/main/fc/config.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;





typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 173 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 241 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 289 "/usr/include/libio.h" 3 4
  __off64_t _offset;







  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;

  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 333 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 385 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 429 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 459 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 102 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;




# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 266 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4

# 306 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 319 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 412 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4

# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 872 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 912 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 942 "/usr/include/stdio.h" 3 4

# 22 "src/main/fc/config.c" 2

# 1 "./src/main/platform.h" 1
# 18 "./src/main/platform.h"
       

# 1 "./src/main/target/edison/target.h" 1
# 17 "./src/main/target/edison/target.h"
       
# 202 "./src/main/target/edison/target.h"

# 202 "./src/main/target/edison/target.h"
uint32_t U_ID_0;
uint32_t U_ID_1;
uint32_t U_ID_2;
# 21 "./src/main/platform.h" 2
# 24 "src/main/fc/config.c" 2

# 1 "./src/main/build/build_config.h" 1
# 18 "./src/main/build/build_config.h"
       
# 26 "src/main/fc/config.c" 2

# 1 "./src/main/common/axis.h" 1
# 18 "./src/main/common/axis.h"
       

typedef enum {
    X = 0,
    Y,
    Z
} axis_e;




typedef enum {
    FD_ROLL = 0,
    FD_PITCH,
    FD_YAW,
    FD_INDEX_COUNT
} flight_dynamics_index_t;


typedef enum {
    AI_ROLL = 0,
    AI_PITCH,
    ANGLE_INDEX_COUNT
} angle_index_t;
# 28 "src/main/fc/config.c" 2
# 1 "./src/main/common/maths.h" 1
# 18 "./src/main/common/maths.h"
       
# 37 "./src/main/common/maths.h"
typedef struct stdev_s
{
    float m_oldM, m_newM, m_oldS, m_newS;
    int m_n;
} stdev_t;


typedef struct fp_vector {
    float X;
    float Y;
    float Z;
} t_fp_vector_def;

typedef union {
    float A[3];
    t_fp_vector_def V;
} t_fp_vector;



typedef struct fp_angles {
    float roll;
    float pitch;
    float yaw;
} fp_angles_def;

typedef union {
    float raw[3];
    fp_angles_def angles;
} fp_angles_t;

int32_t applyDeadband(int32_t value, int32_t deadband);

int constrain(int amt, int low, int high);
float constrainf(float amt, float low, float high);

void devClear(stdev_t *dev);
void devPush(stdev_t *dev, float x);
float devVariance(stdev_t *dev);
float devStandardDeviation(stdev_t *dev);
float degreesToRadians(int16_t degrees);

int scaleRange(int x, int srcMin, int srcMax, int destMin, int destMax);

void normalizeV(struct fp_vector *src, struct fp_vector *dest);

void rotateV(struct fp_vector *v, fp_angles_t *delta);
void buildRotationMatrix(fp_angles_t *delta, float matrix[3][3]);

int32_t quickMedianFilter3(int32_t * v);
int32_t quickMedianFilter5(int32_t * v);
int32_t quickMedianFilter7(int32_t * v);
int32_t quickMedianFilter9(int32_t * v);
# 105 "./src/main/common/maths.h"
void arraySubInt32(int32_t *dest, int32_t *array1, int32_t *array2, int count);
# 29 "src/main/fc/config.c" 2
# 1 "./src/main/common/filter.h" 1
# 18 "./src/main/common/filter.h"
       

typedef struct pt1Filter_s {
    float state;
    float RC;
    float dT;
} pt1Filter_t;


typedef struct biquad_s {
    float b0, b1, b2, a1, a2;
    float x1, x2, y1, y2;
} biquad_t;

float applyBiQuadFilter(float sample, biquad_t *state);
void BiQuadNewLpf(float filterCutFreq, biquad_t *newState, uint32_t refreshRate);

void pt1FilterInit(pt1Filter_t *filter, uint8_t f_cut, float dT);
float pt1FilterApply(pt1Filter_t *filter, float input);
float pt1FilterApply4(pt1Filter_t *filter, float input, uint8_t f_cut, float dT);

int32_t filterApplyAverage(int32_t input, uint8_t count, int32_t averageState[]);
float filterApplyAveragef(float input, uint8_t count, float averageState[]);
# 30 "src/main/fc/config.c" 2

# 1 "./src/main/config/parameter_group.h" 1
# 18 "./src/main/config/parameter_group.h"
       


typedef uint16_t pgn_t;


typedef enum {
    PGRF_NONE = 0,
    PGRF_CLASSIFICATON_BIT = (1 << 0),
} pgRegistryFlags_e;

typedef enum {
    PGR_PGN_MASK = 0x0fff,
    PGR_PGN_VERSION_MASK = 0xf000,
    PGR_SIZE_MASK = 0x0fff,
    PGR_SIZE_SYSTEM_FLAG = 0x0000,
    PGR_SIZE_PROFILE_FLAG = 0x8000,
} pgRegistryInternal_e;


typedef void (pgResetFunc)(void * , int );

typedef struct pgRegistry_s {
    pgn_t pgn;
    uint16_t size;
    uint8_t *address;
    uint8_t **ptr;
    union {
        void *ptr;
        pgResetFunc *fn;
    } reset;
} pgRegistry_t;

static inline uint16_t pgN(const pgRegistry_t* reg) {return reg->pgn & PGR_PGN_MASK;}
static inline uint8_t pgVersion(const pgRegistry_t* reg) {return reg->pgn >> 12;}
static inline uint16_t pgSize(const pgRegistry_t* reg) {return reg->size & PGR_SIZE_MASK;}
static inline uint16_t pgIsSystem(const pgRegistry_t* reg) {return (reg->size & PGR_SIZE_PROFILE_FLAG) == 0;}
# 67 "./src/main/config/parameter_group.h"
    pgRegistry_t* __pg_registry_start;
    pgRegistry_t* __pg_registry_end;


    uint8_t* __pg_resetdata_start;
    uint8_t* __pg_resetdata_end;
# 227 "./src/main/config/parameter_group.h"
const pgRegistry_t* pgFind(pgn_t pgn);

void pgLoad(const pgRegistry_t* reg, int profileIndex, const void *from, int size, int version);
int pgStore(const pgRegistry_t* reg, void *to, int size, uint8_t profileIndex);
void pgResetAll(int profileCount);
void pgResetCurrent(const pgRegistry_t *reg);
void pgReset(const pgRegistry_t* reg, int profileIndex);
void pgActivateProfile(int profileIndex);
# 32 "src/main/fc/config.c" 2
# 1 "./src/main/config/parameter_group_ids.h" 1
# 33 "src/main/fc/config.c" 2
# 1 "./src/main/config/config_eeprom.h" 1
# 18 "./src/main/config/config_eeprom.h"
       


# 20 "./src/main/config/config_eeprom.h" 3 4
_Bool 
# 20 "./src/main/config/config_eeprom.h"
    isEEPROMContentValid(void);

# 21 "./src/main/config/config_eeprom.h" 3 4
_Bool 
# 21 "./src/main/config/config_eeprom.h"
    loadEEPROM(void);
void writeConfigToEEPROM(void);
void activateProfile(uint8_t profileIndexToActivate);
# 34 "src/main/fc/config.c" 2
# 1 "./src/main/config/feature.h" 1
# 18 "./src/main/config/feature.h"
       

typedef struct featureConfig_s {
    uint32_t enabledFeatures;
} featureConfig_t;

featureConfig_t* featureConfig;

void latchActiveFeatures(void);

# 27 "./src/main/config/feature.h" 3 4
_Bool 
# 27 "./src/main/config/feature.h"
    featureConfigured(uint32_t mask);

# 28 "./src/main/config/feature.h" 3 4
_Bool 
# 28 "./src/main/config/feature.h"
    feature(uint32_t mask);
void featureSet(uint32_t mask);
void featureClear(uint32_t mask);
void featureClearAll(void);
uint32_t featureMask(void);
# 35 "src/main/fc/config.c" 2
# 1 "./src/main/config/profile.h" 1
# 18 "./src/main/config/profile.h"
       



typedef struct profileSelection_s {
    uint8_t current_profile_index;
} profileSelection_t;

profileSelection_t profileSelection_System; static inline profileSelection_t* profileSelection(void) { return &profileSelection_System; } struct _dummy;

uint8_t getCurrentProfile(void);
void setProfile(uint8_t profileIndex);
# 36 "src/main/fc/config.c" 2
# 1 "./src/main/config/config_reset.h" 1
# 18 "./src/main/config/config_reset.h"
       
# 37 "src/main/fc/config.c" 2
# 1 "./src/main/config/config_system.h" 1
# 18 "./src/main/config/config_system.h"
       

typedef struct systemConfig_s {
    uint8_t emf_avoidance;
    uint8_t i2c_highspeed;
} systemConfig_t;

systemConfig_t systemConfig_System; static inline systemConfig_t* systemConfig(void) { return &systemConfig_System; } struct _dummy;
# 38 "src/main/fc/config.c" 2

# 1 "./src/main/drivers/sensor.h" 1
# 18 "./src/main/drivers/sensor.h"
       

typedef 
# 20 "./src/main/drivers/sensor.h" 3 4
       _Bool 
# 20 "./src/main/drivers/sensor.h"
            (*sensorInitFuncPtr)(void);
typedef 
# 21 "./src/main/drivers/sensor.h" 3 4
       _Bool 
# 21 "./src/main/drivers/sensor.h"
            (*sensorReadFuncPtr)(int16_t *data);

struct acc_s;
typedef void (*sensorAccInitFuncPtr)(void);
typedef void (*sensorGyroInitFuncPtr)(uint8_t lpf);
typedef 
# 26 "./src/main/drivers/sensor.h" 3 4
       _Bool 
# 26 "./src/main/drivers/sensor.h"
            (*sensorIsDataReadyFuncPtr)(void);
# 40 "src/main/fc/config.c" 2
# 1 "./src/main/drivers/accgyro.h" 1
# 18 "./src/main/drivers/accgyro.h"
       
# 31 "./src/main/drivers/accgyro.h"
typedef struct gyro_s {
    sensorGyroInitFuncPtr init;
    sensorReadFuncPtr read;
    sensorReadFuncPtr temperature;
    sensorIsDataReadyFuncPtr isDataReady;
    float scale;
} gyro_t;

typedef struct acc_s {
    sensorAccInitFuncPtr init;
    sensorReadFuncPtr read;
    uint16_t acc_1G;
    char revisionCode;
} acc_t;


# 46 "./src/main/drivers/accgyro.h" 3 4
_Bool 
# 46 "./src/main/drivers/accgyro.h"
    sparkfun_acc_Detect(acc_t *acc);

# 47 "./src/main/drivers/accgyro.h" 3 4
_Bool 
# 47 "./src/main/drivers/accgyro.h"
    sparkfun_gyro_detect(gyro_t *gyro);
# 41 "src/main/fc/config.c" 2
# 1 "./src/main/drivers/drivers_compass.h" 1
# 18 "./src/main/drivers/drivers_compass.h"
       


typedef struct mag_s {
    sensorInitFuncPtr init;
    sensorReadFuncPtr read;
} mag_t;


# 26 "./src/main/drivers/drivers_compass.h" 3 4
_Bool 
# 26 "./src/main/drivers/drivers_compass.h"
    sparkfun_compass_Detect(mag_t *mag);
# 42 "src/main/fc/config.c" 2
# 1 "./src/main/drivers/system.h" 1
# 18 "./src/main/drivers/system.h"
       

# 1 "./src/main/drivers/SFE_LSM9DS0.h" 1
# 37 "./src/main/drivers/SFE_LSM9DS0.h"
# 1 "/usr/include/mraa.h" 1 3 4
# 24 "/usr/include/mraa.h" 3 4
       





# 1 "/usr/include/mraa/pwm.h" 1 3 4
# 25 "/usr/include/mraa/pwm.h" 3 4
       
# 44 "/usr/include/mraa/pwm.h" 3 4
# 1 "/usr/include/fcntl.h" 1 3 4
# 28 "/usr/include/fcntl.h" 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4

# 35 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };
# 61 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 1 3 4
# 363 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4

# 437 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4

# 61 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 50 "/usr/include/fcntl.h" 3 4
typedef __mode_t mode_t;
# 69 "/usr/include/fcntl.h" 3 4
typedef __pid_t pid_t;






# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 77 "/usr/include/fcntl.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stat.h" 1 3 4
# 46 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];
# 115 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
  };
# 78 "/usr/include/fcntl.h" 2 3 4
# 146 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 156 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 180 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 202 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 231 "/usr/include/fcntl.h" 3 4
extern int lockf (int __fd, int __cmd, off_t __len);
# 248 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 270 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 292 "/usr/include/fcntl.h" 3 4

# 45 "/usr/include/mraa/pwm.h" 2 3 4

# 1 "/usr/include/mraa/common.h" 1 3 4
# 25 "/usr/include/mraa/common.h" 3 4
       


# 1 "/usr/include/mraa/types.h" 1 3 4
# 24 "/usr/include/mraa/types.h" 3 4
       
# 39 "/usr/include/mraa/types.h" 3 4
typedef enum {
    MRAA_INTEL_GALILEO_GEN1 = 0,
    MRAA_INTEL_GALILEO_GEN2 = 1,
    MRAA_INTEL_EDISON_FAB_C = 2,
    MRAA_INTEL_DE3815 = 3,
    MRAA_INTEL_MINNOWBOARD_MAX = 4,
    MRAA_RASPBERRY_PI = 5,
    MRAA_BEAGLEBONE = 6,
    MRAA_BANANA = 7,
    MRAA_INTEL_NUC5 = 8,
    MRAA_96BOARDS = 9,
    MRAA_INTEL_SOFIA_3GR = 10,
    MRAA_INTEL_CHERRYHILLS = 11,
    MRAA_UP = 12,
    MRAA_INTEL_GT_TUCHUCK = 13,


    MRAA_FTDI_FT4222 = 256,


    MRAA_GENERIC_FIRMATA = 1280,

    MRAA_MOCK_PLATFORM = 96,
    MRAA_JSON_PLATFORM = 97,
    MRAA_NULL_PLATFORM = 98,
    MRAA_UNKNOWN_PLATFORM =
    99
} mraa_platform_t;




typedef enum {
    MRAA_INTEL_EDISON_MINIBOARD_J17_1 = 0,
    MRAA_INTEL_EDISON_MINIBOARD_J17_5 = 4,
    MRAA_INTEL_EDISON_MINIBOARD_J17_7 = 6,
    MRAA_INTEL_EDISON_MINIBOARD_J17_8 = 7,
    MRAA_INTEL_EDISON_MINIBOARD_J17_9 = 8,
    MRAA_INTEL_EDISON_MINIBOARD_J17_10 = 9,
    MRAA_INTEL_EDISON_MINIBOARD_J17_11 = 10,
    MRAA_INTEL_EDISON_MINIBOARD_J17_12 = 11,
    MRAA_INTEL_EDISON_MINIBOARD_J17_14 = 13,
    MRAA_INTEL_EDISON_MINIBOARD_J18_1 = 14,
    MRAA_INTEL_EDISON_MINIBOARD_J18_2 = 15,
    MRAA_INTEL_EDISON_MINIBOARD_J18_6 = 19,
    MRAA_INTEL_EDISON_MINIBOARD_J18_7 = 20,
    MRAA_INTEL_EDISON_MINIBOARD_J18_8 = 21,
    MRAA_INTEL_EDISON_MINIBOARD_J18_10 = 23,
    MRAA_INTEL_EDISON_MINIBOARD_J18_11 = 24,
    MRAA_INTEL_EDISON_MINIBOARD_J18_12 = 25,
    MRAA_INTEL_EDISON_MINIBOARD_J18_13 = 26,
    MRAA_INTEL_EDISON_MINIBOARD_J19_4 = 31,
    MRAA_INTEL_EDISON_MINIBOARD_J19_5 = 32,
    MRAA_INTEL_EDISON_MINIBOARD_J19_6 = 33,
    MRAA_INTEL_EDISON_MINIBOARD_J19_8 = 35,
    MRAA_INTEL_EDISON_MINIBOARD_J19_9 = 36,
    MRAA_INTEL_EDISON_MINIBOARD_J19_10 = 37,
    MRAA_INTEL_EDISON_MINIBOARD_J19_11 = 38,
    MRAA_INTEL_EDISON_MINIBOARD_J19_12 = 39,
    MRAA_INTEL_EDISON_MINIBOARD_J19_13 = 40,
    MRAA_INTEL_EDISON_MINIBOARD_J19_14 = 41,
    MRAA_INTEL_EDISON_MINIBOARD_J20_3 = 44,
    MRAA_INTEL_EDISON_MINIBOARD_J20_4 = 45,
    MRAA_INTEL_EDISON_MINIBOARD_J20_5 = 46,
    MRAA_INTEL_EDISON_MINIBOARD_J20_6 = 47,
    MRAA_INTEL_EDISON_MINIBOARD_J20_7 = 48,
    MRAA_INTEL_EDISON_MINIBOARD_J20_8 = 49,
    MRAA_INTEL_EDISON_MINIBOARD_J20_9 = 50,
    MRAA_INTEL_EDISON_MINIBOARD_J20_10 = 51,
    MRAA_INTEL_EDISON_MINIBOARD_J20_11 = 52,
    MRAA_INTEL_EDISON_MINIBOARD_J20_12 = 53,
    MRAA_INTEL_EDISON_MINIBOARD_J20_13 = 54,
    MRAA_INTEL_EDISON_MINIBOARD_J20_14 = 55
} mraa_intel_edison_miniboard_t;




typedef enum {
    MRAA_INTEL_EDISON_GP182 = 0,
    MRAA_INTEL_EDISON_GP135 = 4,
    MRAA_INTEL_EDISON_GP27 = 6,
    MRAA_INTEL_EDISON_GP20 = 7,
    MRAA_INTEL_EDISON_GP28 = 8,
    MRAA_INTEL_EDISON_GP111 = 0,
    MRAA_INTEL_EDISON_GP109 = 10,
    MRAA_INTEL_EDISON_GP115 = 11,
    MRAA_INTEL_EDISON_GP128 = 13,
    MRAA_INTEL_EDISON_GP13 = 14,
    MRAA_INTEL_EDISON_GP165 = 15,
    MRAA_INTEL_EDISON_GP19 = 19,
    MRAA_INTEL_EDISON_GP12 = 20,
    MRAA_INTEL_EDISON_GP183 = 21,
    MRAA_INTEL_EDISON_GP110 = 23,
    MRAA_INTEL_EDISON_GP114 = 24,
    MRAA_INTEL_EDISON_GP129 = 25,
    MRAA_INTEL_EDISON_GP130 = 26,
    MRAA_INTEL_EDISON_GP44 = 31,
    MRAA_INTEL_EDISON_GP46 = 32,
    MRAA_INTEL_EDISON_GP48 = 33,
    MRAA_INTEL_EDISON_GP131 = 35,
    MRAA_INTEL_EDISON_GP14 = 36,
    MRAA_INTEL_EDISON_GP40 = 37,
    MRAA_INTEL_EDISON_GP43 = 38,
    MRAA_INTEL_EDISON_GP77 = 39,
    MRAA_INTEL_EDISON_GP82 = 40,
    MRAA_INTEL_EDISON_GP83 = 41,
    MRAA_INTEL_EDISON_GP134 = 44,
    MRAA_INTEL_EDISON_GP45 = 45,
    MRAA_INTEL_EDISON_GP47 = 46,
    MRAA_INTEL_EDISON_GP49 = 47,
    MRAA_INTEL_EDISON_GP15 = 48,
    MRAA_INTEL_EDISON_GP84 = 49,
    MRAA_INTEL_EDISON_GP42 = 50,
    MRAA_INTEL_EDISON_GP41 = 51,
    MRAA_INTEL_EDISON_GP78 = 52,
    MRAA_INTEL_EDISON_GP79 = 53,
    MRAA_INTEL_EDISON_GP80 = 54,
    MRAA_INTEL_EDISON_GP81 = 55
} mraa_intel_edison_t;




typedef enum {
    MRAA_RASPBERRY_WIRING_PIN8 = 3,
    MRAA_RASPBERRY_WIRING_PIN9 = 5,
    MRAA_RASPBERRY_WIRING_PIN7 = 7,
    MRAA_RASPBERRY_WIRING_PIN15 = 8,
    MRAA_RASPBERRY_WIRING_PIN16 = 10,
    MRAA_RASPBERRY_WIRING_PIN0 = 11,
    MRAA_RASPBERRY_WIRING_PIN1 = 12,
    MRAA_RASPBERRY_WIRING_PIN2 = 13,
    MRAA_RASPBERRY_WIRING_PIN3 = 15,
    MRAA_RASPBERRY_WIRING_PIN4 = 16,
    MRAA_RASPBERRY_WIRING_PIN5 = 18,
    MRAA_RASPBERRY_WIRING_PIN12 = 19,
    MRAA_RASPBERRY_WIRING_PIN13 = 21,
    MRAA_RASPBERRY_WIRING_PIN6 = 22,
    MRAA_RASPBERRY_WIRING_PIN14 = 23,
    MRAA_RASPBERRY_WIRING_PIN10 = 24,
    MRAA_RASPBERRY_WIRING_PIN11 = 26,
    MRAA_RASPBERRY_WIRING_PIN17 = 29,
    MRAA_RASPBERRY_WIRING_PIN21 = 29,
    MRAA_RASPBERRY_WIRING_PIN18 = 30,
    MRAA_RASPBERRY_WIRING_PIN19 = 31,
    MRAA_RASPBERRY_WIRING_PIN22 = 31,
    MRAA_RASPBERRY_WIRING_PIN20 = 32,
    MRAA_RASPBERRY_WIRING_PIN26 = 32,
    MRAA_RASPBERRY_WIRING_PIN23 = 33,
    MRAA_RASPBERRY_WIRING_PIN24 = 35,
    MRAA_RASPBERRY_WIRING_PIN27 = 36,
    MRAA_RASPBERRY_WIRING_PIN25 = 37,
    MRAA_RASPBERRY_WIRING_PIN28 = 38,
    MRAA_RASPBERRY_WIRING_PIN29 = 40
} mraa_raspberry_wiring_t;




typedef enum {
    MRAA_SUCCESS = 0,
    MRAA_ERROR_FEATURE_NOT_IMPLEMENTED = 1,
    MRAA_ERROR_FEATURE_NOT_SUPPORTED = 2,
    MRAA_ERROR_INVALID_VERBOSITY_LEVEL = 3,
    MRAA_ERROR_INVALID_PARAMETER = 4,
    MRAA_ERROR_INVALID_HANDLE = 5,
    MRAA_ERROR_NO_RESOURCES = 6,
    MRAA_ERROR_INVALID_RESOURCE = 7,
    MRAA_ERROR_INVALID_QUEUE_TYPE = 8,
    MRAA_ERROR_NO_DATA_AVAILABLE = 9,
    MRAA_ERROR_INVALID_PLATFORM = 10,
    MRAA_ERROR_PLATFORM_NOT_INITIALISED = 11,
    MRAA_ERROR_UART_OW_SHORTED = 12,
    MRAA_ERROR_UART_OW_NO_DEVICES = 13,
    MRAA_ERROR_UART_OW_DATA_ERROR = 14,

    MRAA_ERROR_UNSPECIFIED = 99
} mraa_result_t;




typedef enum {
    MRAA_PIN_VALID = 0,
    MRAA_PIN_GPIO = 1,
    MRAA_PIN_PWM = 2,
    MRAA_PIN_FAST_GPIO = 3,
    MRAA_PIN_SPI = 4,
    MRAA_PIN_I2C = 5,
    MRAA_PIN_AIO = 6,
    MRAA_PIN_UART = 7
} mraa_pinmodes_t;




typedef enum {
    MRAA_I2C_STD = 0,
    MRAA_I2C_FAST = 1,
    MRAA_I2C_HIGH = 2
} mraa_i2c_mode_t;

typedef enum {
    MRAA_UART_PARITY_NONE = 0,
    MRAA_UART_PARITY_EVEN = 1,
    MRAA_UART_PARITY_ODD = 2,
    MRAA_UART_PARITY_MARK = 3,
    MRAA_UART_PARITY_SPACE = 4
} mraa_uart_parity_t;
# 29 "/usr/include/mraa/common.h" 2 3 4
# 61 "/usr/include/mraa/common.h" 3 4
typedef unsigned int mraa_boolean_t;
# 78 "/usr/include/mraa/common.h" 3 4
mraa_result_t mraa_init() __attribute__((constructor));
# 88 "/usr/include/mraa/common.h" 3 4
void mraa_deinit();
# 97 "/usr/include/mraa/common.h" 3 4
mraa_boolean_t mraa_pin_mode_test(int pin, mraa_pinmodes_t mode);






unsigned int mraa_adc_raw_bits();







unsigned int mraa_get_platform_adc_raw_bits(uint8_t platform_offset);






unsigned int mraa_adc_supported_bits();







unsigned int mraa_get_platform_adc_supported_bits(int platform_offset);







mraa_result_t mraa_set_log_level(int level);






const char* mraa_get_platform_name();
# 152 "/usr/include/mraa/common.h" 3 4
const char* mraa_get_platform_version(int platform_offset);
# 163 "/usr/include/mraa/common.h" 3 4
int mraa_set_priority(const int priority);
# 172 "/usr/include/mraa/common.h" 3 4
const char* mraa_get_version();






void mraa_result_print(mraa_result_t result);






mraa_platform_t mraa_get_platform_type();
# 195 "/usr/include/mraa/common.h" 3 4
int mraa_get_platform_combined_type();






unsigned int mraa_get_pin_count();







int mraa_get_i2c_bus_count();







int mraa_get_i2c_bus_id(int i2c_bus);







unsigned int mraa_get_platform_pin_count(uint8_t platform_offset);







char* mraa_get_pin_name(int pin);






int mraa_get_default_i2c_bus(uint8_t platform_offset);






mraa_boolean_t mraa_has_sub_platform();
# 258 "/usr/include/mraa/common.h" 3 4
mraa_boolean_t mraa_is_sub_platform_id(int pin_or_bus_id);
# 267 "/usr/include/mraa/common.h" 3 4
int mraa_get_sub_platform_id(int pin_or_bus_index);
# 276 "/usr/include/mraa/common.h" 3 4
int mraa_get_sub_platform_index(int pin_or_bus_id);
# 286 "/usr/include/mraa/common.h" 3 4
mraa_result_t mraa_add_subplatform(mraa_platform_t subplatformtype, const char* uart_dev);
# 295 "/usr/include/mraa/common.h" 3 4
mraa_result_t mraa_remove_subplatform(mraa_platform_t subplatformtype);
# 308 "/usr/include/mraa/common.h" 3 4
void* mraa_init_io(const char* desc);
# 318 "/usr/include/mraa/common.h" 3 4
mraa_result_t mraa_init_json_platform(const char* path);
# 47 "/usr/include/mraa/pwm.h" 2 3 4

typedef struct _pwm* mraa_pwm_context;







mraa_pwm_context mraa_pwm_init(int pin);
# 65 "/usr/include/mraa/pwm.h" 3 4
mraa_pwm_context mraa_pwm_init_raw(int chipid, int pin);
# 76 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_write(mraa_pwm_context dev, float percentage);
# 86 "/usr/include/mraa/pwm.h" 3 4
float mraa_pwm_read(mraa_pwm_context dev);
# 95 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_period(mraa_pwm_context dev, float seconds);
# 104 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_period_ms(mraa_pwm_context dev, int ms);
# 113 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_period_us(mraa_pwm_context dev, int us);
# 122 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_pulsewidth(mraa_pwm_context dev, float seconds);
# 131 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_pulsewidth_ms(mraa_pwm_context dev, int ms);
# 140 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_pulsewidth_us(mraa_pwm_context dev, int us);
# 150 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_enable(mraa_pwm_context dev, int enable);
# 159 "/usr/include/mraa/pwm.h" 3 4
mraa_result_t mraa_pwm_owner(mraa_pwm_context dev, mraa_boolean_t owner);







mraa_result_t mraa_pwm_close(mraa_pwm_context dev);







int mraa_pwm_get_max_period(mraa_pwm_context dev);







int mraa_pwm_get_min_period(mraa_pwm_context dev);
# 31 "/usr/include/mraa.h" 2 3 4
# 1 "/usr/include/mraa/aio.h" 1 3 4
# 25 "/usr/include/mraa/aio.h" 3 4
       
# 41 "/usr/include/mraa/aio.h" 3 4
# 1 "/usr/include/unistd.h" 1 3 4
# 27 "/usr/include/unistd.h" 3 4

# 205 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 206 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 210 "/usr/include/unistd.h" 2 3 4
# 229 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 230 "/usr/include/unistd.h" 2 3 4





typedef __gid_t gid_t;




typedef __uid_t uid_t;
# 258 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 277 "/usr/include/unistd.h" 3 4
typedef __socklen_t socklen_t;
# 290 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 307 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 337 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 356 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 379 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 420 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 435 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 447 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 472 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 514 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 528 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 546 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 601 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 613 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 663 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 703 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 759 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 874 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 57 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 71 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 150 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 875 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 972 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 996 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1019 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1040 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1061 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1115 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1154 "/usr/include/unistd.h" 3 4

# 42 "/usr/include/mraa/aio.h" 2 3 4



# 1 "/usr/include/mraa/gpio.h" 1 3 4
# 25 "/usr/include/mraa/gpio.h" 3 4
       
# 44 "/usr/include/mraa/gpio.h" 3 4
# 1 "/usr/include/pthread.h" 1 3 4
# 22 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 23 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4





# 1 "/usr/include/time.h" 1 3 4
# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 35 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
# 72 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };


# 95 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4








struct __sched_param
  {
    int __sched_priority;
  };
# 118 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 201 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 44 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 126 "/usr/include/sched.h" 3 4

# 24 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 223 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
# 236 "/usr/include/time.h" 3 4



extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
# 430 "/usr/include/time.h" 3 4

# 25 "/usr/include/pthread.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 125 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;




    unsigned char __pad1[7];


    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 220 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 27 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 114 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 155 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 190 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 228 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 271 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 429 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
# 494 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 506 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 540 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 680 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 692 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 733 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 806 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 888 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 1000 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1044 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1111 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1145 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
# 1159 "/usr/include/pthread.h" 3 4

# 45 "/usr/include/mraa/gpio.h" 2 3 4
# 55 "/usr/include/mraa/gpio.h" 3 4
typedef struct _gpio* mraa_gpio_context;




typedef enum {
    MRAA_GPIO_STRONG = 0,
    MRAA_GPIO_PULLUP = 1,
    MRAA_GPIO_PULLDOWN = 2,
    MRAA_GPIO_HIZ = 3
} mraa_gpio_mode_t;




typedef enum {
    MRAA_GPIO_OUT = 0,
    MRAA_GPIO_IN = 1,
    MRAA_GPIO_OUT_HIGH = 2,
    MRAA_GPIO_OUT_LOW = 3
} mraa_gpio_dir_t;




typedef enum {
    MRAA_GPIO_EDGE_NONE = 0,
    MRAA_GPIO_EDGE_BOTH = 1,
    MRAA_GPIO_EDGE_RISING = 2,
    MRAA_GPIO_EDGE_FALLING = 3
} mraa_gpio_edge_t;







mraa_gpio_context mraa_gpio_init(int pin);







mraa_gpio_context mraa_gpio_init_raw(int gpiopin);
# 110 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_edge_mode(mraa_gpio_context dev, mraa_gpio_edge_t mode);
# 122 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_isr(mraa_gpio_context dev, mraa_gpio_edge_t edge, void (*fptr)(void*), void* args);
# 131 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_isr_exit(mraa_gpio_context dev);
# 140 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_mode(mraa_gpio_context dev, mraa_gpio_mode_t mode);
# 149 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_dir(mraa_gpio_context dev, mraa_gpio_dir_t dir);
# 158 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_read_dir(mraa_gpio_context dev, mraa_gpio_dir_t *dir);
# 167 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_close(mraa_gpio_context dev);
# 176 "/usr/include/mraa/gpio.h" 3 4
int mraa_gpio_read(mraa_gpio_context dev);
# 185 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_write(mraa_gpio_context dev, int value);
# 194 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_owner(mraa_gpio_context dev, mraa_boolean_t owner);
# 203 "/usr/include/mraa/gpio.h" 3 4
mraa_result_t mraa_gpio_use_mmaped(mraa_gpio_context dev, mraa_boolean_t mmap);







int mraa_gpio_get_pin(mraa_gpio_context dev);







int mraa_gpio_get_pin_raw(mraa_gpio_context dev);
# 46 "/usr/include/mraa/aio.h" 2 3 4





typedef struct _aio* mraa_aio_context;







mraa_aio_context mraa_aio_init(unsigned int pin);
# 68 "/usr/include/mraa/aio.h" 3 4
int mraa_aio_read(mraa_aio_context dev);
# 77 "/usr/include/mraa/aio.h" 3 4
float mraa_aio_read_float(mraa_aio_context dev);







mraa_result_t mraa_aio_close(mraa_aio_context dev);
# 95 "/usr/include/mraa/aio.h" 3 4
mraa_result_t mraa_aio_set_bit(mraa_aio_context dev, int bits);







int mraa_aio_get_bit(mraa_aio_context dev);
# 32 "/usr/include/mraa.h" 2 3 4

# 1 "/usr/include/mraa/spi.h" 1 3 4
# 25 "/usr/include/mraa/spi.h" 3 4
       
# 53 "/usr/include/mraa/spi.h" 3 4
typedef enum {
    MRAA_SPI_MODE0 = 0,

    MRAA_SPI_MODE1 = 1,

    MRAA_SPI_MODE2 = 2,

    MRAA_SPI_MODE3 = 3,

} mraa_spi_mode_t;




typedef struct _spi* mraa_spi_context;







mraa_spi_context mraa_spi_init(int bus);
# 84 "/usr/include/mraa/spi.h" 3 4
mraa_spi_context mraa_spi_init_raw(unsigned int bus, unsigned int cs);
# 93 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_mode(mraa_spi_context dev, mraa_spi_mode_t mode);
# 102 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_frequency(mraa_spi_context dev, int hz);
# 111 "/usr/include/mraa/spi.h" 3 4
int mraa_spi_write(mraa_spi_context dev, uint8_t data);
# 120 "/usr/include/mraa/spi.h" 3 4
int mraa_spi_write_word(mraa_spi_context dev, uint16_t data);
# 131 "/usr/include/mraa/spi.h" 3 4
uint8_t* mraa_spi_write_buf(mraa_spi_context dev, uint8_t* data, int length);
# 142 "/usr/include/mraa/spi.h" 3 4
uint16_t* mraa_spi_write_buf_word(mraa_spi_context dev, uint16_t* data, int length);
# 154 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_transfer_buf(mraa_spi_context dev, uint8_t* data, uint8_t* rxbuf, int length);
# 166 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_transfer_buf_word(mraa_spi_context dev, uint16_t* data, uint16_t* rxbuf, int length);
# 175 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_lsbmode(mraa_spi_context dev, mraa_boolean_t lsb);
# 184 "/usr/include/mraa/spi.h" 3 4
mraa_result_t mraa_spi_bit_per_word(mraa_spi_context dev, unsigned int bits);







mraa_result_t mraa_spi_stop(mraa_spi_context dev);
# 34 "/usr/include/mraa.h" 2 3 4
# 1 "/usr/include/mraa/i2c.h" 1 3 4
# 25 "/usr/include/mraa/i2c.h" 3 4
       
# 42 "/usr/include/mraa/i2c.h" 3 4
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 328 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 66 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;
# 75 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __nlink_t nlink_t;
# 104 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __id_t id_t;
# 115 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 200 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;







# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 106 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 273 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4

# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 578 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 711 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 751 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 774 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 811 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 898 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 950 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 955 "/usr/include/stdlib.h" 2 3 4
# 967 "/usr/include/stdlib.h" 3 4

# 43 "/usr/include/mraa/i2c.h" 2 3 4
# 53 "/usr/include/mraa/i2c.h" 3 4
typedef struct _i2c* mraa_i2c_context;







mraa_i2c_context mraa_i2c_init(int bus);







mraa_i2c_context mraa_i2c_init_raw(unsigned int bus);
# 78 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_frequency(mraa_i2c_context dev, mraa_i2c_mode_t mode);
# 88 "/usr/include/mraa/i2c.h" 3 4
int mraa_i2c_read(mraa_i2c_context dev, uint8_t* data, int length);







int mraa_i2c_read_byte(mraa_i2c_context dev);
# 105 "/usr/include/mraa/i2c.h" 3 4
int mraa_i2c_read_byte_data(mraa_i2c_context dev, const uint8_t command);
# 114 "/usr/include/mraa/i2c.h" 3 4
int mraa_i2c_read_word_data(mraa_i2c_context dev, const uint8_t command);
# 125 "/usr/include/mraa/i2c.h" 3 4
int mraa_i2c_read_bytes_data(mraa_i2c_context dev, uint8_t command, uint8_t* data, int length);
# 136 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_write(mraa_i2c_context dev, const uint8_t* data, int length);
# 145 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_write_byte(mraa_i2c_context dev, const uint8_t data);
# 155 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_write_byte_data(mraa_i2c_context dev, const uint8_t data, const uint8_t command);
# 165 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_write_word_data(mraa_i2c_context dev, const uint16_t data, const uint8_t command);
# 174 "/usr/include/mraa/i2c.h" 3 4
mraa_result_t mraa_i2c_address(mraa_i2c_context dev, uint8_t address);







mraa_result_t mraa_i2c_stop(mraa_i2c_context dev);
# 35 "/usr/include/mraa.h" 2 3 4
# 1 "/usr/include/mraa/uart.h" 1 3 4
# 27 "/usr/include/mraa/uart.h" 3 4
       
# 48 "/usr/include/mraa/uart.h" 3 4
typedef struct _uart* mraa_uart_context;







mraa_uart_context mraa_uart_init(int uart);







mraa_uart_context mraa_uart_init_raw(const char* path);
# 73 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_flush(mraa_uart_context dev);
# 84 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_set_baudrate(mraa_uart_context dev, unsigned int baud);
# 97 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_set_mode(mraa_uart_context dev, int bytesize, mraa_uart_parity_t parity, int stopbits);
# 107 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_set_flowcontrol(mraa_uart_context dev, mraa_boolean_t xonxoff, mraa_boolean_t rtscts);
# 119 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_set_timeout(mraa_uart_context dev, int read, int write, int interchar);
# 128 "/usr/include/mraa/uart.h" 3 4
mraa_result_t mraa_uart_set_non_blocking(mraa_uart_context dev, mraa_boolean_t nonblock);
# 137 "/usr/include/mraa/uart.h" 3 4
const char* mraa_uart_get_dev_path(mraa_uart_context dev);







mraa_result_t mraa_uart_stop(mraa_uart_context dev);
# 155 "/usr/include/mraa/uart.h" 3 4
int mraa_uart_read(mraa_uart_context dev, char* buf, size_t length);
# 165 "/usr/include/mraa/uart.h" 3 4
int mraa_uart_write(mraa_uart_context dev, const char* buf, size_t length);
# 174 "/usr/include/mraa/uart.h" 3 4
mraa_boolean_t mraa_uart_data_available(mraa_uart_context dev, unsigned int millis);
# 36 "/usr/include/mraa.h" 2 3 4
# 1 "/usr/include/mraa/uart_ow.h" 1 3 4
# 25 "/usr/include/mraa/uart_ow.h" 3 4
       
# 71 "/usr/include/mraa/uart_ow.h" 3 4
typedef struct _mraa_uart_ow {
    mraa_uart_context uart;

    unsigned char ROM_NO[8];
    int LastDiscrepancy;
    int LastFamilyDiscrepancy;
    mraa_boolean_t LastDeviceFlag;
} *mraa_uart_ow_context;




typedef enum {
    MRAA_UART_OW_CMD_READ_ROM = 0x33,
    MRAA_UART_OW_CMD_MATCH_ROM = 0x55,
    MRAA_UART_OW_CMD_SKIP_ROM = 0xcc,
    MRAA_UART_OW_CMD_SEARCH_ROM_ALARM = 0xec,
    MRAA_UART_OW_CMD_SEARCH_ROM = 0xf0
} mraa_uart_ow_rom_cmd_t;







mraa_uart_ow_context mraa_uart_ow_init(int uart);







mraa_uart_ow_context mraa_uart_ow_init_raw(const char* path);
# 114 "/usr/include/mraa/uart_ow.h" 3 4
const char* mraa_uart_ow_get_dev_path(mraa_uart_ow_context dev);







mraa_result_t mraa_uart_ow_stop(mraa_uart_ow_context dev);







int mraa_uart_ow_read_byte(mraa_uart_ow_context dev);
# 139 "/usr/include/mraa/uart_ow.h" 3 4
int mraa_uart_ow_write_byte(mraa_uart_ow_context dev, uint8_t byte);
# 150 "/usr/include/mraa/uart_ow.h" 3 4
int mraa_uart_ow_bit(mraa_uart_ow_context dev, uint8_t bit);







mraa_result_t mraa_uart_ow_reset(mraa_uart_ow_context dev);
# 173 "/usr/include/mraa/uart_ow.h" 3 4
mraa_result_t mraa_uart_ow_rom_search(mraa_uart_ow_context dev, mraa_boolean_t start, uint8_t* id);
# 184 "/usr/include/mraa/uart_ow.h" 3 4
mraa_result_t mraa_uart_ow_command(mraa_uart_ow_context dev, uint8_t command, uint8_t* id);
# 193 "/usr/include/mraa/uart_ow.h" 3 4
uint8_t mraa_uart_ow_crc8(uint8_t* buffer, uint16_t length);
# 37 "/usr/include/mraa.h" 2 3 4
# 38 "./src/main/drivers/SFE_LSM9DS0.h" 2
# 129 "./src/main/drivers/SFE_LSM9DS0.h"

# 129 "./src/main/drivers/SFE_LSM9DS0.h"
typedef enum gyro_scale
{
 G_SCALE_245DPS,
 G_SCALE_500DPS,
 G_SCALE_2000DPS,
} gyro_scale;


typedef enum accel_scale
{
 A_SCALE_2G,
 A_SCALE_4G,
 A_SCALE_6G,
 A_SCALE_8G,
 A_SCALE_16G
} accel_scale;


typedef enum mag_scale
{
 M_SCALE_2GS,
 M_SCALE_4GS,
 M_SCALE_8GS,
 M_SCALE_12GS,
} mag_scale;


typedef enum gyro_odr
{
 G_ODR_95_BW_125 = 0x0,
 G_ODR_95_BW_25 = 0x1,

 G_ODR_190_BW_125 = 0x4,
 G_ODR_190_BW_25 = 0x5,
 G_ODR_190_BW_50 = 0x6,
 G_ODR_190_BW_70 = 0x7,
 G_ODR_380_BW_20 = 0x8,
 G_ODR_380_BW_25 = 0x9,
 G_ODR_380_BW_50 = 0xA,
 G_ODR_380_BW_100 = 0xB,
 G_ODR_760_BW_30 = 0xC,
 G_ODR_760_BW_35 = 0xD,
 G_ODR_760_BW_50 = 0xE,
 G_ODR_760_BW_100 = 0xF,
} gyro_odr;


typedef enum accel_odr
{
 A_POWER_DOWN,
 A_ODR_3125,
 A_ODR_625,
 A_ODR_125,
 A_ODR_25,
 A_ODR_50,
 A_ODR_100,
 A_ODR_200,
 A_ODR_400,
 A_ODR_800,
 A_ODR_1600
} accel_odr;


typedef enum accel_abw
{
 A_ABW_773,
 A_ABW_194,
 A_ABW_362,
 A_ABW_50,
} accel_abw;



typedef enum mag_odr
{
 M_ODR_3125,
 M_ODR_625,
 M_ODR_125,
 M_ODR_25,
 M_ODR_50,
 M_ODR_100,
} mag_odr;
# 220 "./src/main/drivers/SFE_LSM9DS0.h"
typedef struct LSM9DS0 {





 int16_t gx, gy, gz;
 int16_t ax, ay, az;
 int16_t mx, my, mz;
 int16_t temperature;

 mraa_i2c_context gyro;
 mraa_i2c_context xm;



 gyro_scale gScale;
 accel_scale aScale;
 mag_scale mScale;




 float gRes, aRes, mRes;

}LSM9DS0_t;






void imu_setup(LSM9DS0_t* imu, uint8_t gAddr, uint8_t xmAddr);
# 270 "./src/main/drivers/SFE_LSM9DS0.h"
uint16_t begin(LSM9DS0_t* imu, gyro_scale gScl, accel_scale aScl,
  mag_scale mScl, gyro_odr gODR, accel_odr aODR, mag_odr mODR);





void readGyro(LSM9DS0_t* imu);





void readAccel(LSM9DS0_t* imu);





void readMag(LSM9DS0_t* imu);





void readTemp(LSM9DS0_t* imu);






float calcGyro(LSM9DS0_t* imu, int16_t gyro);






float calcAccel(LSM9DS0_t* imu, int16_t accel);






float calcMag(LSM9DS0_t* imu, int16_t mag);







void setGyroScale(LSM9DS0_t* imu, gyro_scale gScl);







void setAccelScale(LSM9DS0_t* imu, accel_scale aScl);







void setMagScale(LSM9DS0_t* imu, mag_scale mScl);





void setGyroODR(mraa_i2c_context gyro, gyro_odr gRate);





void setAccelODR(mraa_i2c_context xm, accel_odr aRate);





void setAccelABW(mraa_i2c_context xm, accel_abw abwRate);





void setMagODR(mraa_i2c_context xm, mag_odr mRate);







# 371 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 371 "./src/main/drivers/SFE_LSM9DS0.h"
    newXData(mraa_i2c_context xm);

# 372 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 372 "./src/main/drivers/SFE_LSM9DS0.h"
    newMData(mraa_i2c_context xm);

# 373 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 373 "./src/main/drivers/SFE_LSM9DS0.h"
    newGData(mraa_i2c_context gyro);




# 377 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 377 "./src/main/drivers/SFE_LSM9DS0.h"
    xDataOverflow(mraa_i2c_context xm);

# 378 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 378 "./src/main/drivers/SFE_LSM9DS0.h"
    gDataOverflow(mraa_i2c_context xm);

# 379 "./src/main/drivers/SFE_LSM9DS0.h" 3 4
_Bool 
# 379 "./src/main/drivers/SFE_LSM9DS0.h"
    mDataOverflow(mraa_i2c_context xm);
# 393 "./src/main/drivers/SFE_LSM9DS0.h"
void initGyro(mraa_i2c_context gyro);
# 403 "./src/main/drivers/SFE_LSM9DS0.h"
void initAccel(mraa_i2c_context xm);
# 414 "./src/main/drivers/SFE_LSM9DS0.h"
void initMag(mraa_i2c_context xm);






uint8_t gReadByte(mraa_i2c_context gyro, uint8_t subAddress);
# 432 "./src/main/drivers/SFE_LSM9DS0.h"
void gReadBytes(mraa_i2c_context gyro, uint8_t subAddress, uint8_t * dest, uint8_t count);





void gWriteByte(mraa_i2c_context gyro, uint8_t subAddress, uint8_t data);






uint8_t xmReadByte(mraa_i2c_context xm, uint8_t subAddress);
# 456 "./src/main/drivers/SFE_LSM9DS0.h"
void xmReadBytes(mraa_i2c_context xm, uint8_t subAddress, uint8_t * dest, uint8_t count);





void xmWriteByte(mraa_i2c_context xm, uint8_t subAddress, uint8_t data);




void calcgRes();




void calcmRes();




void calcaRes();
# 21 "./src/main/drivers/system.h" 2

void systemInit(void);

void delayMicroseconds(uint32_t us);
void delay(uint32_t ms);
uint64_t micros(void);
uint64_t millis(void);
void delay(uint32_t ms);


void failureMode(uint8_t mode);


void systemReset(void);
void systemResetToBootloader(void);

# 36 "./src/main/drivers/system.h" 3 4
_Bool 
# 36 "./src/main/drivers/system.h"
    isMPUSoftReset(void);

void enableGPIOPowerUsageAndNoiseReductions(void);

extern uint32_t hse_value;

extern uint32_t cachedRccCsrValue;

typedef enum {
    FAILURE_DEVELOPER = 0,
    FAILURE_MISSING_ACC,
    FAILURE_ACC_INIT,
    FAILURE_ACC_INCOMPATIBLE,
    FAILURE_INVALID_EEPROM_CONTENTS,
    FAILURE_FLASH_WRITE_FAILED,
    FAILURE_GYRO_INIT_FAILED
} failureMode_e;



LSM9DS0_t* imu;
# 43 "src/main/fc/config.c" 2
# 1 "./src/main/drivers/serial.h" 1
# 18 "./src/main/drivers/serial.h"
       

typedef enum portMode_t {
    MODE_RX = 1 << 0,
    MODE_TX = 1 << 1,
    MODE_RXTX = MODE_RX | MODE_TX
} portMode_t;

typedef enum portOptions_t {
    SERIAL_NOT_INVERTED = 0 << 0,
    SERIAL_INVERTED = 1 << 0,
    SERIAL_STOPBITS_1 = 0 << 1,
    SERIAL_STOPBITS_2 = 1 << 1,
    SERIAL_PARITY_NO = 0 << 2,
    SERIAL_PARITY_EVEN = 1 << 2,
    SERIAL_UNIDIR = 0 << 3,
    SERIAL_BIDIR = 1 << 3
} portOptions_t;

typedef void (*serialReceiveCallbackPtr)(uint16_t data);

typedef struct serialPort_s {

    const struct serialPortVTable *vTable;

    uint8_t identifier;
    portMode_t mode;
    portOptions_t options;

    uint32_t baudRate;

    uint32_t rxBufferSize;
    uint32_t txBufferSize;
    volatile uint8_t *rxBuffer;
    volatile uint8_t *txBuffer;
    uint32_t rxBufferHead;
    uint32_t rxBufferTail;
    uint32_t txBufferHead;
    uint32_t txBufferTail;


    serialReceiveCallbackPtr callback;
} serialPort_t;

struct serialPortVTable {
    void (*serialWrite)(serialPort_t *instance, uint8_t ch);

    uint8_t (*serialTotalRxWaiting)(serialPort_t *instance);
    uint8_t (*serialTotalTxFree)(serialPort_t *instance);

    uint8_t (*serialRead)(serialPort_t *instance);


    void (*serialSetBaudRate)(serialPort_t *instance, uint32_t baudRate);

    
# 73 "./src/main/drivers/serial.h" 3 4
   _Bool 
# 73 "./src/main/drivers/serial.h"
        (*isSerialTransmitBufferEmpty)(serialPort_t *instance);

    void (*setMode)(serialPort_t *instance, portMode_t mode);

    void (*writeBuf)(serialPort_t *instance, void *data, int count);

    void (*beginWrite)(serialPort_t *instance);
    void (*endWrite)(serialPort_t *instance);
};

void serialWrite(serialPort_t *instance, uint8_t ch);
void serialWriteBuf(serialPort_t *instance, uint8_t *data, int count);
uint8_t serialRead(serialPort_t *instance);

void serialSetBaudRate(serialPort_t *instance, uint32_t baudRate);
void serialSetMode(serialPort_t *instance, portMode_t mode);


# 90 "./src/main/drivers/serial.h" 3 4
_Bool 
# 90 "./src/main/drivers/serial.h"
    isSerialTransmitBufferEmpty(serialPort_t *instance);
void serialPrint(serialPort_t *instance, const char *str);
uint32_t serialGetBaudRate(serialPort_t *instance);
uint8_t serialRxBytesWaiting(serialPort_t *instance);
uint8_t serialTxBytesFree(serialPort_t *instance);


void serialWriteBufShim(void *instance, uint8_t *data, int count);
void serialBeginWrite(serialPort_t *instance);
void serialEndWrite(serialPort_t *instance);
# 44 "src/main/fc/config.c" 2
# 1 "./src/main/drivers/adc.h" 1
# 18 "./src/main/drivers/adc.h"
       

typedef enum {
    ADC_CHANNEL0_ENABLE = (1 << 0),
    ADC_CHANNEL1_ENABLE = (1 << 1),
    ADC_CHANNEL2_ENABLE = (1 << 2),
    ADC_CHANNEL3_ENABLE = (1 << 3),
    ADC_CHANNEL4_ENABLE = (1 << 4),
    ADC_CHANNEL5_ENABLE = (1 << 5),
} adcChannelEnableMask_e;





typedef enum {
    ADC_CHANNEL0 = 0,
    ADC_CHANNEL1 = 1,
    ADC_CHANNEL2 = 2,
    ADC_CHANNEL3 = 3,






} adcChannelIndex_e;



typedef struct adc_config_s {
    uint8_t adcChannel;
    uint8_t dmaIndex;
    
# 51 "./src/main/drivers/adc.h" 3 4
   _Bool 
# 51 "./src/main/drivers/adc.h"
        enabled;
    uint8_t sampleTime;
} adc_config_t;

typedef struct drv_adc_config_s {
    uint32_t channelMask;
} drv_adc_config_t;

void adcInit(drv_adc_config_t *init);
uint16_t adcGetChannel(uint8_t channel);
# 45 "src/main/fc/config.c" 2

# 1 "./src/main/fc/rate_profile.h" 1
# 18 "./src/main/fc/rate_profile.h"
       

typedef struct controlRateConfig_s {
    uint8_t rcRate8;
    uint8_t rcExpo8;
    uint8_t thrMid8;
    uint8_t thrExpo8;
    uint8_t rates[3];
    uint8_t dynThrPID;
    uint8_t rcYawExpo8;
    uint16_t tpa_breakpoint;
} controlRateConfig_t;


extern controlRateConfig_t controlRateProfiles_SystemArray[3]; static inline controlRateConfig_t* controlRateProfiles(int _index) { return &controlRateProfiles_SystemArray[_index]; } static inline controlRateConfig_t (* controlRateProfiles_arr(void))[3] { return &controlRateProfiles_SystemArray; } struct _dummy;

extern controlRateConfig_t *currentControlRateProfile;

typedef struct rateProfileSelection_s {
    uint8_t defaultRateProfileIndex;
} rateProfileSelection_t;

extern rateProfileSelection_t *rateProfileSelection_ProfileCurrent; static inline rateProfileSelection_t* rateProfileSelection(void) { return rateProfileSelection_ProfileCurrent; } struct _dummy;

void setControlRateProfile(uint8_t profileIndex);
uint8_t getCurrentControlRateProfile(void);
controlRateConfig_t *getControlRateConfig(uint8_t profileIndex);
void configureRateProfileSelection(uint8_t profileIndex, uint8_t rateProfileIndex);
void resetControlRateConfig(controlRateConfig_t *controlRateConfig);

void activateControlRateConfig(void);
# 47 "src/main/fc/config.c" 2
# 1 "./src/main/fc/rc_controls.h" 1
# 18 "./src/main/fc/rc_controls.h"
       

# 1 "./src/main/rx/rx.h" 1
# 18 "./src/main/rx/rx.h"
       
# 40 "./src/main/rx/rx.h"
typedef enum {
    SERIAL_RX_FRAME_PENDING = 0,
    SERIAL_RX_FRAME_COMPLETE = (1 << 0),
    SERIAL_RX_FRAME_FAILSAFE = (1 << 1)
} serialrxFrameState_t;

typedef enum {
    SERIALRX_SPEKTRUM1024 = 0,
    SERIALRX_SPEKTRUM2048 = 1,
    SERIALRX_SBUS = 2,
    SERIALRX_SUMD = 3,
    SERIALRX_SUMH = 4,
    SERIALRX_SRXL = 5,
    SERIALRX_XBUS_MODE_B_RJ01 = 6,
    SERIALRX_IBUS = 7,
    SERIALRX_PROVIDER_MAX = SERIALRX_IBUS
} SerialRXType;
# 75 "./src/main/rx/rx.h"
extern const char rcChannelLetters[];

extern int16_t rcData[(18)];







typedef enum {
    RX_FAILSAFE_MODE_AUTO = 0,
    RX_FAILSAFE_MODE_HOLD,
    RX_FAILSAFE_MODE_SET,
    RX_FAILSAFE_MODE_INVALID,
} rxFailsafeChannelMode_e;



typedef enum {
    RX_FAILSAFE_TYPE_FLIGHT = 0,
    RX_FAILSAFE_TYPE_AUX,
} rxFailsafeChannelType_e;



typedef struct rxFailsafeChannelConfiguration_s {
    uint8_t mode;
    uint8_t step;
} rxFailsafeChannelConfig_t;

typedef struct rxChannelRangeConfiguration_s {
    uint16_t min;
    uint16_t max;
} rxChannelRangeConfiguration_t;

typedef struct rxConfig_s {
    uint8_t rcmap[8];
    uint8_t serialrx_provider;
    uint8_t sbus_inversion;
    uint8_t spektrum_sat_bind;
    uint8_t rssi_channel;
    uint8_t rssi_scale;
    uint8_t rssi_ppm_invert;
    uint8_t rcSmoothing;
    uint16_t midrc;
    uint16_t mincheck;
    uint16_t maxcheck;

    uint16_t rx_min_usec;
    uint16_t rx_max_usec;
} rxConfig_t;

rxConfig_t rxConfig_System; static inline rxConfig_t* rxConfig(void) { return &rxConfig_System; } struct _dummy;

extern rxFailsafeChannelConfig_t failsafeChannelConfigs_SystemArray[(18)]; static inline rxFailsafeChannelConfig_t* failsafeChannelConfigs(int _index) { return &failsafeChannelConfigs_SystemArray[_index]; } static inline rxFailsafeChannelConfig_t (* failsafeChannelConfigs_arr(void))[(18)] { return &failsafeChannelConfigs_SystemArray; } struct _dummy;
extern rxChannelRangeConfiguration_t channelRanges_SystemArray[4]; static inline rxChannelRangeConfiguration_t* channelRanges(int _index) { return &channelRanges_SystemArray[_index]; } static inline rxChannelRangeConfiguration_t (* channelRanges_arr(void))[4] { return &channelRanges_SystemArray; } struct _dummy;

typedef struct rxRuntimeConfig_s {
    uint8_t channelCount;
} rxRuntimeConfig_t;

extern rxRuntimeConfig_t rxRuntimeConfig;

typedef uint16_t (*rcReadRawDataPtr)(rxRuntimeConfig_t *rxRuntimeConfig, uint8_t chan);

void updateRx(uint32_t currentTime);

# 142 "./src/main/rx/rx.h" 3 4
_Bool 
# 142 "./src/main/rx/rx.h"
    rxIsReceivingSignal(void);

# 143 "./src/main/rx/rx.h" 3 4
_Bool 
# 143 "./src/main/rx/rx.h"
    rxAreFlightChannelsValid(void);

# 144 "./src/main/rx/rx.h" 3 4
_Bool 
# 144 "./src/main/rx/rx.h"
    shouldProcessRx(uint32_t currentTime);
void calculateRxChannelsAndUpdateFailsafe(uint32_t currentTime);

void parseRcChannels(const char *input, rxConfig_t *rxConfig);
uint8_t serialRxFrameStatus();

void updateRSSI(uint32_t currentTime);
void resetAllRxChannelRangeConfigurations(rxChannelRangeConfiguration_t *rxChannelRangeConfiguration);

void suspendRxSignal(void);
void resumeRxSignal(void);

void initRxRefreshRate(uint16_t *rxRefreshRatePtr);

extern uint16_t rssi;
# 21 "./src/main/fc/rc_controls.h" 2

typedef enum {
    BOXARM = 0,
    BOXANGLE,
    BOXHORIZON,
    BOXBARO,

    BOXMAG,
    BOXHEADFREE,
    BOXHEADADJ,
    BOXCAMSTAB,
    BOXCAMTRIG,
    BOXGPSHOME,
    BOXGPSHOLD,
    BOXPASSTHRU,
    BOXBEEPERON,
    BOXLEDMAX,
    BOXLEDLOW,
    BOXLLIGHTS,
    BOXCALIB,
    BOXGOV,
    BOXOSD,
    BOXTELEMETRY,
    BOXGTUNE,
    BOXSONAR,
    BOXSERVO1,
    BOXSERVO2,
    BOXSERVO3,
    BOXBLACKBOX,
    BOXFAILSAFE,
    BOXAIRMODE,
    CHECKBOX_ITEM_COUNT
} boxId_e;

typedef enum rc_alias {
    ROLL = 0,
    PITCH,
    YAW,
    THROTTLE,
    AUX1,
    AUX2,
    AUX3,
    AUX4,
    AUX5,
    AUX6,
    AUX7,
    AUX8
} rc_alias_e;

typedef enum {
    THROTTLE_LOW = 0,
    THROTTLE_HIGH
} throttleStatus_e;

typedef enum {
    NOT_CENTERED = 0,
    CENTERED
} rollPitchStatus_e;
# 117 "./src/main/fc/rc_controls.h"
typedef struct channelRange_s {
    uint8_t startStep;
    uint8_t endStep;
} channelRange_t;

typedef struct modeActivationCondition_s {
    boxId_e modeId;
    uint8_t auxChannelIndex;
    channelRange_t range;
} modeActivationCondition_t;



typedef struct modeActivationProfile_s {
    modeActivationCondition_t modeActivationConditions[20];
} modeActivationProfile_t;

extern modeActivationProfile_t *modeActivationProfile_ProfileCurrent; static inline modeActivationProfile_t* modeActivationProfile(void) { return modeActivationProfile_ProfileCurrent; } struct _dummy;

extern int16_t rcCommand[4];

typedef struct rcControlsConfig_s {
    uint8_t deadband;
    uint8_t yaw_deadband;
    uint8_t alt_hold_deadband;
    uint8_t alt_hold_fast_change;
    int8_t yaw_control_direction;
    uint16_t deadband3d_throttle;
} rcControlsConfig_t;

extern rcControlsConfig_t *rcControlsConfig_ProfileCurrent; static inline rcControlsConfig_t* rcControlsConfig(void) { return rcControlsConfig_ProfileCurrent; } struct _dummy;

typedef struct armingConfig_s {

    uint8_t retarded_arm;
    uint8_t disarm_kill_switch;
    uint8_t auto_disarm_delay;
    uint8_t max_arm_angle;
} armingConfig_t;

armingConfig_t armingConfig_System; static inline armingConfig_t* armingConfig(void) { return &armingConfig_System; } struct _dummy;


# 159 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 159 "./src/main/fc/rc_controls.h"
    areUsingSticksToArm(void);


# 161 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 161 "./src/main/fc/rc_controls.h"
    areSticksInApModePosition(uint16_t ap_mode);
throttleStatus_e calculateThrottleStatus(rxConfig_t *rxConfig, uint16_t deadband3d_throttle);
rollPitchStatus_e calculateRollPitchCenterStatus(rxConfig_t *rxConfig);
void processRcStickPositions(rxConfig_t *rxConfig, throttleStatus_e throttleStatus, 
# 164 "./src/main/fc/rc_controls.h" 3 4
                                                                                   _Bool 
# 164 "./src/main/fc/rc_controls.h"
                                                                                        retarded_arm, 
# 164 "./src/main/fc/rc_controls.h" 3 4
                                                                                                      _Bool 
# 164 "./src/main/fc/rc_controls.h"
                                                                                                           disarm_kill_switch);


# 166 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 166 "./src/main/fc/rc_controls.h"
    rcModeIsActive(boxId_e modeId);
void rcModeUpdateActivated(modeActivationCondition_t *modeActivationConditions);

# 168 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 168 "./src/main/fc/rc_controls.h"
    rcModeIsActivationConditionPresent(modeActivationCondition_t *modeActivationConditions, boxId_e modeId);



# 171 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 171 "./src/main/fc/rc_controls.h"
    isUsingSticksForArming(void);

int32_t getRcStickDeflection(int32_t axis, uint16_t midrc);

void useRcControlsConfig(modeActivationCondition_t *modeActivationConditions);


# 177 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 177 "./src/main/fc/rc_controls.h"
    isRangeActive(uint8_t auxChannelIndex, channelRange_t *range);
# 48 "src/main/fc/config.c" 2
# 1 "./src/main/fc/rc_adjustments.h" 1
# 18 "./src/main/fc/rc_adjustments.h"
       
# 29 "./src/main/fc/rc_adjustments.h"
typedef enum {
    ADJUSTMENT_NONE = 0,
    ADJUSTMENT_RC_RATE,
    ADJUSTMENT_RC_EXPO,
    ADJUSTMENT_THROTTLE_EXPO,
    ADJUSTMENT_PITCH_ROLL_RATE,
    ADJUSTMENT_YAW_RATE,
    ADJUSTMENT_PITCH_ROLL_P,
    ADJUSTMENT_PITCH_ROLL_I,
    ADJUSTMENT_PITCH_ROLL_D,
    ADJUSTMENT_YAW_P,
    ADJUSTMENT_YAW_I,
    ADJUSTMENT_YAW_D,
    ADJUSTMENT_RATE_PROFILE,
    ADJUSTMENT_PITCH_RATE,
    ADJUSTMENT_ROLL_RATE,
    ADJUSTMENT_PITCH_P,
    ADJUSTMENT_PITCH_I,
    ADJUSTMENT_PITCH_D,
    ADJUSTMENT_ROLL_P,
    ADJUSTMENT_ROLL_I,
    ADJUSTMENT_ROLL_D,
    ADJUSTMENT_ALT_P,
    ADJUSTMENT_ALT_I,
    ADJUSTMENT_ALT_D,
    ADJUSTMENT_VEL_P,
    ADJUSTMENT_VEL_I,
    ADJUSTMENT_VEL_D,
    ADJUSTMENT_MAG_P,
    ADJUSTMENT_POS_P,
    ADJUSTMENT_POS_I,
    ADJUSTMENT_POSR_P,
    ADJUSTMENT_POSR_I,
    ADJUSTMENT_POSR_D,
    ADJUSTMENT_NAVR_P,
    ADJUSTMENT_NAVR_I,
    ADJUSTMENT_NAVR_D,
    ADJUSTMENT_LEVEL_P,
    ADJUSTMENT_LEVEL_I,
    ADJUSTMENT_LEVEL_D,

} adjustmentFunction_e;



typedef enum {
    ADJUSTMENT_MODE_STEP,
    ADJUSTMENT_MODE_SELECT
} adjustmentMode_e;

typedef struct adjustmentStepConfig_s {
    uint8_t step;
} adjustmentStepConfig_t;

typedef struct adjustmentSelectConfig_s {
    uint8_t switchPositions;
} adjustmentSelectConfig_t;

typedef union adjustmentConfig_u {
    adjustmentStepConfig_t stepConfig;
    adjustmentSelectConfig_t selectConfig;
} adjustmentData_t;

typedef struct adjustmentConfig_s {
    uint8_t adjustmentFunction;
    uint8_t mode;
    adjustmentData_t data;
} adjustmentConfig_t;

typedef struct adjustmentRange_s {

    uint8_t auxChannelIndex;
    channelRange_t range;


    uint8_t adjustmentFunction;
    uint8_t auxSwitchChannelIndex;


    uint8_t adjustmentIndex;
} adjustmentRange_t;



typedef struct adjustmentState_s {
    uint8_t auxChannelIndex;
    adjustmentConfig_t config;
    uint32_t timeoutAt;
    adjustmentRange_t *range;
} adjustmentState_t;



typedef struct adjustmentProfile_s {
    adjustmentRange_t adjustmentRanges[12];
} adjustmentProfile_t;

extern adjustmentProfile_t *adjustmentProfile_ProfileCurrent; static inline adjustmentProfile_t* adjustmentProfile(void) { return adjustmentProfile_ProfileCurrent; } struct _dummy;






void resetAdjustmentStates(void);
void configureAdjustmentState(adjustmentRange_t *adjustmentRange);
void updateAdjustmentStates(adjustmentRange_t *adjustmentRanges);
void processRcAdjustments(controlRateConfig_t *controlRateConfig, rxConfig_t *rxConfig);
# 49 "src/main/fc/config.c" 2
# 1 "./src/main/fc/config.h" 1
# 18 "./src/main/fc/config.h"
       




typedef enum {
    FEATURE_RX_PPM = 1 << 0,
    FEATURE_VBAT = 1 << 1,
    FEATURE_INFLIGHT_ACC_CAL = 1 << 2,
    FEATURE_RX_SERIAL = 1 << 3,
    FEATURE_MOTOR_STOP = 1 << 4,
    FEATURE_SERVO_TILT = 1 << 5,
    FEATURE_SOFTSERIAL = 1 << 6,
    FEATURE_GPS = 1 << 7,
    FEATURE_FAILSAFE = 1 << 8,
    FEATURE_SONAR = 1 << 9,
    FEATURE_TELEMETRY = 1 << 10,
    FEATURE_AMPERAGE_METER = 1 << 11,
    FEATURE_3D = 1 << 12,
    FEATURE_RX_PARALLEL_PWM = 1 << 13,
    FEATURE_RX_MSP = 1 << 14,
    FEATURE_RSSI_ADC = 1 << 15,
    FEATURE_LED_STRIP = 1 << 16,
    FEATURE_DISPLAY = 1 << 17,
    FEATURE_ONESHOT125 = 1 << 18,
    FEATURE_BLACKBOX = 1 << 19,
    FEATURE_CHANNEL_FORWARDING = 1 << 20,
    FEATURE_TRANSPONDER = 1 << 21,
} features_e;

void activateConfig(void);

void handleOneshotFeatureChangeOnRestart(void);

void initEEPROM(void);
void resetEEPROM(void);
void readEEPROM(void);
void writeEEPROM();
void ensureEEPROMContainsValidData(void);
void saveConfigAndNotify(void);

void changeProfile(uint8_t profileIndex);

uint8_t getCurrentControlRateProfile(void);
void changeControlRateProfile(uint8_t profileIndex);
# 50 "src/main/fc/config.c" 2

# 1 "./src/main/io/beeper.h" 1
# 18 "./src/main/io/beeper.h"
       

typedef enum {

    BEEPER_SILENCE = 0,

    BEEPER_GYRO_CALIBRATED,
    BEEPER_RX_LOST_LANDING,
    BEEPER_RX_LOST,
    BEEPER_DISARMING,
    BEEPER_ARMING,
    BEEPER_ARMING_GPS_FIX,
    BEEPER_BAT_CRIT_LOW,
    BEEPER_BAT_LOW,
    BEEPER_GPS_STATUS,
    BEEPER_RX_SET,
    BEEPER_DISARM_REPEAT,
    BEEPER_ACC_CALIBRATION,
    BEEPER_ACC_CALIBRATION_FAIL,
    BEEPER_READY_BEEP,
    BEEPER_MULTI_BEEPS,
    BEEPER_ARMED,
} beeperMode_e;

void beeper(beeperMode_e mode);
void beeperSilence(void);
void beeperUpdate(void);
void beeperConfirmationBeeps(uint8_t beepCount);
uint32_t getArmingBeepTimeMicros(void);
beeperMode_e beeperModeForTableIndex(int idx);
const char *beeperNameForTableIndex(int idx);
int beeperTableEntryCount(void);
# 52 "src/main/fc/config.c" 2
# 1 "./src/main/io/io_serial.h" 1
# 18 "./src/main/io/io_serial.h"
       

typedef enum {
    PORTSHARING_UNUSED = 0,
    PORTSHARING_NOT_SHARED,
    PORTSHARING_SHARED
} portSharing_e;

typedef enum {
    FUNCTION_NONE = 0,
    FUNCTION_MSP_SERVER = (1 << 0),
    FUNCTION_GPS = (1 << 1),
    FUNCTION_TELEMETRY_FRSKY = (1 << 2),
    FUNCTION_TELEMETRY_HOTT = (1 << 3),
    FUNCTION_TELEMETRY_LTM = (1 << 4),
    FUNCTION_TELEMETRY_SMARTPORT = (1 << 5),
    FUNCTION_RX_SERIAL = (1 << 6),
    FUNCTION_BLACKBOX = (1 << 7),
    FUNCTION_TELEMETRY_MAVLINK = (1 << 8),
    FUNCTION_MSP_CLIENT = (1 << 9)
} serialPortFunction_e;

typedef enum {
    BAUD_AUTO = 0,
    BAUD_9600,
    BAUD_19200,
    BAUD_38400,
    BAUD_57600,
    BAUD_115200,
    BAUD_230400,
    BAUD_250000,
} baudRate_e;

extern const uint32_t baudRates[];


typedef enum {
    SERIAL_PORT_NONE = -1,
    SERIAL_PORT_UART1 = 0,
    SERIAL_PORT_UART2,
    SERIAL_PORT_UART3,
    SERIAL_PORT_UART4,
    SERIAL_PORT_UART5,
    SERIAL_PORT_USB_VCP = 20,
    SERIAL_PORT_SOFTSERIAL1 = 30,
    SERIAL_PORT_SOFTSERIAL2,
    SERIAL_PORT_IDENTIFIER_MAX = SERIAL_PORT_SOFTSERIAL2
} serialPortIdentifier_e;

extern const serialPortIdentifier_e serialPortIdentifiers[2];

void serialInit(
# 69 "./src/main/io/io_serial.h" 3 4
               _Bool 
# 69 "./src/main/io/io_serial.h"
                    softserialEnabled);





typedef struct serialPortUsage_s {
    serialPortIdentifier_e identifier;
    serialPort_t *serialPort;
    serialPortFunction_e function;
} serialPortUsage_t;

serialPort_t *findSharedSerialPort(uint16_t functionMask, serialPortFunction_e sharedWithFunction);
serialPort_t *findNextSharedSerialPort(uint16_t functionMask, serialPortFunction_e sharedWithFunction);







typedef struct serialPortConfig_s {
    serialPortIdentifier_e identifier;
    uint16_t functionMask;
    uint8_t baudRates[4];
} serialPortConfig_t;

typedef struct serialConfig_s {
    uint8_t reboot_character;
    serialPortConfig_t portConfigs[2];
} serialConfig_t;

serialConfig_t serialConfig_System; static inline serialConfig_t* serialConfig(void) { return &serialConfig_System; } struct _dummy;




void serialRemovePort(serialPortIdentifier_e identifier);
uint8_t serialGetAvailablePortCount(void);

# 108 "./src/main/io/io_serial.h" 3 4
_Bool 
# 108 "./src/main/io/io_serial.h"
    serialIsPortAvailable(serialPortIdentifier_e identifier);

# 109 "./src/main/io/io_serial.h" 3 4
_Bool 
# 109 "./src/main/io/io_serial.h"
    isSerialConfigValid(serialConfig_t *serialConfig);
serialPortConfig_t *serialFindPortConfiguration(serialPortIdentifier_e identifier);

# 111 "./src/main/io/io_serial.h" 3 4
_Bool 
# 111 "./src/main/io/io_serial.h"
    doesConfigurationUsePort(serialPortIdentifier_e portIdentifier);
serialPortConfig_t *findSerialPortConfig(uint16_t mask);
serialPortConfig_t *findNextSerialPortConfig(uint16_t mask);

portSharing_e determinePortSharing(serialPortConfig_t *portConfig, serialPortFunction_e function);

# 116 "./src/main/io/io_serial.h" 3 4
_Bool 
# 116 "./src/main/io/io_serial.h"
    isSerialPortShared(serialPortConfig_t *portConfig, uint16_t functionMask, serialPortFunction_e sharedWithFunction);

# 117 "./src/main/io/io_serial.h" 3 4
_Bool 
# 117 "./src/main/io/io_serial.h"
    isSerialPortOpen(serialPortConfig_t *portConfig);





serialPort_t *openSerialPort(
    serialPortIdentifier_e identifier,
    serialPortFunction_e function,
    serialReceiveCallbackPtr callback,
    uint32_t baudrate,
    portMode_t mode,
    portOptions_t options
);
void closeSerialPort(serialPort_t *serialPort);

void waitForSerialPortToFinishTransmitting(serialPort_t *serialPort);

baudRate_e lookupBaudRateIndex(uint32_t baudRate);





void evaluateOtherData(serialPort_t *serialPort, uint8_t receivedChar);
void handleSerial(void);
# 53 "src/main/fc/config.c" 2

# 1 "./src/main/sensors/voltage.h" 1
# 18 "./src/main/sensors/voltage.h"
       
# 32 "./src/main/sensors/voltage.h"
typedef struct voltageMeterConfig_s {
    uint8_t vbatscale;
    uint8_t vbatresdivval;
    uint8_t vbatresdivmultiplier;
} voltageMeterConfig_t;

extern voltageMeterConfig_t voltageMeterConfig_SystemArray[1]; static inline voltageMeterConfig_t* voltageMeterConfig(int _index) { return &voltageMeterConfig_SystemArray[_index]; } static inline voltageMeterConfig_t (* voltageMeterConfig_arr(void))[1] { return &voltageMeterConfig_SystemArray; } struct _dummy;

typedef struct voltageMeterState_s {
    uint16_t vbat;
    uint16_t vbatRaw;
    uint16_t vbatLatestADC;
    biquad_t vbatFilterState;
} voltageMeterState_t;

extern voltageMeterState_t voltageMeterStates[1];


void voltageMeterInit(void);
void voltageMeterUpdate(void);

voltageMeterState_t *getVoltageMeter(uint8_t index);
uint16_t getVoltageForADCChannel(uint8_t channel);
uint16_t getLatestVoltageForADCChannel(uint8_t channel);

voltageMeterConfig_t *getVoltageMeterConfig(const uint8_t channel);
# 55 "src/main/fc/config.c" 2
# 1 "./src/main/sensors/sensors.h" 1
# 18 "./src/main/sensors/sensors.h"
       


typedef enum {
    SENSOR_INDEX_GYRO = 0,
    SENSOR_INDEX_ACC,
    SENSOR_INDEX_BARO,
    SENSOR_INDEX_MAG
} sensorIndex_e;



extern uint8_t detectedSensors[(SENSOR_INDEX_MAG + 1)];

typedef struct int16_flightDynamicsTrims_s {
    int16_t roll;
    int16_t pitch;
    int16_t yaw;
} flightDynamicsTrims_def_t;

typedef union flightDynamicsTrims_u {
    int16_t raw[3];
    flightDynamicsTrims_def_t values;
} flightDynamicsTrims_t;





typedef enum {
    SENSOR_GYRO = 1 << 0,
    SENSOR_ACC = 1 << 1,
    SENSOR_BARO = 1 << 2,
    SENSOR_MAG = 1 << 3,
    SENSOR_SONAR = 1 << 4,
    SENSOR_GPS = 1 << 5,
    SENSOR_GPSMAG = 1 << 6,
} sensors_e;

typedef enum {
    ALIGN_DEFAULT = 0,
    CW0_DEG = 1,
    CW90_DEG = 2,
    CW180_DEG = 3,
    CW270_DEG = 4,
    CW0_DEG_FLIP = 5,
    CW90_DEG_FLIP = 6,
    CW180_DEG_FLIP = 7,
    CW270_DEG_FLIP = 8
} sensor_align_e;

typedef struct sensorAlignmentConfig_s {
    sensor_align_e gyro_align;
    sensor_align_e acc_align;
    sensor_align_e mag_align;
} sensorAlignmentConfig_t;

typedef struct sensorSelectionConfig_s {
    uint8_t acc_hardware;
    uint8_t mag_hardware;
    uint8_t baro_hardware;
} sensorSelectionConfig_t;

typedef struct sensorTrims_s {
    flightDynamicsTrims_t accZero;
    flightDynamicsTrims_t magZero;
} sensorTrims_t;

sensorSelectionConfig_t sensorSelectionConfig_System; static inline sensorSelectionConfig_t* sensorSelectionConfig(void) { return &sensorSelectionConfig_System; } struct _dummy;
sensorAlignmentConfig_t sensorAlignmentConfig_System; static inline sensorAlignmentConfig_t* sensorAlignmentConfig(void) { return &sensorAlignmentConfig_System; } struct _dummy;
sensorTrims_t sensorTrims_System; static inline sensorTrims_t* sensorTrims(void) { return &sensorTrims_System; } struct _dummy;
# 56 "src/main/fc/config.c" 2
# 1 "./src/main/sensors/compass.h" 1
# 18 "./src/main/sensors/compass.h"
       


typedef enum {
    MAG_DEFAULT = 0,
    MAG_NONE = 1,
    MAG_HMC5883 = 2,
    MAG_AK8975 = 3,
    MAG_AK8963 = 4 ,
    EDISON_IMU = 5
} magSensor_e;



typedef struct compassConfig_s {
    int16_t mag_declination;

} compassConfig_t;

extern compassConfig_t *compassConfig_ProfileCurrent; static inline compassConfig_t* compassConfig(void) { return compassConfig_ProfileCurrent; } struct _dummy;



# 40 "./src/main/sensors/compass.h" 3 4
_Bool 
# 40 "./src/main/sensors/compass.h"
    compassInit(void);
union flightDynamicsTrims_u;
void updateCompass(union flightDynamicsTrims_u *magZero);

void recalculateMagneticDeclination(void);

extern int32_t magADC[3];

extern sensor_align_e magAlign;
extern mag_t mag;
extern float magneticDeclination;
# 57 "src/main/fc/config.c" 2
# 1 "./src/main/sensors/acceleration.h" 1
# 18 "./src/main/sensors/acceleration.h"
       




typedef enum {
    ACC_DEFAULT = 0,
    ACC_NONE = 1,
    ACC_ADXL345 = 2,
    ACC_MPU6050 = 3,
    ACC_MMA8452 = 4,
    ACC_BMA280 = 5,
    ACC_LSM303DLHC = 6,
    ACC_MPU6000 = 7,
    ACC_MPU6500 = 8,
    ACC_FAKE = 9,
} accelerationSensor_e;



extern sensor_align_e accAlign;
extern acc_t acc;

extern int32_t accADC[3];

typedef struct rollAndPitchTrims_s {
    int16_t roll;
    int16_t pitch;
} rollAndPitchTrims_t_def;

typedef union rollAndPitchTrims_u {
    int16_t raw[2];
    rollAndPitchTrims_t_def values;
} rollAndPitchTrims_t;

typedef struct accDeadband_s {
    uint8_t xy;
    uint8_t z;
} accDeadband_t;

typedef struct accelerometerConfig_s {
    rollAndPitchTrims_t accelerometerTrims;


    uint8_t acc_cut_hz;
    float accz_lpf_cutoff;
    accDeadband_t accDeadband;
    uint8_t acc_unarmedcal;
} accelerometerConfig_t;


accelerometerConfig_t* accelerometerConfig;







# 76 "./src/main/sensors/acceleration.h" 3 4
_Bool 
# 76 "./src/main/sensors/acceleration.h"
    isAccelerationCalibrationComplete(void);
void accSetCalibrationCycles(uint16_t calibrationCyclesRequired);
void resetRollAndPitchTrims(rollAndPitchTrims_t *rollAndPitchTrims);
void updateAccelerationReadings(rollAndPitchTrims_t *rollAndPitchTrims);
void setAccelerationTrims(flightDynamicsTrims_t *accelerationTrimsToUse);
void pgResetFn_accelerometerConfig(accelerometerConfig_t *instance);
# 58 "src/main/fc/config.c" 2

# 1 "./src/main/telemetry/telemetry.h" 1
# 18 "./src/main/telemetry/telemetry.h"
       

typedef enum {
    FRSKY_FORMAT_DMS = 0,
    FRSKY_FORMAT_NMEA
} frskyGpsCoordFormat_e;

typedef enum {
    FRSKY_UNIT_METRICS = 0,
    FRSKY_UNIT_IMPERIALS
} frskyUnit_e;

typedef struct telemetryConfig_s {
    uint8_t telemetry_switch;
    uint8_t telemetry_inversion;
    uint8_t telemetry_send_cells;
} telemetryConfig_t;

telemetryConfig_t telemetryConfig_System; static inline telemetryConfig_t* telemetryConfig(void) { return &telemetryConfig_System; } struct _dummy;

void telemetryInit(void);

uint8_t telemetryCheckState(void);
void telemetryProcess(uint16_t deadband3d_throttle);


# 43 "./src/main/telemetry/telemetry.h" 3 4
_Bool 
# 43 "./src/main/telemetry/telemetry.h"
    telemetryDetermineEnabledState(portSharing_e portSharing);

void telemetryUseConfig(telemetryConfig_t *telemetryConfig);
# 60 "src/main/fc/config.c" 2

# 1 "./src/main/flight/mixer.h" 1
# 18 "./src/main/flight/mixer.h"
       
# 34 "./src/main/flight/mixer.h"
typedef enum mixerMode
{
    MIXER_TRI = 1,
    MIXER_QUADP = 2,
    MIXER_QUADX = 3,
    MIXER_BICOPTER = 4,
    MIXER_GIMBAL = 5,
    MIXER_Y6 = 6,
    MIXER_HEX6 = 7,
    MIXER_FLYING_WING = 8,
    MIXER_Y4 = 9,
    MIXER_HEX6X = 10,
    MIXER_OCTOX8 = 11,
    MIXER_OCTOFLATP = 12,
    MIXER_OCTOFLATX = 13,
    MIXER_AIRPLANE = 14,
    MIXER_HELI_120_CCPM = 15,
    MIXER_HELI_90_DEG = 16,
    MIXER_VTAIL4 = 17,
    MIXER_HEX6H = 18,
    MIXER_PPM_TO_SERVO = 19,
    MIXER_DUALCOPTER = 20,
    MIXER_SINGLECOPTER = 21,
    MIXER_ATAIL4 = 22,
    MIXER_CUSTOM = 23,
    MIXER_CUSTOM_AIRPLANE = 24,
    MIXER_CUSTOM_TRI = 25
} mixerMode_e;


typedef struct motorMixer_s {
    float throttle;
    float roll;
    float pitch;
    float yaw;
} motorMixer_t;

extern motorMixer_t customMotorMixer_SystemArray[4]; static inline motorMixer_t* customMotorMixer(int _index) { return &customMotorMixer_SystemArray[_index]; } static inline motorMixer_t (* customMotorMixer_arr(void))[4] { return &customMotorMixer_SystemArray; } struct _dummy;


typedef struct mixer_s {
    uint8_t motorCount;
    uint8_t useServo;
    const motorMixer_t *motor;
} mixer_t;

typedef struct mixerConfig_s {
    uint8_t mixerMode;
    uint8_t pid_at_min_throttle;
    int8_t yaw_motor_direction;
    uint16_t yaw_jump_prevention_limit;





} mixerConfig_t;

mixerConfig_t mixerConfig_System; static inline mixerConfig_t* mixerConfig(void) { return &mixerConfig_System; } struct _dummy;

typedef struct motor3DConfig_s {
    uint16_t deadband3d_low;
    uint16_t deadband3d_high;
    uint16_t neutral3d;
} motor3DConfig_t;

motor3DConfig_t motor3DConfig_System; static inline motor3DConfig_t* motor3DConfig(void) { return &motor3DConfig_System; } struct _dummy;



extern int16_t motor[4];
extern int16_t motor_disarmed[4];

extern 
# 107 "./src/main/flight/mixer.h" 3 4
      _Bool 
# 107 "./src/main/flight/mixer.h"
           motorLimitReached;

void mixerInit(motorMixer_t *customMotorMixers);
void writeAllMotors(int16_t mc);
void mixerLoadMix(int index, motorMixer_t *customMixers);
void mixerResetDisarmedMotors(void);
void mixTable(void);
void servoMixTable(void);
void writeMotors(void);
void stopMotors(void);
void StopPwmAllMotors(void);
void mixerInitialiseServoFiltering(uint32_t targetLooptime);
# 62 "src/main/fc/config.c" 2
# 1 "./src/main/flight/servos.h" 1
# 18 "./src/main/flight/servos.h"
       
# 28 "./src/main/flight/servos.h"
enum {
    INPUT_STABILIZED_ROLL = 0,
    INPUT_STABILIZED_PITCH,
    INPUT_STABILIZED_YAW,
    INPUT_STABILIZED_THROTTLE,
    INPUT_RC_ROLL,
    INPUT_RC_PITCH,
    INPUT_RC_YAW,
    INPUT_RC_THROTTLE,
    INPUT_RC_AUX1,
    INPUT_RC_AUX2,
    INPUT_RC_AUX3,
    INPUT_RC_AUX4,
    INPUT_GIMBAL_PITCH,
    INPUT_GIMBAL_ROLL,

    INPUT_SOURCE_COUNT
} inputSource_e;


typedef enum {
    SERVO_GIMBAL_PITCH = 0,
    SERVO_GIMBAL_ROLL = 1,
    SERVO_ELEVATOR = 2,
    SERVO_FLAPPERON_1 = 3,
    SERVO_FLAPPERON_2 = 4,
    SERVO_RUDDER = 5,
    SERVO_THROTTLE = 6,
    SERVO_FLAPS = 7,

    SERVO_BICOPTER_LEFT = 4,
    SERVO_BICOPTER_RIGHT = 5,

    SERVO_DUALCOPTER_LEFT = 4,
    SERVO_DUALCOPTER_RIGHT = 5,

    SERVO_SINGLECOPTER_1 = 3,
    SERVO_SINGLECOPTER_2 = 4,
    SERVO_SINGLECOPTER_3 = 5,
    SERVO_SINGLECOPTER_4 = 6,

} servoIndex_e;
# 83 "./src/main/flight/servos.h"
typedef struct servoMixer_s {
    uint8_t targetChannel;
    uint8_t inputSource;
    int8_t rate;
    uint8_t speed;
    int8_t min;
    int8_t max;
    uint8_t box;
} servoMixer_t;





extern servoMixer_t customServoMixer_SystemArray[(2 * 1)]; static inline servoMixer_t* customServoMixer(int _index) { return &customServoMixer_SystemArray[_index]; } static inline servoMixer_t (* customServoMixer_arr(void))[(2 * 1)] { return &customServoMixer_SystemArray; } struct _dummy;


typedef struct mixerRules_s {
    uint8_t servoRuleCount;
    const servoMixer_t *rule;
} mixerRules_t;

typedef struct servoParam_s {
    int16_t min;
    int16_t max;
    int16_t middle;
    int8_t rate;
    uint8_t angleAtMin;
    uint8_t angleAtMax;
    int8_t forwardFromChannel;
    uint32_t reversedSources;
} __attribute__ ((__packed__)) servoParam_t;

typedef struct servoProfile_s {
    servoParam_t servoConf[1];
} servoProfile_t;

extern servoProfile_t *servoProfile_ProfileCurrent; static inline servoProfile_t* servoProfile(void) { return servoProfile_ProfileCurrent; } struct _dummy;

struct gimbalConfig_s;
struct motorAndServoConfig_s;
struct rxConfig_s;

extern int16_t servo[1];

# 127 "./src/main/flight/servos.h" 3 4
_Bool 
# 127 "./src/main/flight/servos.h"
    isMixerUsingServos(void);
void writeServos(void);
void filterServos(void);
void mixerInitServos(servoMixer_t *customServoMixers);
void mixerUseConfigs(servoParam_t *servoConfToUse);
void servoMixerLoadMix(int index, servoMixer_t *customServoMixers);
void loadCustomServoMixer(void);
int servoDirection(int servoIndex, int fromChannel);
# 63 "src/main/fc/config.c" 2
# 1 "./src/main/flight/imu.h" 1
# 18 "./src/main/flight/imu.h"
       




extern int16_t throttleAngleCorrection;
extern uint32_t accTimeSum;
extern int accSumCount;
extern float accVelScale;
extern int16_t accSmooth[3];
extern int32_t accSum[3];






typedef union {
    int16_t raw[3];
    struct {

        int16_t roll;
        int16_t pitch;
        int16_t yaw;
    } values;
} attitudeEulerAngles_t;

extern attitudeEulerAngles_t attitude;

typedef struct imuConfig_s {

    uint16_t looptime;
    uint8_t gyroSync;
    uint8_t gyroSyncDenominator;
    uint16_t dcm_kp;
    uint16_t dcm_ki;
    uint8_t small_angle;
    uint16_t max_angle_inclination;
} imuConfig_t;

imuConfig_t* imuConfig;

typedef struct throttleCorrectionConfig_s {
    uint16_t throttle_correction_angle;
    uint8_t throttle_correction_value;
} throttleCorrectionConfig_t;

throttleCorrectionConfig_t* throttleCorrectionConfig;


typedef struct imuRuntimeConfig_s {
    uint8_t acc_cut_hz;
    uint8_t acc_unarmedcal;
    float dcm_ki;
    float dcm_kp;
    uint8_t small_angle;
} imuRuntimeConfig_t;

void imuInit(void);

void imuConfigure(
    imuRuntimeConfig_t *initialImuRuntimeConfig,
    accDeadband_t *initialAccDeadband,
    float accz_lpf_cutoff,
    uint16_t throttle_correction_angle
);

void imuUpdateAccelerometer(rollAndPitchTrims_t *accelerometerTrims);
void imuUpdateGyroAndAttitude(void);
float calculateThrottleAngleScale(uint16_t throttle_correction_angle);
int16_t calculateThrottleAngleCorrection(uint8_t throttle_correction_value);
float calculateAccZLowPassFilterRCTimeConstant(float accz_lpf_cutoff);

int16_t imuCalculateHeading(t_fp_vector *vec);

float getCosTiltAngle(void);

void imuResetAccelerationSum(void);


# 97 "./src/main/flight/imu.h" 3 4
_Bool 
# 97 "./src/main/flight/imu.h"
    imuIsAircraftArmable(uint8_t arming_angle);

void calculateAttitude(void);
void MadgwickQuaternionUpdate(float ax, float ay, float az, float gx, float gy, float gz, float mx, float my, float mz);
# 64 "src/main/fc/config.c" 2
# 1 "./src/main/flight/failsafe.h" 1
# 18 "./src/main/flight/failsafe.h"
       
# 30 "./src/main/flight/failsafe.h"
typedef struct failsafeConfig_s {
    uint8_t failsafe_delay;
    uint8_t failsafe_off_delay;
    uint16_t failsafe_throttle;
    uint8_t failsafe_kill_switch;
    uint16_t failsafe_throttle_low_delay;
    uint8_t failsafe_procedure;
} __attribute__((packed)) failsafeConfig_t;

typedef enum {
    FAILSAFE_IDLE = 0,
    FAILSAFE_RX_LOSS_DETECTED,
    FAILSAFE_LANDING,
    FAILSAFE_LANDED,
    FAILSAFE_RX_LOSS_MONITORING,
    FAILSAFE_RX_LOSS_RECOVERED
} failsafePhase_e;

typedef enum {
    FAILSAFE_RXLINK_DOWN = 0,
    FAILSAFE_RXLINK_UP
} failsafeRxLinkState_e;

typedef enum {
    FAILSAFE_PROCEDURE_AUTO_LANDING = 0,
    FAILSAFE_PROCEDURE_DROP_IT
} failsafeProcedure_e;

typedef struct failsafeState_s {
    int16_t events;
    
# 60 "./src/main/flight/failsafe.h" 3 4
   _Bool 
# 60 "./src/main/flight/failsafe.h"
        monitoring;
    
# 61 "./src/main/flight/failsafe.h" 3 4
   _Bool 
# 61 "./src/main/flight/failsafe.h"
        active;
    uint32_t rxDataFailurePeriod;
    uint32_t validRxDataReceivedAt;
    uint32_t validRxDataFailedAt;
    uint32_t throttleLowPeriod;
    uint32_t landingShouldBeFinishedAt;
    uint32_t receivingRxDataPeriod;
    uint32_t receivingRxDataPeriodPreset;
    failsafePhase_e phase;
    failsafeRxLinkState_e rxLinkState;
} failsafeState_t;

failsafeConfig_t failsafeConfig_System; static inline failsafeConfig_t* failsafeConfig(void) { return &failsafeConfig_System; } struct _dummy;

void failsafeInit(void);

void useFailsafeConfig();

void failsafeStartMonitoring(void);
void failsafeUpdateState(void);

failsafePhase_e failsafePhase();

# 83 "./src/main/flight/failsafe.h" 3 4
_Bool 
# 83 "./src/main/flight/failsafe.h"
    failsafeIsMonitoring(void);

# 84 "./src/main/flight/failsafe.h" 3 4
_Bool 
# 84 "./src/main/flight/failsafe.h"
    failsafeIsActive(void);

# 85 "./src/main/flight/failsafe.h" 3 4
_Bool 
# 85 "./src/main/flight/failsafe.h"
    failsafeIsReceivingRxData(void);
void failsafeOnRxSuspend(uint32_t suspendPeriod);
void failsafeOnRxResume(void);

void failsafeOnValidDataReceived(void);
void failsafeOnValidDataFailed(void);
# 65 "src/main/fc/config.c" 2
# 1 "./src/main/flight/pid.h" 1
# 18 "./src/main/flight/pid.h"
       
# 28 "./src/main/flight/pid.h"
typedef enum {
    PIDROLL,
    PIDPITCH,
    PIDYAW,
    PIDALT,
    PIDPOS,
    PIDPOSR,
    PIDNAVR,
    PIDLEVEL,
    PIDMAG,
    PIDVEL,
    PID_ITEM_COUNT
} pidIndex_e;

typedef enum {
    PID_CONTROLLER_MW23 = 0,
    PID_CONTROLLER_MWREWRITE,
    PID_CONTROLLER_LUX_FLOAT,
    PID_COUNT
} pidControllerType_e;



typedef enum {
    PID_DELTA_FROM_MEASUREMENT = 0,
    PID_DELTA_FROM_ERROR
} pidDeltaMethod_e;

typedef enum {
    HORIZON_TILT_MODE_SAFE = 0,
    HORIZON_TILT_MODE_EXPERT
} horizonTiltMode_e;

typedef struct pidProfile_s {
    uint8_t P8[PID_ITEM_COUNT];
    uint8_t I8[PID_ITEM_COUNT];
    uint8_t D8[PID_ITEM_COUNT];
    uint8_t pidController;
    uint16_t yaw_p_limit;
    uint16_t dterm_lpf;
    uint16_t yaw_lpf;
    uint8_t deltaMethod;
    uint8_t horizon_tilt_effect;
    uint8_t horizon_tilt_mode;
} pidProfile_t;

extern pidProfile_t *pidProfile_ProfileCurrent; static inline pidProfile_t* pidProfile(void) { return pidProfile_ProfileCurrent; } struct _dummy;

struct controlRateConfig_s;
union rollAndPitchTrims_u;
struct rxConfig_s;
typedef void (*pidControllerFuncPtr)(const pidProfile_t *pidProfile, const struct controlRateConfig_s *controlRateConfig,
        uint16_t max_angle_inclination, const union rollAndPitchTrims_u *angleTrim, const struct rxConfig_s *rxConfig);

extern int16_t axisPID[FD_INDEX_COUNT];
extern int32_t axisPID_P[FD_INDEX_COUNT], axisPID_I[FD_INDEX_COUNT], axisPID_D[FD_INDEX_COUNT];

float pidScaleITermToRcInput(int axis);
void pidFilterIsSetCheck(const pidProfile_t *pidProfile);

void pidSetController(pidControllerType_e type);
void pidResetITermAngle(void);
void pidResetITerm(void);

int calcHorizonLevelStrength(uint16_t rxConfigMidrc, int horizonTiltEffect,
        uint8_t horizonTiltMode, int horizonSensitivity);
# 66 "src/main/fc/config.c" 2
# 1 "./src/main/flight/navigation.h" 1
# 18 "./src/main/flight/navigation.h"
       


typedef enum {
    NAV_MODE_NONE = 0,
    NAV_MODE_POSHOLD,
    NAV_MODE_WP
} navigationMode_e;



typedef struct gpsProfile_s {
    uint16_t gps_wp_radius;
    uint8_t gps_lpf;
    uint8_t nav_slew_rate;
    uint8_t nav_controls_heading;
    uint16_t nav_speed_min;
    uint16_t nav_speed_max;
    uint16_t ap_mode;
} gpsProfile_t;

extern gpsProfile_t *gpsProfile_ProfileCurrent; static inline gpsProfile_t* gpsProfile(void) { return gpsProfile_ProfileCurrent; } struct _dummy;

extern int16_t GPS_angle[ANGLE_INDEX_COUNT];

extern int32_t GPS_home[2];
extern int32_t GPS_hold[2];

extern uint16_t GPS_distanceToHome;
extern int16_t GPS_directionToHome;

extern navigationMode_e nav_mode;

void GPS_reset_home_position(void);
void GPS_reset_nav(void);
void GPS_set_next_wp(int32_t* lat, int32_t* lon);
void gpsUsePIDs(pidProfile_t *pidProfile);
void updateGpsStateForHomeAndHoldMode(void);
void updateGpsWaypointsAndMode(void);

void onGpsNewData(void);
# 67 "src/main/fc/config.c" 2



# 1 "./src/main/sensors/battery.h" 1
# 18 "./src/main/sensors/battery.h"
       

typedef struct batteryConfig_s {
    uint8_t vbatmaxcellvoltage;
    uint8_t vbatmincellvoltage;
    uint8_t vbatwarningcellvoltage;
    uint16_t batteryCapacity;
    uint8_t amperageMeterSource;
} batteryConfig_t;

batteryConfig_t batteryConfig_System; static inline batteryConfig_t* batteryConfig(void) { return &batteryConfig_System; } struct _dummy;

typedef enum {
    BATTERY_OK = 0,
    BATTERY_WARNING,
    BATTERY_CRITICAL,
    BATTERY_NOT_PRESENT
} batteryState_e;

extern uint16_t vbat;

extern uint8_t batteryCellCount;
extern uint16_t batteryWarningVoltage;

uint16_t batteryAdcToVoltage(uint16_t src);
batteryState_e getBatteryState(void);
const char * getBatteryStateString(void);
void batteryUpdate(void);
void batteryInit(void);


uint8_t batteryVoltagePercentage(void);
uint8_t batteryCapacityRemainingPercentage(void);
# 71 "src/main/fc/config.c" 2
# 1 "./src/main/io/motor_and_servo.h" 1
# 18 "./src/main/io/motor_and_servo.h"
       

typedef struct motorAndServoConfig_s {


    uint16_t minthrottle;
    uint16_t maxthrottle;
    uint16_t mincommand;
    uint16_t servoCenterPulse;

    uint16_t motor_pwm_rate;
    uint16_t servo_pwm_rate;
} motorAndServoConfig_t;

motorAndServoConfig_t motorAndServoConfig_System; static inline motorAndServoConfig_t* motorAndServoConfig(void) { return &motorAndServoConfig_System; } struct _dummy;
# 72 "src/main/fc/config.c" 2
# 326 "src/main/fc/config.c"
void activateConfig(void)
{


    resetAdjustmentStates();
# 341 "src/main/fc/config.c"
    setAccelerationTrims(&sensorTrims()->accZero);






    imuConfig->dcm_ki = 100;
    imuConfig->dcm_kp = 10000;




    static imuRuntimeConfig_t imuRuntimeConfig;
    imuRuntimeConfig.dcm_kp = imuConfig->dcm_kp / 10000.0f;
    imuRuntimeConfig.dcm_ki = imuConfig->dcm_ki / 10000.0f;
    imuRuntimeConfig.acc_cut_hz = accelerometerConfig->acc_cut_hz;
    imuRuntimeConfig.acc_unarmedcal = accelerometerConfig->acc_unarmedcal;
    imuRuntimeConfig.small_angle = imuConfig->small_angle;

    imuConfigure(
        &imuRuntimeConfig,
        &(accelerometerConfig->accDeadband),
        accelerometerConfig->accz_lpf_cutoff,
        throttleCorrectionConfig->throttle_correction_angle
    );
}
