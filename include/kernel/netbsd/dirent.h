/* $Id$ */
/* Copyright (c) 2007-2012 Pierre Pronchery <khorben@defora.org> */
/* This file is part of DeforaOS System libc */
/* This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>. */



#ifndef LIBC_KERNEL_NETBSD_DIRENT_H
# define LIBC_KERNEL_NETBSD_DIRENT_H


/* types */
# ifndef ino_t
#  define ino_t ino_t
typedef unsigned long long ino_t;
# endif

struct dirent
{
	ino_t d_ino;
	unsigned short int d_reclen;
	unsigned short int _padding0;
	unsigned char d_type;
	char d_name[512]; /* NAME_MAX + 1 */
};

#endif /* !LIBC_KERNEL_NETBSD_DIRENT_H */
