Received: (qmail 1305 invoked by uid 550); 4 Oct 2024 15:00:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16349 invoked from network); 4 Oct 2024 10:03:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1728036225; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=YKfnw4HxzQwCKPL/nsWGjTPoG2au7AUfp71XcA2rZMM=;
	b=Ftv6zLazB/su/dU7vQrRj2XAOYLCmkz6ORu1+tIn7a0m7Brd86vMEDgJFvtxsU7u74HWt9
	De6QEb6w8oNZ2nOQIq5yCc4ZlInCyk0Odk+BdemxS79vb5YVpChouXs8gaxNsxeKCw/eEy
	k++m6Zt8VKcu6lpBYAMX+BcXB/f8n4s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1728036225;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=YKfnw4HxzQwCKPL/nsWGjTPoG2au7AUfp71XcA2rZMM=;
	b=/mXIlJDTLTcunGpakX1QD+VHXVekA8jD/f8ed4rdWNqav3u2aUCUeTnCBxtigyfrHbhTmn
	83cXJb9gWhdKNnAw==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Ftv6zLaz;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="/mXIlJDT"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1728036225; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=YKfnw4HxzQwCKPL/nsWGjTPoG2au7AUfp71XcA2rZMM=;
	b=Ftv6zLazB/su/dU7vQrRj2XAOYLCmkz6ORu1+tIn7a0m7Brd86vMEDgJFvtxsU7u74HWt9
	De6QEb6w8oNZ2nOQIq5yCc4ZlInCyk0Odk+BdemxS79vb5YVpChouXs8gaxNsxeKCw/eEy
	k++m6Zt8VKcu6lpBYAMX+BcXB/f8n4s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1728036225;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=YKfnw4HxzQwCKPL/nsWGjTPoG2au7AUfp71XcA2rZMM=;
	b=/mXIlJDTLTcunGpakX1QD+VHXVekA8jD/f8ed4rdWNqav3u2aUCUeTnCBxtigyfrHbhTmn
	83cXJb9gWhdKNnAw==
Date: Fri, 4 Oct 2024 12:03:44 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zv-9gAGM_X7QQShJ@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4zoEil9ti5S17bAh"
Content-Disposition: inline
Subject: [oss-security] CVE-2024-47191: Local root exploit in the PAM module pam_oath.so

--4zoEil9ti5S17bAh
Content-Type: multipart/mixed; boundary="Yvbsp3N3v4sYggAt"
Content-Disposition: inline


--Yvbsp3N3v4sYggAt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a report about a local root exploit in the PAM module `pam_oath.so`,
which is shipped as part of the oath-toolkit project [1].

You can also find a rendered HTML version of this report on our blog [5].

The vulnerability was discovered by Fabian Vogt of SUSE, and this report and
attached patch were authored by Matthias Gerstner of the SUSE Security Team.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

oath-toolkit[1] contains libraries and utilities for managing one-time pass=
word
(OTP) authentication e.g. as a second factor to password authentication.
Fellow SUSE engineer Fabian Vogt approached our Security Team about the
project's PAM module. A couple of years ago, the module gained a feature wh=
ich
allows to place the OTP state file (called usersfile) in the home directory=
 of
the to-be-authenticated user. Fabian noticed that the PAM module performs
unsafe file operations in users' home directories. Since PAM stacks typical=
ly
run as root, this can easily cause security issues.

The feature in question has been introduced in oath-toolkit version 2.6.7 (=
via
commit 60d9902b5c [2]). The following report is based on the most recent
oath-toolkit release tag for version 2.6.11.

Vulnerability Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The PAM module is typically configured using a PAM stack configuration line
like this:

    auth [user_unknown=3Dignore success=3Dok] pam_oath.so usersfile=3D${HOM=
E}/user.oath window=3D20

The expansion logic of the path components ${HOME} or ${USER} is part of the
problematic feature that introduced the security issue.

The PAM module invokes a liboath library function called
`oath_authenticate_usersfile()` found in liboath/usersfile.c, which manages
all accesses to the usersfile. Privileges are not dropped, and the function=
 is
not aware of the special privileged PAM context. All file accesses in the
function are naive and follow symlinks. The relevant file operations that a=
re
carried out on successful OTP entry are as follows:

- opening of the usersfile via `fopen()` for reading (usersfile.c:470).
- opening of a lockfile parallel to the usersfile using a filename suffix "=
.lock" via `fopen()` for writing (usersfile.c:332)
- locking of the lockfile using POSIX advisory locks via `fcntl()` (usersfi=
le.c:350)
- creation of a new usersfile parallel to the old usersfile using a filenam=
e suffix ".new" via `fopen()` (usersfile.c:372)
- changing ownership of the new usersfile to the to-be-authenticated user v=
ia `fchown()` (usersfile.c:394)
- renaming of the new usersfile to the old usersfile via `rename()` (usersf=
ile.c:411)
- unlinking of the previously created lockfile (usersfile.c:423)

If this happens in a PAM stack running as root and the usersfile is located=
 in
an unprivileged user's home directory, then a simple root exploit is possib=
le
by placing a symlink like this:

    user$ ln -s /etc/shadow $HOME/user.oath.new

This will cause /etc/shadow to be overwritten and its ownership will be
changed to the to-be-authenticated user. The to-be-authenticated user can
obtain full root privileges. No race condition needs to be won and no
pathnames have to be guessed.

Embargo Process and Upstream Communication
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Fabian Vogt first approached the main upstream author by email. Since we di=
d not
get a reaction for several days, we created a private Gitlab issue in the
upstream project [3], offering coordinated disclosure. There was no reactio=
n,
thus we decided to handle the embargo and bugfix ourselves, since we needed=
 a
fixed `pam_oath` module for our products. We developed a comprehensive patc=
h,
attached to this report and described in "SUSE Bugfix" below.

We requested a CVE from Mitre for this issue and they assigned CVE-2024-471=
91.

As we were preparing to go public, the upstream author got pinged via priva=
te
channels and reacted to our report, preparing an upstream bugfix release
addressing the issue, described in "Upstream Bugfix" below.

Due to time constraints, we have decided to apply our SUSE bugfix to our
products for the time being, until we can evaluate the upstream solution in=
 more
depth.

SUSE Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We developed the attached patch within SUSE to address the issue. The
situation for the bugfix is more complex than it might look at first, becau=
se
many things are unclear or broken in the current source code:

- the PAM module cannot know for sure if the target usersfile is supposed to
  be owned by root or by the to-be-authenticated user, or even some unrelat=
ed
  user. The presence of a ${HOME} path element makes it likely that the
  to-be-authenticated user is supposed to own the file. The presence of a
  ${USER} element is not that clear, however.
- the locking mechanism used in the current source code is broken:
  - the usersfile is initially opened for reading and parsed without owning
    the lock (usersfile.c:470). A parallel task can be about to replace this
    file with a new version, thus a lost update can occur.
  - the lock file is unlinked again after the usersfile has been updated
    (usersfile.c:423). This breaks when another task is waiting on the
    now-unlinked lockfile, while a third task arrives, sees no lockfile and
    creates a new one.
- the lockfile is placed in the user's home directory, possibly cluttering =
it.
  Cases like the home directory being a network file system (NFS, CIFS) wou=
ld
  need to be considered. The unprivileged user might also prevent the privi=
leged
  PAM stack from obtaining the lock, causing a local denial-of-service.

We decided to develop a patch that takes as many use cases as possible into
account, securing all operations while maintaining backwards compatibility.
With the patch, the usersfile path is safely traversed using the `*at` fami=
ly
of system calls. Privileges will be dropped to the owner of the usersfile a=
s an
additional security measure. The locking mechanism has been fixed to cover =
all
accesses to the usersfile. Instead of creating a separate lockfile, the
usersfile itself is used for locking, which avoids cluttering the home
directory. Additional sanity checks are added e.g. world-writable directory
components are denied. The patch employs Linux specific features (e.g. link=
ing
files from /proc/self/fd), thus it no longer works for non-Linux systems. T=
he
patch description and code comments contain more hints about the individual
decisions taken in this patch.

Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream developed an alternative solution, designed to be more portable and
cross-platform. This does not take into account all aspects that we conside=
red
in the "SUSE Bugfix", but should be sufficient to fix the specific security
issue described in this report.

This fix has been released in version 2.6.12 of oath-toolkit. Upstream has =
also
published an associated Security Advisory [4].

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2024-08-08: Fabian Vogt of SUSE sent an email to the main upstream author,
            describing the issue. The SUSE Security Team was involved as we=
ll.
2024-08-20: After not receiving any reply by email, we created a private
            GitLab issue [3] describing the vulnerability and offering
            coordinated disclosure.
2024-08-28: SUSE started developing an internal patch for the issue.
2024-09-19: Our internal patch was getting ready for publication. We added a
            comment in the private GitLab issue, granting two final weeks of
            embargo time before we will publish the vulnerability and the p=
atch.
            We also shared the current patch in the issue.
2024-09-19: We requested a CVE for the issue from Mitre.
2024-09-20: Mitre assigned CVE-2024-47191.
2024-09-29: After being pinged via private channels, the main upstream auth=
or
            reacted to our communication and started preparing a bugfix rel=
ease.
2024-10-04: Upstream published release 2.6.12 containing the bugfix.

[1]: https://gitlab.com/oath-toolkit/oath-toolkit
[2]: https://gitlab.com/oath-toolkit/oath-toolkit/-/commit/60d9902b5c20f27e=
70f8e9c816bfdc0467567e1a
[3]: https://gitlab.com/oath-toolkit/oath-toolkit/-/issues/43
[4]: https://www.nongnu.org/oath-toolkit/security/CVE-2024-47191/
[5]: https://security.opensuse.org/2024/10/04/oath-toolkit-vulnerability.ht=
ml

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich (HRB 36809=
, AG N=FCrnberg)

--Yvbsp3N3v4sYggAt
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-usersfile-fix-potential-security-issues-in-PAM-modul.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 4302b149a186ba8ca155ea7e211c25fac112a3ef Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Wed, 11 Sep 2024 14:09:25 +0200
Subject: [PATCH] usersfile: fix potential security issues in PAM module
 context (CVE-2024-47191)

With the addition of the possibility to place a usersfile also into
a user's home directory via variable expansion of ${HOME} and ${USER} in
the `usersfile=3D` path specification, security issues sneaked in. The PAM
process usually runs with root privileges. The file operations in an
unprivileged user's home directory follow symlinks both when reading and
creating files, allowing for a potential local root exploit, because of
the `fchown()` performed on the newly created usersfile.

The situation is not that easy to fix, since the current PAM module
configuration does not indicate explicitly whether the usersfile will be
placed in an unprivileged or in a privileged location. It is advisable
to drop privileges to the owner of the usersfile, if we're running as
root. To determine the ownership of the usersfile, it first has to be
opened in a safe way, though.

This change addresses the issue by introducing a usersfile_ctx datatype
which holds state information about the target usersfile. The new
function `safe_open_usersfile()` will open the target path in a safe
way, rejecting any symlinks on the way. The function also rejects any
world-writable directories or files, which would generally be a bad idea
to have in the usersfile path.

The global `umask()` alteration is dropped in favor of using an unnamed
temporary file to achieve the proper file permissions of a newly created
usersfile. Since the target mode is 0600, the umask would need to be
really awkward anyway to change the outcome. `fchown()` is no longer
called on the new file, assuming we are already running with the correct
credentials.

The locking logic of the existing code is incomplete, because the
initial reading of the usersfile is performed without locking. Only
during updating of the file, the lock is obtained. I believe this can
lead to inconsistencies. Also the current code unlinks the lockfile
after its use, which opens a race condition making the lock again
unreliable.

The creation of the lockfile in the directory containing the usersfile
is somewhat unfortunate. Lockfiles are runtime state data that should go
into /run or a shared sticky-bit directory. It is unclear whether mixed
root and non-root accesses need to be synchronized (probably). An
advantage of using the location of the usersfile is that if the
usersfile should be placed on a network share (NFS, CIFS), that the
locking can theoretically happen across the network.

This patch aims to make the locking complete by acquiring it before
parsing the actual usersfile. To prevent cluttering of users' home
directories no separate lockfile is used anymore, but the usersfile
itself it used for locking. This involves some extra complexity, since
even after acquiring the lock, the actual usersfile on disk might have
been replaced by a new one in the meantime. This situation needs to be
detected and recovered from.

In the PAM module context the unprivileged user could try to DoS the
privileged PAM stack, by taking the lock and never releasing it.
Therefore a polling loop is implemented that fails after 15 seconds of
failing to obtain the lock. Unfortunately there exists no lock with
timeout API, thus it needs to be polled.

Instead of the POSIX compatible fcntl(F_SETLK) locking API this patch
switches to the Linux specific fcntl(F_OFD_SETLK) locking. The reason
for this is that locks obtained with F_SETLK cannot be inherited to
child processes, which we need to do now. flock() would also have been
an alternative, but it has unfortunate properties if the lockfile should
be located on a network file system.
---
 liboath/errors.c    |   7 +-
 liboath/oath.h.in   |   7 +-
 liboath/usersfile.c | 694 ++++++++++++++++++++++++++++++++++++--------
 3 files changed, 580 insertions(+), 128 deletions(-)

diff --git a/liboath/errors.c b/liboath/errors.c
index c1725f9..67ed008 100644
--- a/liboath/errors.c
+++ b/liboath/errors.c
@@ -58,7 +58,12 @@ static const err_t errors[] =3D {
   ERR (OATH_FILE_SYNC_ERROR, "System error when syncing file to disk"),
   ERR (OATH_FILE_CLOSE_ERROR, "System error when closing file"),
   ERR (OATH_FILE_CHOWN_ERROR, "System error when changing file ownership"),
-  ERR (OATH_FILE_STAT_ERROR, "System error when getting file status")
+  ERR (OATH_FILE_STAT_ERROR, "System error when getting file status"),
+  ERR (OATH_FILE_OPEN_ERROR, "System error trying to open file"),
+  ERR (OATH_FORK_ERROR, "System error when forking a process"),
+  ERR (OATH_WAIT_ERROR, "System error when waiting for a process"),
+  ERR (OATH_SETUID_ERROR, "System error when setting process UID"),
+  ERR (OATH_SETGID_ERROR, "System error when setting process GID")
 };
=20
 /**
diff --git a/liboath/oath.h.in b/liboath/oath.h.in
index b8b4fbd..dc3e973 100644
--- a/liboath/oath.h.in
+++ b/liboath/oath.h.in
@@ -152,9 +152,14 @@ extern "C"
     OATH_FILE_CLOSE_ERROR =3D -25,
     OATH_FILE_CHOWN_ERROR =3D -26,
     OATH_FILE_STAT_ERROR =3D -27,
+    OATH_FILE_OPEN_ERROR =3D -28,
+    OATH_FORK_ERROR =3D -29,
+    OATH_WAIT_ERROR =3D -30,
+    OATH_SETUID_ERROR =3D -31,
+    OATH_SETGID_ERROR =3D -32,
     /* When adding anything here, update OATH_LAST_ERROR, errors.c
        and tests/tst_errors.c. */
-    OATH_LAST_ERROR =3D -27
+    OATH_LAST_ERROR =3D -33
   } oath_rc;
=20
 /* Global */
diff --git a/liboath/usersfile.c b/liboath/usersfile.c
index 3b139d1..5bd3700 100644
--- a/liboath/usersfile.c
+++ b/liboath/usersfile.c
@@ -29,10 +29,229 @@
 #include <unistd.h>		/* For ssize_t. */
 #include <fcntl.h>		/* For fcntl. */
 #include <errno.h>		/* For errno. */
+#include <limits.h>		/* For PATH_MAX & friends. */
 #include <sys/stat.h>		/* For S_IRUSR, S_IWUSR. */
+#include <sys/wait.h>		/* For wait */
+#include <sys/stat.h>		/* For stat */
=20
 #ifndef _WIN32
=20
+struct usersfile_ctx {
+    const char *path;
+    const char *basename;  /* basename of path, points into `path` */
+    int parent_fd;         /* file descriptor for the parent directory of =
the usersfile */
+    int fd;                /* file descriptor for the usersfile */
+    struct stat st;        /* stat information for the usersfile */
+};
+
+/*
+ * Upgrade a file descriptor opened with O_PATH to a fully functional file
+ * descriptor.
+ *
+ * To achieve this the file is reopened via /proc, which is supported by t=
he
+ * Linux kernel. `fd` needs to point to the currently open file descriptor=
. On
+ * success it will be replaced by the new upgraded file descriptor, while =
the
+ * original file descriptor will be closed.
+ *
+ * `flags` are passed to `open()` for the new file descriptor.
+ */
+static int
+reopen_path_fd (int *fd, int flags)
+{
+  /* we need to open /proc/self/fd/<int>, so the path won't get too long h=
ere */
+  char proc_path[128];
+  int res =3D snprintf(proc_path, sizeof(proc_path), "/proc/self/fd/%d", *=
fd);
+
+  if (res < 0 || res >=3D sizeof(proc_path))
+      return OATH_PRINTF_ERROR;
+
+  int newfd =3D open(proc_path, flags);
+
+  if (newfd < 0)
+      return OATH_FILE_OPEN_ERROR;
+
+  close(*fd);
+  *fd =3D newfd;
+  return OATH_OK;
+}
+
+static void
+init_usersfile_ctx(struct usersfile_ctx *ctx, const char *path)
+{
+  ctx->path =3D path;
+  ctx->basename =3D NULL;
+  ctx->parent_fd =3D -1;
+  ctx->fd =3D -1;
+  memset(&ctx->st, 0, sizeof(ctx->st));
+}
+
+static void
+destroy_usersfile_ctx(struct usersfile_ctx *ctx)
+{
+   if (ctx->parent_fd !=3D -1)
+     {
+         close (ctx->parent_fd);
+         ctx->parent_fd =3D -1;
+     }
+
+   if (ctx->fd !=3D -1)
+     {
+         close (ctx->fd);
+         ctx->fd =3D -1;
+     }
+
+   /* reset everything but keep the path so it might be reused */
+   init_usersfile_ctx(ctx, ctx->path);
+}
+
+/*
+ * Obtain a lock for the usersfile. The lock is placed on the usersfile it=
self
+ * as found in `ctx->fd`
+ *
+ * On success the lock on `ctx->fd` has been correctly obtained.
+ */
+static int
+lock_usersfile (struct usersfile_ctx *ctx)
+{
+  /*
+   * There exist three file locking APIs:
+   *
+   * - flock(): this would be the simplest API, but it doesn't properly su=
pport
+   *   network file systems like NFS, which then causes a transparent fall=
back
+   *   to fcntl() file locking.
+   * - fcntl using F_SETLCK & friends: this lock is not based on the open =
file
+   *   description and thus cannot be inherited to child processes, which =
we
+   *   need to do.
+   * - fcntl using F_OFD_SETLCK & friends: this is a Linux specific lock t=
hat
+   *   _is_ based on the open file description. It seems like the best bet=
 for
+   *   our scenario.
+   *
+   * Since we are potentially running in PAM module context, we have to
+   * take a local DoS scenario into account here, where the unprivileged u=
ser
+   * holds the lock, preventing us from ever getting it.
+   *
+   * There's no file locking API supporting a timeout (except for using a
+   * SIGALRM timer to interrupt the system call). Using asynchronous signa=
ls
+   * in a library is not so great. Thus make a best effort polling attempt:
+   *
+   * `F_OFD_SETLK` polls for the lock. If we cannot get it, sleep half a
+   * second and retry. Do this for at max 15 seconds, else fail.
+   */
+
+  struct flock fl;
+  memset(&fl, 0, sizeof(fl));
+  /* lock the entire file with a write lock */
+  fl.l_type =3D F_WRLCK;
+  fl.l_whence =3D SEEK_SET;
+  fl.l_start =3D 0;
+  fl.l_len =3D 0;
+
+  for (int i =3D 0; i < 30; i++) {
+      if (fcntl(ctx->fd, F_OFD_SETLK, &fl) =3D=3D 0)
+          return OATH_OK;
+
+      if (errno =3D=3D EACCES || errno =3D=3D EAGAIN)
+        usleep(1000 * 500);
+      else
+        break;
+  }
+
+  return OATH_FILE_LOCK_ERROR;
+}
+
+/*
+ * After traversing all directory path elements this function actually ope=
ns
+ * the target usersfile. `ctx->parent_fd` must be valid.
+ *
+ * This function takes care of the locking logic, which is a bit complicat=
ed,
+ * since we use the usersfile itself for locking. This is done, because we
+ * don't want to clutter arbitrary directories with lockfiles, possibly ma=
king
+ * the locking also less robust (e.g. if users delete them interactively).
+ *
+ * Since we don't actually write to the usersfile, but replace it atomical=
ly,
+ * to prevent any inconsistent state to ever be stored to disk, we need a
+ * recovery mechanism if we obtain a lock on the file, but the file has
+ * already been replaced by a new version. This situation is detected by
+ * opening the file again after the lock has been placed and comparing the
+ * inode numbers. If the no longer match, then the new file has to be lock=
ed
+ * instead.
+ *
+ * On successful return ctx->fd will be valid and locked and ctx->st will
+ * contain the current stat information for the usersfile.
+ */
+static int
+finish_open_usersfile (struct usersfile_ctx *ctx)
+{
+  const int oflags =3D O_RDONLY|O_PATH|O_CLOEXEC|O_NOFOLLOW;
+  ctx->fd =3D openat(ctx->parent_fd, ctx->basename, oflags);
+
+  if (ctx->fd < 0)
+    return errno =3D=3D ENOENT ? OATH_NO_SUCH_FILE : OATH_FILE_OPEN_ERROR;
+
+  if (fstat(ctx->fd, &ctx->st) !=3D 0)
+      return OATH_FILE_STAT_ERROR;
+
+  /* lock and retry opening until all is consistent, abort after a couple =
of
+   * times, it's unlikely that we race all the time (could be a DoS attemp=
t) */
+  for (int i =3D 0; i < 5; i++)
+    {
+      /* deny world-writable or special usersfile */
+      if ((ctx->st.st_mode & S_IWOTH) !=3D 0 || !S_ISREG(ctx->st.st_mode))
+          return OATH_FILE_OPEN_ERROR;
+
+      /* we need to open it read-write for write-locking it via fcntl(),
+       * otherwise we wouldn't need write access for the file, since we'll
+       * atomically replace it with a new one. */
+      int err =3D reopen_path_fd(&ctx->fd, O_RDWR|O_CLOEXEC);
+      if (err !=3D OATH_OK)
+          return err;
+
+      err =3D lock_usersfile(ctx);
+      if (err !=3D OATH_OK)
+          return err;
+
+      /*
+       * we now own a lock on the usersfile, but another process might alr=
eady
+       * have replaced the file in question by new version. Thus we need to
+       * check whether the file is still there and is the same as the one =
we
+       * have opened. Otherwise a race occurred an we need to retry.
+       */
+      int check_fd =3D openat(ctx->parent_fd, ctx->basename, oflags);
+      struct stat check_st;
+      err =3D fstat(check_fd, &check_st);
+      if (err !=3D OATH_OK)
+        {
+          close(check_fd);
+          return err;
+        }
+
+      /* comparing the inode should be enough, since parent_fd didn't chan=
ge,
+       * so it should be the same file system */
+      if (ctx->st.st_ino !=3D check_st.st_ino)
+        {
+          /* race occurred, retry using the new FD */
+          close(ctx->fd);
+          ctx->fd =3D check_fd;
+          memcpy(&ctx->st, &check_st, sizeof(ctx->st));
+          continue;
+        }
+
+      /* we own the lock and the file is still in place, we did it */
+      close(check_fd);
+
+      /* now also reopen the parent directory FD, so it can be used for
+       * fsync() later on. */
+      err =3D reopen_path_fd(&ctx->parent_fd, O_RDONLY|O_CLOEXEC|O_DIRECTO=
RY);
+      if (err !=3D OATH_OK)
+          return err;
+
+      return OATH_OK;
+    }
+
+  /* maximum number of locking attempts exceeded */
+  return OATH_FILE_LOCK_ERROR;
+}
+
 static int
 parse_type (const char *str, unsigned *digits, unsigned *totpstepsize)
 {
@@ -298,8 +517,92 @@ update_usersfile2 (const char *username,
   return OATH_OK;
 }
=20
+/*
+ * create a new file in the directory referred to by ctx->parent_fd. A uni=
que
+ * filename will be selected and written out to `newname`.
+ */
+static int
+create_new_usersfile(struct usersfile_ctx *ctx, char *newname)
+{
+  int err =3D OATH_OK;
+  newname[0] =3D '\0';
+
+  /* create an unnamed temporary file, this way we can fix the file mode
+     without anybody else being able to access the file */
+  int fd =3D openat(ctx->parent_fd, ".", O_TMPFILE|O_WRONLY|O_CLOEXEC, 060=
0);
+  if (fd < 0)
+    return OATH_FILE_OPEN_ERROR;
+
+  /* make sure the mode is as we want it, since umask might have changed t=
he outcome. */
+  if (fchmod(fd, 0600) !=3D 0)
+    {
+        err =3D OATH_FILE_CHOWN_ERROR;
+        goto out;
+    }
+
+  /* there's nothing like mkostmpat() where we can use our parent_fd.
+   * tmpname() & friends are deprecated and also not fully suitable here.
+   *
+   * what we're actually missing here is an additional flag LINKAT_REPLACE
+   * which would allow to atomically replace the original file, instead of
+   * using renameat(). This doesn't exist yet, though.
+   *
+   * linkat() doesn't follow symlinks or overwrite files, so we're safe he=
re
+   * against any shenanigans. The user owning parent_fd can try to guess t=
he
+   * filename we're using here and thus DoS us. Setup an arbitrary limit of
+   * creation attempts to prevent an infinite loop in such situations. Suc=
h a
+   * bad actor would then only DoS itself, preventing login.
+   *
+   * Shared world-writable directories should never be used for the usersf=
ile,
+   * this would be a configuration error, thus we don't try to protect aga=
inst
+   * such scenarios.
+   *
+   * An alternative would be using rand(), but then we'd need to also seed=
 it,
+   * with possible process wide side effects, which is also not great.
+   */
+
+  int ret =3D snprintf(newname, NAME_MAX, "%s.new.%d", ctx->basename, getp=
id());
+  if (ret < 0 || ret >=3D NAME_MAX)
+    {
+      err =3D OATH_PRINTF_ERROR;
+      goto out;
+    }
+
+  /* we need to specify /proc/self/fd/<int>, so the path won't get too lon=
g here */
+  char proc_path[128];
+  ret =3D snprintf(proc_path, sizeof(proc_path), "/proc/self/fd/%d", fd);
+  if (ret < 0 || ret >=3D NAME_MAX)
+    {
+      err =3D OATH_PRINTF_ERROR;
+      goto out;
+    }
+
+  /* we cannot reliably use AT_EMPTY_PATH here, since it can require the
+   * CAP_DAC_READ_SEARCH capability when running as non-root. Starting with
+   * kernel 6.10 this requirement has been softened, but we need to stay
+   * backward compatible. Linking the magic link in /proc into the directo=
ry
+   * works without extra capabilities.
+   * For this workaround to function AT_SYMLINK_FOLLOW _must_ be specified
+   * so this is a conscious decision.
+   */
+  if (linkat(AT_FDCWD, proc_path, ctx->parent_fd, newname, AT_SYMLINK_FOLL=
OW))
+    {
+      err =3D OATH_FILE_CREATE_ERROR;
+    }
+
+out:
+  if (err !=3D OATH_OK)
+    {
+        if (fd >=3D 0)
+            close(fd);
+        return err;
+    }
+
+  return fd;
+}
+
 static int
-update_usersfile (const char *usersfile,
+update_usersfile (struct usersfile_ctx *ctx,
 		  const char *username,
 		  const char *otp,
 		  FILE *infh,
@@ -307,9 +610,7 @@ update_usersfile (const char *usersfile,
 		  size_t *n, char *timestamp, uint64_t new_moving_factor,
 		  size_t skipped_users)
 {
-  FILE *outfh, *lockfh;
   int rc;
-  char *newfilename, *lockfile;
=20
   /* Rewind input file. */
   {
@@ -321,112 +622,236 @@ update_usersfile (const char *usersfile,
     clearerr (infh);
   }
=20
-  /* Open lockfile. */
-  {
-    int l;
+  char newfilename[NAME_MAX];
=20
-    l =3D asprintf (&lockfile, "%s.lock", usersfile);
-    if (lockfile =3D=3D NULL || ((size_t) l) !=3D strlen (usersfile) + 5)
-      return OATH_PRINTF_ERROR;
+  /* Open the "new" file. We aim for atomic replacement of the old file to
+   * address possible power failure or system lockup scenarios. */
+  int outfd =3D create_new_usersfile(ctx, newfilename);
+  if (outfd < 0)
+    {
+      return outfd;
+    }
=20
-    lockfh =3D fopen (lockfile, "w");
-    if (!lockfh)
-      {
-	free (lockfile);
-	return OATH_FILE_CREATE_ERROR;
-      }
-  }
+  FILE *outfh =3D fdopen (outfd, "w");
+  if (!outfh)
+    {
+      rc =3D OATH_FILE_CREATE_ERROR;
+      goto out;
+    }
=20
-  /* Lock the lockfile. */
-  {
-    struct flock l;
+  /* ownership has been transferred to outfh */
+  outfd =3D -1;
=20
-    memset (&l, 0, sizeof (l));
-    l.l_whence =3D SEEK_SET;
-    l.l_start =3D 0;
-    l.l_len =3D 0;
-    l.l_type =3D F_WRLCK;
+  /* Create the new usersfile content. */
+  rc =3D update_usersfile2 (username, otp, infh, outfh, lineptr, n,
+			  timestamp, new_moving_factor, skipped_users);
=20
-    while ((rc =3D fcntl (fileno (lockfh), F_SETLKW, &l)) < 0 && errno =3D=
=3D EINTR)
-      continue;
-    if (rc =3D=3D -1)
-      {
-	fclose (lockfh);
-	free (lockfile);
-	return OATH_FILE_LOCK_ERROR;
-      }
+  if (rc !=3D OATH_OK)
+      goto out;
+
+  /* On success, flush the buffers. */
+  if (fflush (outfh) !=3D 0) {
+    rc =3D OATH_FILE_FLUSH_ERROR;
+    goto out;
   }
=20
-  /* Open the "new" file. */
-  {
-    int l;
+  /* On success, sync the disks. */
+  if (fsync (fileno (outfh)) !=3D 0) {
+    rc =3D OATH_FILE_SYNC_ERROR;
+    goto out;
+  }
=20
-    l =3D asprintf (&newfilename, "%s.new", usersfile);
-    if (newfilename =3D=3D NULL || ((size_t) l) !=3D strlen (usersfile) + =
4)
-      {
-	fclose (lockfh);
-	free (lockfile);
-	return OATH_PRINTF_ERROR;
-      }
-
-    outfh =3D fopen (newfilename, "w");
-    if (!outfh)
-      {
-	free (newfilename);
-	fclose (lockfh);
-	free (lockfile);
-	return OATH_FILE_CREATE_ERROR;
-      }
+  /* On success, replace the usersfile with the new copy.
+   * This does not follow symlinks in the target, the target will always be
+   * replaced.
+   * */
+  if (renameat (ctx->parent_fd, newfilename, ctx->parent_fd, ctx->basename=
) !=3D 0) {
+    rc =3D OATH_FILE_RENAME_ERROR;
+    goto out;
   }
=20
-  /* Create the new usersfile content. */
-  rc =3D update_usersfile2 (username, otp, infh, outfh, lineptr, n,
-			  timestamp, new_moving_factor, skipped_users);
+  /* this name no longer exists now */
+  newfilename[0] =3D '\0';
=20
-  /* Preserve ownership of the new usersfile file */
-  {
-    struct stat insb;
+  /* make sure the directory is also synced such that directory inodes are=
 written out */
+  if (fsync(ctx->parent_fd) !=3D 0) {
+    rc =3D OATH_FILE_SYNC_ERROR;
+    goto out;
+  }
+
+out:
+  if (outfd >=3D 0)
+      close(outfd);
+  if (outfh)
+      fclose(outfh);
+  if (rc !=3D OATH_OK && newfilename[0])
+      unlinkat(ctx->parent_fd, newfilename, 0);
+  return rc;
+}
=20
-    if (rc =3D=3D OATH_OK && fstat (fileno (infh), &insb) =3D=3D -1)
-      rc =3D OATH_FILE_STAT_ERROR;
+static int
+oath_process_usersfile (struct usersfile_ctx *ctx,
+			     const char *username,
+			     const char *otp,
+			     size_t window,
+			     const char *passwd, time_t *last_otp)
+{
+  FILE *infh;
+  char *line =3D NULL;
+  size_t n =3D 0;
+  uint64_t new_moving_factor;
+  int rc;
+  size_t skipped_users;
=20
-    if (rc =3D=3D OATH_OK
-	&& fchown (fileno (outfh), insb.st_uid, insb.st_gid) !=3D 0)
-      rc =3D OATH_FILE_CHOWN_ERROR;
-  }
+  infh =3D fdopen (ctx->fd, "r");
+  if (infh =3D=3D NULL)
+    return OATH_FILE_OPEN_ERROR;
=20
-  /* On success, flush the buffers. */
-  if (rc =3D=3D OATH_OK && fflush (outfh) !=3D 0)
-    rc =3D OATH_FILE_FLUSH_ERROR;
+  /* ownership has been transferred to the FILE stream now */
+  ctx->fd =3D -1;
=20
-  /* On success, sync the disks. */
-  if (rc =3D=3D OATH_OK && fsync (fileno (outfh)) !=3D 0)
-    rc =3D OATH_FILE_SYNC_ERROR;
+  rc =3D parse_usersfile (username, otp, window, passwd, last_otp,
+			infh, &line, &n, &new_moving_factor, &skipped_users);
=20
-  /* Close the file regardless of success. */
-  if (fclose (outfh) !=3D 0)
-    rc =3D OATH_FILE_CLOSE_ERROR;
+  if (rc =3D=3D OATH_OK)
+    {
+      char timestamp[30];
+      size_t max =3D sizeof (timestamp);
+      struct tm now;
+      time_t t;
+      size_t l;
=20
-  /* On success, overwrite the usersfile with the new copy. */
-  if (rc =3D=3D OATH_OK && rename (newfilename, usersfile) !=3D 0)
-    rc =3D OATH_FILE_RENAME_ERROR;
+      if (time (&t) =3D=3D (time_t) - 1)
+        return OATH_TIME_ERROR;
=20
-  /* Something has failed, don't leave garbage lying around. */
-  if (rc !=3D OATH_OK)
-    unlink (newfilename);
+      if (localtime_r (&t, &now) =3D=3D NULL)
+        return OATH_TIME_ERROR;
=20
-  free (newfilename);
+      l =3D strftime (timestamp, max, TIME_FORMAT_STRING, &now);
+      if (l !=3D 20)
+        return OATH_TIME_ERROR;
=20
-  /* Complete, close the lockfile */
-  if (fclose (lockfh) !=3D 0)
-    rc =3D OATH_FILE_CLOSE_ERROR;
-  if (unlink (lockfile) !=3D 0)
-    rc =3D OATH_FILE_UNLINK_ERROR;
-  free (lockfile);
+      rc =3D update_usersfile (ctx, username, otp, infh,
+			     &line, &n, timestamp, new_moving_factor,
+			     skipped_users);
+    }
+
+  free (line);
+  fclose (infh);
=20
   return rc;
 }
=20
+/*
+ * Safely open `ctx->path`, filling all the other fields in `ctx` from it.=
 On
+ * error destroy_usersfile_ctx() is invoked for `ctx`.
+ *
+ * When operating with raised privileges we cannot know the ownership of
+ * `ctx->path` in advance, thus we need to carefully open the path. Any
+ * symbolic links in the path will be rejected for simplicity reasons.
+ *
+ * Every path element will be extracted step-by-step and opened by passing=
 the
+ * `O_PATH` flag. This is the safest approach which prevents any side effe=
cts
+ * that might result from opening e.g. FIFO special files, symlinks or dev=
ice
+ * files.
+ *
+ * Once the final path element has been reached and verified, the file
+ * descriptors have to be upgraded to regular ones without the `O_PATH`
+ * property, for being able to use them for regular file operations.
+ *
+ * NOTE: a similar result can be achieved by using openat2() and passing
+ * RESOLVE_NO_SYMLINKS, but the system call is not yet wrapped in Glibc, w=
hich
+ * makes it hard to use it.
+ */
+static int
+safe_open_usersfile (struct usersfile_ctx *ctx)
+{
+  int err =3D OATH_OK;
+
+  /* reject relative paths */
+  if (ctx->path[0] !=3D '/')
+    return OATH_FILE_OPEN_ERROR;
+
+  ctx->parent_fd =3D open("/", O_PATH|O_DIRECTORY|O_CLOEXEC|O_RDONLY);
+  if (ctx->parent_fd < 0)
+    return OATH_FILE_OPEN_ERROR;
+
+  char *path_start =3D strdup (ctx->path);
+  if (!path_start) {
+      err =3D OATH_MALLOC_ERROR;
+      goto out;
+  }
+
+  char *element =3D path_start;
+
+  while (true)
+    {
+      /* ignore any extra leading slashes */
+      while (element[0] =3D=3D '/')
+          element++;
+
+      /* end of path has been reached (trailing slashes? shouldn't really =
happen) */
+      if (!element[0])
+        {
+          err =3D OATH_FILE_OPEN_ERROR;
+          goto out;
+        }
+
+      char *sep =3D strpbrk(element, "/");
+
+      /* intermediate path (directory) element */
+      if (sep)
+        {
+          *sep =3D '\0';
+
+          ctx->fd =3D openat(ctx->parent_fd, element, O_RDONLY|O_PATH|O_CL=
OEXEC|O_NOFOLLOW|O_DIRECTORY);
+
+          if (ctx->fd < 0)
+            {
+              err =3D errno =3D=3D ENOENT ? OATH_NO_SUCH_FILE : OATH_FILE_=
OPEN_ERROR;
+              goto out;
+            }
+
+          if (fstat(ctx->fd, &ctx->st) !=3D 0)
+            {
+              err =3D OATH_FILE_STAT_ERROR;
+              goto out;
+            }
+
+          /* If we encounter any world-writable components, refuse the pat=
h.
+           * This prevents any unwise configurations like placing the file=
 into
+           * /var/tmp or a dedicated world-writable sticky-bit directory f=
rom
+           * working. */
+          if (ctx->st.st_mode & S_IWOTH)
+            {
+              err =3D OATH_FILE_OPEN_ERROR;
+              goto out;
+            }
+
+          close(ctx->parent_fd);
+          ctx->parent_fd =3D ctx->fd;
+          ctx->fd =3D -1;
+          element =3D sep + 1;
+        }
+      /* final path element has been encountered */
+      else
+        {
+          ctx->basename =3D ctx->path + (element - path_start);
+          err =3D finish_open_usersfile(ctx);
+          break;
+        }
+    }
+
+
+out:
+  if (err !=3D OATH_OK)
+    {
+      destroy_usersfile_ctx(ctx);
+    }
+  free (path_start);
+  return err;
+}
+
 /**
  * oath_authenticate_usersfile:
  * @usersfile: string with user credential filename, in UsersFile format
@@ -460,52 +885,69 @@ oath_authenticate_usersfile (const char *usersfile,
 			     size_t window,
 			     const char *passwd, time_t *last_otp)
 {
-  FILE *infh;
-  char *line =3D NULL;
-  size_t n =3D 0;
-  uint64_t new_moving_factor;
   int rc;
-  size_t skipped_users;
-
-  infh =3D fopen (usersfile, "r");
-  if (!infh)
-    return OATH_NO_SUCH_FILE;
-
-  rc =3D parse_usersfile (username, otp, window, passwd, last_otp,
-			infh, &line, &n, &new_moving_factor, &skipped_users);
-
-  if (rc =3D=3D OATH_OK)
+  struct usersfile_ctx ctx;
+  init_usersfile_ctx(&ctx, usersfile);
+
+  rc =3D safe_open_usersfile (&ctx);
+  if (rc < 0)
+    return rc;
+
+  /* if user is not root we cannot change credentials,
+     just run _oath_authenticate_usersfile normally in this case.
+     Similarly if the file is owned by root, we don't need to change
+     credentials. */
+  if (geteuid () !=3D 0 || ctx.st.st_uid =3D=3D 0)
     {
-      char timestamp[30];
-      size_t max =3D sizeof (timestamp);
-      struct tm now;
-      time_t t;
-      size_t l;
-      mode_t old_umask;
-
-      if (time (&t) =3D=3D (time_t) - 1)
-	return OATH_TIME_ERROR;
-
-      if (localtime_r (&t, &now) =3D=3D NULL)
-	return OATH_TIME_ERROR;
-
-      l =3D strftime (timestamp, max, TIME_FORMAT_STRING, &now);
-      if (l !=3D 20)
-	return OATH_TIME_ERROR;
-
-      old_umask =3D umask (~(S_IRUSR | S_IWUSR));
-
-      rc =3D update_usersfile (usersfile, username, otp, infh,
-			     &line, &n, timestamp, new_moving_factor,
-			     skipped_users);
-
-      umask (old_umask);
+        rc =3D oath_process_usersfile (&ctx, username, otp, window, passwd=
, last_otp);
+        destroy_usersfile_ctx(&ctx);
+        return rc;
     }
=20
-  free (line);
-  fclose (infh);
+  /* else spawn a new process so we can drop privileges to the owner of the
+   * file, to be on the safe side when operating in a directory owned by
+   * non-root. */
+  pid_t cpid =3D fork ();
+  if (cpid < 0)
+    {
+        destroy_usersfile_ctx(&ctx);
+        return OATH_FORK_ERROR;
+    }
=20
-  return rc;
+  if (cpid =3D=3D 0)
+    {
+      /* child */
+      if (setgid (ctx.st.st_gid) !=3D 0)
+        exit (abs(OATH_SETGID_ERROR));
+      if (setuid (ctx.st.st_uid) !=3D 0)
+        exit (abs(OATH_SETUID_ERROR));
+      rc =3D oath_process_usersfile (&ctx, username, otp, window, passwd, =
last_otp);
+      exit (abs(rc));
+    }
+  else
+    {
+      int status;
+      rc =3D waitpid (cpid, &status, 0);
+      if (rc < 0)
+        goto wait_out;
+
+      if (!WIFEXITED(status))
+        {
+            /* child exited abnormally */
+            rc =3D OATH_WAIT_ERROR;
+            goto wait_out;
+        }
+
+      const int exit_code =3D WEXITSTATUS(status);
+      rc =3D exit_code =3D=3D 0 ? OATH_OK : -exit_code;
+wait_out:
+      /*
+       * only destroy the ctx after the child exited, otherwise the lockfi=
le
+       * would be unlinked before the job is finished.
+       */
+      destroy_usersfile_ctx(&ctx);
+      return rc;
+    }
 }
=20
 #else /* _WIN32 */
--=20
2.44.2


--Yvbsp3N3v4sYggAt--

--4zoEil9ti5S17bAh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmb/vYAACgkQvCfdnSzE
/Wacjg//W/tJDjMW8vkcRTHNv1poNbo51zdCBPzghdSut8gFBsawcluzI7ZGdQDA
kntc3xr1mMqf+zn1HTQtd8bphWluhqV2GVRILs7el7cND76U8PZq3mMJPUARVq5M
sElkfffKYlvBH3YnaQKpLJ6cwaekA3HQLppt7kI/fLb1sKkAMcVtGjKill3s9nuw
c2TMcXLmXMMldQng8MR8RiRkAQZ6jn0lpahzEw3E5lqD3+9ZNqyq8zUb/s7dIzDC
TlemjXe6yRVcoMaWMjiC88Sq7fJJ5hruQwb+I65VvKE/Zx6Bjc1PHqzL2WJ9NtmR
HeXhAR1NMz/hPqtuCsYAn8lhc6CTQyx4kVo+12p17N33MV7mtc8VCH3WUkzg41zo
68MqPOz2V6Oyikn7vV6fFxAVkzmAnAiKLiZfNeEbRxdEnefTNdeSgOQtk/QvoY45
5OaE5C+upNemu5xiPkdNxarz6VDiMKXZ8ZYneOxw2czMfOyNr0MWFEGNj0sHO0hu
wo5y+NqVeP7mfh+//Uj0AK9iWqTmtNR5V86MfJ2YVOoaOXnvgTUDkzA3beqVVLm0
1FQqyD7V8yUJSq/rgkYh01auayIbiq9pNHuDqVvpwAqP7s2OxVmc7JWQkxLeSgVB
MDsDU4HiGFMxvAuA2mSdQKubzV1VZLKfEVPn+Xu3BGQiBFcrpUo=
=2WqW
-----END PGP SIGNATURE-----

--4zoEil9ti5S17bAh--

