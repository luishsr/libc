/* $Id$ */
/* Copyright (c) 2006 The DeforaOS Project */



#include "../syscalls.h"
#include "sys/wait.h"


/* wait */
pid_t wait(int * status)
{
	return waitpid(-1, status, 0);
}


/* waitpid */
#ifdef SYS_waitpid
syscall3(pid_t, waitpid, pid_t, pid, int *, status, int, options)
#else
# include "stdlib.h"
syscall4(pid_t, wait4, pid_t, pid, int *, status, int, options, void *, rusage)
pid_t waitpid(pid_t pid, int * status, int options)
{
	return wait4(pid, status, options, NULL);
}
#endif
