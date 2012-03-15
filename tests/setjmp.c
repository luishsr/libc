/* $Id$ */
/* Copyright (c) 2012 Pierre Pronchery <khorben@defora.org> */
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



#include <setjmp.h>
#ifdef DEBUG
# include <stdio.h>
#endif
#include <string.h>


/* setjmp */
/* private */
/* variables */
static jmp_buf _jb;
static int _ret;


/* prototypes */
#ifdef DEBUG
static void _jmp_buf_dump(jmp_buf jb);
#endif
static void __setjmp_test1(void);
static void __setjmp_test2(void);
static void _setjmp_test1(void);
static void _setjmp_test2(void);


/* functions */
#ifdef DEBUG
/* jmp_buf_dump */
static void _jmp_buf_dump(jmp_buf jb)
{
	size_t i;
	char const * sep = "";

	fprintf(stderr, "DEBUG: %s()\n", __func__);
	for(i = 0; i < sizeof(jmp_buf) / sizeof(*jb); i++)
	{
		fprintf(stderr, "%s%p", sep, jb[i]);
		sep = " ";
	}
	fputs("\n", stderr);
}
#endif


/* _setjmp_test1 */
static void __setjmp_test1(void)
{
#ifdef DEBUG
	fprintf(stderr, "DEBUG: %s()\n", __func__);
#endif
	_ret = 3;
	__setjmp_test2();
}


/* _setjmp_test2 */
static void __setjmp_test2(void)
{
#ifdef DEBUG
	fprintf(stderr, "DEBUG: %s()\n", __func__);
#endif
	_ret = 4;
	_longjmp(_jb, 5);
	_ret = 6;
}


/* setjmp_test1 */
static void _setjmp_test1(void)
{
#ifdef DEBUG
	fprintf(stderr, "DEBUG: %s()\n", __func__);
#endif
	_ret = 3;
	_setjmp_test2();
}


/* setjmp_test2 */
static void _setjmp_test2(void)
{
#ifdef DEBUG
	fprintf(stderr, "DEBUG: %s()\n", __func__);
#endif
	_ret = 4;
	longjmp(_jb, 5);
	_ret = 6;
}


/* public */
/* functions */
/* main */
int main(void)
{
	int res;

#ifdef DEBUG
	fprintf(stderr, "DEBUG: %s()\n", __func__);
#endif
	_ret = 2;
	/* _setjmp */
	if((res = _setjmp(_jb)) == 0)
	{
#ifdef DEBUG
		_jmp_buf_dump(_jb);
#endif
		__setjmp_test1();
	}
	else if(res == 5)
		_ret = 0;
	/* setjmp */
	if(_ret == 0)
	{
		memset(_jb, 0, sizeof(jmp_buf));
		if((res = setjmp(_jb)) == 0)
		{
#ifdef DEBUG
			_jmp_buf_dump(_jb);
#endif
			_setjmp_test1();
		}
		else if(res == 5)
			_ret = 0;
	}
	return _ret;
}
