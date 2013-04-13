PACKAGE	= libc
VERSION	= 0.0.8
SUBDIRS	= doc include src tests tools
RM	= rm -f
LN	= ln -f
TAR	= tar -czvf


all: subdirs

subdirs:
	@for i in $(SUBDIRS); do (cd "$$i" && $(MAKE)) || exit; done

clean:
	@for i in $(SUBDIRS); do (cd "$$i" && $(MAKE) clean) || exit; done

distclean:
	@for i in $(SUBDIRS); do (cd "$$i" && $(MAKE) distclean) || exit; done

dist:
	$(RM) -r -- $(PACKAGE)-$(VERSION)
	$(LN) -s -- . $(PACKAGE)-$(VERSION)
	@$(TAR) $(PACKAGE)-$(VERSION).tar.gz -- \
		$(PACKAGE)-$(VERSION)/doc/Makefile \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc.sh \
		$(PACKAGE)-$(VERSION)/doc/project.conf \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc/Makefile \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc/libc-docs.xml \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc/project.conf \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc/tmpl/Makefile \
		$(PACKAGE)-$(VERSION)/doc/gtkdoc/tmpl/project.conf \
		$(PACKAGE)-$(VERSION)/include/assert.h \
		$(PACKAGE)-$(VERSION)/include/complex.h \
		$(PACKAGE)-$(VERSION)/include/cpio.h \
		$(PACKAGE)-$(VERSION)/include/ctype.h \
		$(PACKAGE)-$(VERSION)/include/dirent.h \
		$(PACKAGE)-$(VERSION)/include/errno.h \
		$(PACKAGE)-$(VERSION)/include/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/float.h \
		$(PACKAGE)-$(VERSION)/include/fnmatch.h \
		$(PACKAGE)-$(VERSION)/include/glob.h \
		$(PACKAGE)-$(VERSION)/include/grp.h \
		$(PACKAGE)-$(VERSION)/include/iconv.h \
		$(PACKAGE)-$(VERSION)/include/inttypes.h \
		$(PACKAGE)-$(VERSION)/include/langinfo.h \
		$(PACKAGE)-$(VERSION)/include/libgen.h \
		$(PACKAGE)-$(VERSION)/include/limits.h \
		$(PACKAGE)-$(VERSION)/include/locale.h \
		$(PACKAGE)-$(VERSION)/include/nl_types.h \
		$(PACKAGE)-$(VERSION)/include/poll.h \
		$(PACKAGE)-$(VERSION)/include/pwd.h \
		$(PACKAGE)-$(VERSION)/include/regex.h \
		$(PACKAGE)-$(VERSION)/include/search.h \
		$(PACKAGE)-$(VERSION)/include/semaphore.h \
		$(PACKAGE)-$(VERSION)/include/setjmp.h \
		$(PACKAGE)-$(VERSION)/include/signal.h \
		$(PACKAGE)-$(VERSION)/include/stdarg.h \
		$(PACKAGE)-$(VERSION)/include/stdbool.h \
		$(PACKAGE)-$(VERSION)/include/stddef.h \
		$(PACKAGE)-$(VERSION)/include/stdint.h \
		$(PACKAGE)-$(VERSION)/include/stdio.h \
		$(PACKAGE)-$(VERSION)/include/stdlib.h \
		$(PACKAGE)-$(VERSION)/include/string.h \
		$(PACKAGE)-$(VERSION)/include/strings.h \
		$(PACKAGE)-$(VERSION)/include/stropts.h \
		$(PACKAGE)-$(VERSION)/include/syslog.h \
		$(PACKAGE)-$(VERSION)/include/tar.h \
		$(PACKAGE)-$(VERSION)/include/termios.h \
		$(PACKAGE)-$(VERSION)/include/time.h \
		$(PACKAGE)-$(VERSION)/include/ucontext.h \
		$(PACKAGE)-$(VERSION)/include/unistd.h \
		$(PACKAGE)-$(VERSION)/include/utime.h \
		$(PACKAGE)-$(VERSION)/include/utmpx.h \
		$(PACKAGE)-$(VERSION)/include/wchar.h \
		$(PACKAGE)-$(VERSION)/include/wctype.h \
		$(PACKAGE)-$(VERSION)/include/Makefile \
		$(PACKAGE)-$(VERSION)/include/project.conf \
		$(PACKAGE)-$(VERSION)/include/compat/dirent.h \
		$(PACKAGE)-$(VERSION)/include/compat/errno.h \
		$(PACKAGE)-$(VERSION)/include/compat/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/compat/limits.h \
		$(PACKAGE)-$(VERSION)/include/compat/poll.h \
		$(PACKAGE)-$(VERSION)/include/compat/signal.h \
		$(PACKAGE)-$(VERSION)/include/compat/stdio.h \
		$(PACKAGE)-$(VERSION)/include/compat/stropts.h \
		$(PACKAGE)-$(VERSION)/include/compat/termios.h \
		$(PACKAGE)-$(VERSION)/include/compat/time.h \
		$(PACKAGE)-$(VERSION)/include/compat/ucontext.h \
		$(PACKAGE)-$(VERSION)/include/compat/unistd.h \
		$(PACKAGE)-$(VERSION)/include/compat/utmpx.h \
		$(PACKAGE)-$(VERSION)/include/compat/Makefile \
		$(PACKAGE)-$(VERSION)/include/compat/project.conf \
		$(PACKAGE)-$(VERSION)/include/compat/net/if.h \
		$(PACKAGE)-$(VERSION)/include/compat/net/Makefile \
		$(PACKAGE)-$(VERSION)/include/compat/net/project.conf \
		$(PACKAGE)-$(VERSION)/include/compat/sys/ioctl.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/mount.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/reboot.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/vt.h \
		$(PACKAGE)-$(VERSION)/include/compat/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/compat/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/dl/dlfcn.h \
		$(PACKAGE)-$(VERSION)/include/dl/elf.h \
		$(PACKAGE)-$(VERSION)/include/dl/Makefile \
		$(PACKAGE)-$(VERSION)/include/dl/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/darwin/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/darwin/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/darwin/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/dirent.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/limits.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/signal.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/stdio.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/termios.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/unistd.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/utmpx.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/freebsd/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/dirent.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/limits.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/poll.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/signal.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/stdio.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/stropts.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/termios.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/unistd.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/utmpx.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/net/if.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/net/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/net/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/ioctl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/mount.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/reboot.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/linux/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/dirent.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/limits.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/poll.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/signal.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/stdio.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/stropts.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/termios.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/ucontext.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/unistd.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/utmpx.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/net/if.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/net/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/net/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/ioctl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/mount.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/reboot.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/vt.h \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/netbsd/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/dirent.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/fcntl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/limits.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/signal.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/stdio.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/termios.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/unistd.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/ioctl.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/openbsd/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/Makefile \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/errno.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/time.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/unistd.h \
		$(PACKAGE)-$(VERSION)/include/kernel/solaris/project.conf \
		$(PACKAGE)-$(VERSION)/include/math/math.h \
		$(PACKAGE)-$(VERSION)/include/math/Makefile \
		$(PACKAGE)-$(VERSION)/include/math/project.conf \
		$(PACKAGE)-$(VERSION)/include/net/if.h \
		$(PACKAGE)-$(VERSION)/include/net/Makefile \
		$(PACKAGE)-$(VERSION)/include/net/project.conf \
		$(PACKAGE)-$(VERSION)/include/pthread/pthread.h \
		$(PACKAGE)-$(VERSION)/include/pthread/Makefile \
		$(PACKAGE)-$(VERSION)/include/pthread/project.conf \
		$(PACKAGE)-$(VERSION)/include/rt/sched.h \
		$(PACKAGE)-$(VERSION)/include/rt/Makefile \
		$(PACKAGE)-$(VERSION)/include/rt/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/netdb.h \
		$(PACKAGE)-$(VERSION)/include/socket/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/arpa/inet.h \
		$(PACKAGE)-$(VERSION)/include/socket/arpa/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/arpa/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/compat/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/compat/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/compat/netinet/in.h \
		$(PACKAGE)-$(VERSION)/include/socket/compat/netinet/tcp.h \
		$(PACKAGE)-$(VERSION)/include/socket/compat/netinet/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/compat/netinet/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/compat/sys/socket.h \
		$(PACKAGE)-$(VERSION)/include/socket/compat/sys/un.h \
		$(PACKAGE)-$(VERSION)/include/socket/compat/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/compat/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/netinet/in.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/netinet/tcp.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/netinet/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/netinet/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/sys/socket.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/freebsd/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/netinet/in.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/netinet/tcp.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/netinet/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/netinet/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/sys/socket.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/sys/un.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/linux/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/netinet/in.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/netinet/tcp.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/netinet/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/netinet/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/sys/socket.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/sys/un.h \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/kernel/netbsd/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/netinet/in.h \
		$(PACKAGE)-$(VERSION)/include/socket/netinet/tcp.h \
		$(PACKAGE)-$(VERSION)/include/socket/netinet/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/netinet/project.conf \
		$(PACKAGE)-$(VERSION)/include/socket/sys/socket.h \
		$(PACKAGE)-$(VERSION)/include/socket/sys/un.h \
		$(PACKAGE)-$(VERSION)/include/socket/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/socket/sys/project.conf \
		$(PACKAGE)-$(VERSION)/include/sys/ioctl.h \
		$(PACKAGE)-$(VERSION)/include/sys/ipc.h \
		$(PACKAGE)-$(VERSION)/include/sys/mman.h \
		$(PACKAGE)-$(VERSION)/include/sys/mount.h \
		$(PACKAGE)-$(VERSION)/include/sys/param.h \
		$(PACKAGE)-$(VERSION)/include/sys/ptrace.h \
		$(PACKAGE)-$(VERSION)/include/sys/reboot.h \
		$(PACKAGE)-$(VERSION)/include/sys/resource.h \
		$(PACKAGE)-$(VERSION)/include/sys/select.h \
		$(PACKAGE)-$(VERSION)/include/sys/shm.h \
		$(PACKAGE)-$(VERSION)/include/sys/stat.h \
		$(PACKAGE)-$(VERSION)/include/sys/statvfs.h \
		$(PACKAGE)-$(VERSION)/include/sys/syscall.h \
		$(PACKAGE)-$(VERSION)/include/sys/time.h \
		$(PACKAGE)-$(VERSION)/include/sys/times.h \
		$(PACKAGE)-$(VERSION)/include/sys/types.h \
		$(PACKAGE)-$(VERSION)/include/sys/uio.h \
		$(PACKAGE)-$(VERSION)/include/sys/utsname.h \
		$(PACKAGE)-$(VERSION)/include/sys/vt.h \
		$(PACKAGE)-$(VERSION)/include/sys/wait.h \
		$(PACKAGE)-$(VERSION)/include/sys/Makefile \
		$(PACKAGE)-$(VERSION)/include/sys/project.conf \
		$(PACKAGE)-$(VERSION)/src/ctype.c \
		$(PACKAGE)-$(VERSION)/src/dirent.c \
		$(PACKAGE)-$(VERSION)/src/errno.c \
		$(PACKAGE)-$(VERSION)/src/fcntl.c \
		$(PACKAGE)-$(VERSION)/src/float.c \
		$(PACKAGE)-$(VERSION)/src/fnmatch.c \
		$(PACKAGE)-$(VERSION)/src/grp.c \
		$(PACKAGE)-$(VERSION)/src/iconv.c \
		$(PACKAGE)-$(VERSION)/src/langinfo.c \
		$(PACKAGE)-$(VERSION)/src/libgen.c \
		$(PACKAGE)-$(VERSION)/src/locale.c \
		$(PACKAGE)-$(VERSION)/src/net/if.c \
		$(PACKAGE)-$(VERSION)/src/poll.c \
		$(PACKAGE)-$(VERSION)/src/pwd.c \
		$(PACKAGE)-$(VERSION)/src/regex.c \
		$(PACKAGE)-$(VERSION)/src/search.c \
		$(PACKAGE)-$(VERSION)/src/setjmp.c \
		$(PACKAGE)-$(VERSION)/src/signal.c \
		$(PACKAGE)-$(VERSION)/src/stdlib.c \
		$(PACKAGE)-$(VERSION)/src/stdio.c \
		$(PACKAGE)-$(VERSION)/src/string.c \
		$(PACKAGE)-$(VERSION)/src/strings.c \
		$(PACKAGE)-$(VERSION)/src/stropts.c \
		$(PACKAGE)-$(VERSION)/src/sys/ipc.c \
		$(PACKAGE)-$(VERSION)/src/sys/mman.c \
		$(PACKAGE)-$(VERSION)/src/sys/mount.c \
		$(PACKAGE)-$(VERSION)/src/sys/ptrace.c \
		$(PACKAGE)-$(VERSION)/src/sys/reboot.c \
		$(PACKAGE)-$(VERSION)/src/sys/resource.c \
		$(PACKAGE)-$(VERSION)/src/sys/select.c \
		$(PACKAGE)-$(VERSION)/src/sys/shm.c \
		$(PACKAGE)-$(VERSION)/src/sys/stat.c \
		$(PACKAGE)-$(VERSION)/src/sys/statvfs.c \
		$(PACKAGE)-$(VERSION)/src/sys/time.c \
		$(PACKAGE)-$(VERSION)/src/sys/times.c \
		$(PACKAGE)-$(VERSION)/src/sys/utsname.c \
		$(PACKAGE)-$(VERSION)/src/sys/wait.c \
		$(PACKAGE)-$(VERSION)/src/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/syslog.c \
		$(PACKAGE)-$(VERSION)/src/termios.c \
		$(PACKAGE)-$(VERSION)/src/time.c \
		$(PACKAGE)-$(VERSION)/src/ucontext.c \
		$(PACKAGE)-$(VERSION)/src/unistd.c \
		$(PACKAGE)-$(VERSION)/src/utime.c \
		$(PACKAGE)-$(VERSION)/src/utmpx.c \
		$(PACKAGE)-$(VERSION)/src/wchar.c \
		$(PACKAGE)-$(VERSION)/src/start.S \
		$(PACKAGE)-$(VERSION)/src/Makefile \
		$(PACKAGE)-$(VERSION)/src/syscalls.h \
		$(PACKAGE)-$(VERSION)/src/project.conf \
		$(PACKAGE)-$(VERSION)/src/dl/dlfcn.c \
		$(PACKAGE)-$(VERSION)/src/dl/Makefile \
		$(PACKAGE)-$(VERSION)/src/dl/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/common.h \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/darwin/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/amd64/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/i386/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/freebsd/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/amd64/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/arm/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/arm/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/arm/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/arm/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/i386/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/sparc/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/sparc/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/sparc/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/linux/sparc/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/common.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sys/sysctl.h \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/amd64/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/i386/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc64/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc64/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/netbsd/sparc64/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/arm/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/arm/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/arm/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/arm/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/i386/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/openbsd/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/common.h \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/project.conf \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/sparc/Makefile \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/sparc/start.S \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/sparc/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/kernel/solaris/sparc/project.conf \
		$(PACKAGE)-$(VERSION)/src/math/arch.S \
		$(PACKAGE)-$(VERSION)/src/math/math.c \
		$(PACKAGE)-$(VERSION)/src/math/Makefile \
		$(PACKAGE)-$(VERSION)/src/math/arch.h \
		$(PACKAGE)-$(VERSION)/src/math/project.conf \
		$(PACKAGE)-$(VERSION)/src/math/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/math/amd64/math.h \
		$(PACKAGE)-$(VERSION)/src/math/amd64/math.S \
		$(PACKAGE)-$(VERSION)/src/math/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/math/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/math/i386/math.h \
		$(PACKAGE)-$(VERSION)/src/math/i386/math.S \
		$(PACKAGE)-$(VERSION)/src/math/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/pthread/pthread.c \
		$(PACKAGE)-$(VERSION)/src/pthread/Makefile \
		$(PACKAGE)-$(VERSION)/src/pthread/project.conf \
		$(PACKAGE)-$(VERSION)/src/rt/sched.c \
		$(PACKAGE)-$(VERSION)/src/rt/Makefile \
		$(PACKAGE)-$(VERSION)/src/rt/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/arpa/inet.c \
		$(PACKAGE)-$(VERSION)/src/socket/netdb.c \
		$(PACKAGE)-$(VERSION)/src/socket/sys/socket.c \
		$(PACKAGE)-$(VERSION)/src/socket/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/syscalls.h \
		$(PACKAGE)-$(VERSION)/src/socket/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/common.h \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/freebsd/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/common.h \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/arm/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/arm/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/arm/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/linux/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/common.h \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/amd64/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/amd64/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/amd64/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/arm/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/arm/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/arm/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/i386/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/i386/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/i386/project.conf \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/sparc/Makefile \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/sparc/syscalls.S \
		$(PACKAGE)-$(VERSION)/src/socket/kernel/netbsd/sparc/project.conf \
		$(PACKAGE)-$(VERSION)/tests/dlfcn.c \
		$(PACKAGE)-$(VERSION)/tests/includes.c \
		$(PACKAGE)-$(VERSION)/tests/langinfo.c \
		$(PACKAGE)-$(VERSION)/tests/netdb.c \
		$(PACKAGE)-$(VERSION)/tests/ptrace.c \
		$(PACKAGE)-$(VERSION)/tests/regex.c \
		$(PACKAGE)-$(VERSION)/tests/select.c \
		$(PACKAGE)-$(VERSION)/tests/setjmp.c \
		$(PACKAGE)-$(VERSION)/tests/signal.c \
		$(PACKAGE)-$(VERSION)/tests/socket.c \
		$(PACKAGE)-$(VERSION)/tests/start.c \
		$(PACKAGE)-$(VERSION)/tests/stdint.c \
		$(PACKAGE)-$(VERSION)/tests/stdio.c \
		$(PACKAGE)-$(VERSION)/tests/string.c \
		$(PACKAGE)-$(VERSION)/tests/time.c \
		$(PACKAGE)-$(VERSION)/tests/Makefile \
		$(PACKAGE)-$(VERSION)/tests/tests.sh \
		$(PACKAGE)-$(VERSION)/tests/project.conf \
		$(PACKAGE)-$(VERSION)/tools/tracer-analyze.c \
		$(PACKAGE)-$(VERSION)/tools/tracer-syscalls.S \
		$(PACKAGE)-$(VERSION)/tools/Makefile \
		$(PACKAGE)-$(VERSION)/tools/tracer-analyze.h \
		$(PACKAGE)-$(VERSION)/tools/tracer-syscalls.h \
		$(PACKAGE)-$(VERSION)/tools/project.conf \
		$(PACKAGE)-$(VERSION)/Makefile \
		$(PACKAGE)-$(VERSION)/COPYING \
		$(PACKAGE)-$(VERSION)/README.md \
		$(PACKAGE)-$(VERSION)/config.sh \
		$(PACKAGE)-$(VERSION)/project.conf
	$(RM) -- $(PACKAGE)-$(VERSION)

install:
	@for i in $(SUBDIRS); do (cd "$$i" && $(MAKE) install) || exit; done

uninstall:
	@for i in $(SUBDIRS); do (cd "$$i" && $(MAKE) uninstall) || exit; done

.PHONY: all subdirs clean distclean dist install uninstall
