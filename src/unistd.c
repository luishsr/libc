/* $Id$ */
/* Copyright (c) 2007 The DeforaOS Project */



#include "sys/types.h"
#include "inttypes.h"
#include "stddef.h"
#include "time.h"
#include "errno.h"
#include "syscalls.h"
#include "unistd.h"


/* variables */
char * optarg = NULL;
int optind = 1, opterr, optopt = '?';

char ** environ;


/* functions */
/* access */
syscall2(int, access, char const *, filename, int, mode);


/* alarm */
#ifndef SYS_alarm
syscall1(unsigned int, alarm, unsigned int, seconds);
#endif


/* brk */
#ifndef SYS_brk
syscall1(int, brk, void *, end_data_segment);
#endif


/* chdir */
syscall1(int, chdir, char const *, filename);


/* chown */
syscall3(int, chown, char const *, filename, uid_t, owner, gid_t, group);


/* close */
syscall1(int, close, int, fildes);


/* dup */
syscall1(int, dup, int, fildes);


/* dup2 */
syscall2(int, dup2, int, fildes1, int, fildes2);


/* execve */
syscall3(int, execve, char const *, filename, char const **, argv,
		char const **, envp);


/* execvp */
int execvp(char const * filename, char const * argv[])
{
	return execve(filename, argv, environ);
}


/* _exit */
void _exit(int status)
{
	_syscall1(SYS_exit, status);
}


/* fork */
syscall0(pid_t, fork);


/* getcwd */
#ifndef __NetBSD__
syscall2(char *, getcwd, char *, buf, size_t, size);
#endif


/* getegid */
syscall0(gid_t, getegid);


/* geteuid */
syscall0(uid_t, geteuid);


/* getgid */
syscall0(gid_t, getgid);


/* getopt */
static void _getopt_reset(void);

int getopt(int argc, char * const argv[], char const * optstring)
{
	static char * const * oldargv = NULL;
	static int i = 0;
	size_t j;

	if(argv == NULL)
	{
		_getopt_reset();
		errno = EINVAL;
		return -1;
	}
	if(argv != oldargv) /* reset state */
	{
		_getopt_reset();
		oldargv = argv;
		i = 0;
	}
	if(optind == argc) /* there is nothing to parse */
		return -1;
	if(argv[optind][++i] == '\0')
	{
		if(++optind == argc) /* every argument contained options */
			return -1;
		if(argv[optind][0] != '-' /* argument contains no options */
				|| argv[optind][1] == '\0')
			return -1;
		i = 1;
	}
	optopt = '?';
	for(j = 0; optstring[j] != '\0' && argv[optind][i] != optstring[j];
			j++);
	if(optstring[j] == '\0')
		return optopt;
	optopt = optstring[j];
	return optopt;
}

static void _getopt_reset(void)
{
	optind = 1;
	optarg = NULL;
	optopt = -1;
}


/* getpid */
syscall0(pid_t, getpid);


/* getppid */
syscall0(pid_t, getppid);


/* getuid */
syscall0(uid_t, getuid);


/* isatty */
int isatty(int fd)
{
	/* FIXME implement */
	return 0;
}


/* lchown */
syscall3(int, lchown, char const *, filename, uid_t, owner, gid_t, group);


/* link */
syscall2(int, link, char const *, from, char const *, to);


/* nice */
#ifndef __NetBSD__
syscall1(int, nice, int, inc);
#endif


/* pipe */
syscall1(int, pipe, int, filedes[2]);


/* read */
syscall3(ssize_t, read, int, fd, void *, buf, size_t, count);


/* readlink */
syscall3(ssize_t, readlink, char const *, filename, char *, buf,
		size_t, bufsiz);


/* rmdir */
syscall1(int, rmdir, char const *, filename);


/* sbrk */
void * sbrk(unsigned int increment) /* FIXME */
{
	errno = ENOSYS;
	return NULL;
}


/* setgid */
syscall1(int, setgid, gid_t, gid);


/* setpgid */
syscall2(int, setpgid, pid_t, pid, pid_t, pgid);


/* setregid */
syscall2(int, setregid, gid_t, rgid, gid_t, egid);


/* setreuid */
syscall2(int, setreuid, uid_t, ruid, uid_t, euid);


/* setsid */
syscall0(pid_t, setsid);


/* setuid */
syscall1(int, setuid, uid_t, uid);


/* sleep */
unsigned int sleep(unsigned int seconds)
{
	struct timespec ts = { seconds, 0 };

	if(nanosleep(&ts, &ts) == 0)
		return 0;
	return ts.tv_sec;
}


/* symlink */
syscall2(int, symlink,char const *, from, char const *, to);


/* sync */
syscall0(void, sync);


/* unlink */
syscall1(int, unlink, char const *, filename);


/* vfork */
syscall0(pid_t, vfork);


/* write */
syscall3(ssize_t, write, int, fildes, void const *, buf, size_t, count);
