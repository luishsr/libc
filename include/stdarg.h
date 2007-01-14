/* $Id$ */
/* Copyright (c) 2006 The DeforaOS Project */



#ifndef LIBC_STDARG_H
# define LIBC_STDARG_H


/* types */
# ifndef va_list
#  define va_list va_list
typedef void * va_list;
# endif


/* macros */
# define va_start(ap, arg) (ap) = ((char*)&arg) + 4
# define va_arg(ap, type) ((ap) += sizeof(type), \
		*(type*)((void*)ap - sizeof(type)))
# define va_end(ap)

#endif /* !LIBC_STDARG_H */
