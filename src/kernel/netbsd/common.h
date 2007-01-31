/* $Id$ */
/* Copyright (c) 2007 The DeforaOS Project */



#ifndef KERNEL_NETBSD_COMMON_H
# define KERNEL_NETBSD_COMMON_H


# define SYS_exit		1
# define SYS_fork		2
# define SYS_read		3
# define SYS_write		4
# define SYS_open		5
# define SYS_close		6
# define SYS_wait4		7
# define SYS_link		9
# define SYS_unlink		10
# define SYS_chdir		12
# define SYS_fchdir		13
# define SYS_mknod		14
# define SYS_chmod		15
# define SYS_getpid		20
# define SYS_setuid		23
# define SYS_getuid		24
# define SYS_geteuid		25
# define SYS_access		33
# define SYS_sync		36
# define SYS_kill		37
# define SYS_getppid		39
# define SYS_dup		41
# define SYS_pipe		42
# define SYS_getegid		43
# define SYS_getgid		47
# define SYS_symlink		57
# define SYS_readlink		58
# define SYS_execve		59
# define SYS_umask		60
# define SYS_vfork		66
# define SYS_munmap		73
# define SYS_setpgid		82
# define SYS_dup2		90
# define SYS_fcntl		92
# define SYS_select		93
# define SYS_gettimeofday	116
# define SYS_setreuid		126
# define SYS_setregid		127
# define SYS_mkfifo		132
# define SYS_mkdir		136
# define SYS_rmdir		137
# define SYS_setsid		147
# define SYS_setgid		181
# define SYS_setegid		182
# define SYS_seteuid		183
# define SYS_mmap		197
# define SYS_sysctl		202
# define SYS_nanosleep		240
# define SYS_rename		270
# define SYS_getdents		272
# define SYS_lchmod		274
# define SYS_stat		278
# define SYS_fstat		279
# define SYS_lstat		280
# define SYS_chown		283
# define SYS_fchown		284
# define SYS_lchown		285
# define SYS_getcwd		296
# define SYS_statvfs		357

#endif /* !KERNEL_NETBSD_COMMON_H */
