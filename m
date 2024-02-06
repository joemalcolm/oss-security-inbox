Received: (qmail 26398 invoked by uid 550); 6 Feb 2024 17:01:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24246 invoked from network); 6 Feb 2024 17:00:18 -0000
Date: Tue, 6 Feb 2024 18:01:42 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240206170142.GA2656@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2024-1048: grub2-set-bootflag may be abused to fill up /boot, bypass RLIMIT_NPROC

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Summary:

This message is about issues in grub-set-bootflag.c commonly installed
as grub2-set-bootflag, which is Red Hat's addition (not part of upstream
GRUB project) used at least in Fedora and RHEL and its downstreams.  It
is a SUID root program.  I think its latest development source code is
currently located in this branch:

https://github.com/rhboot/grub2/tree/fedora-40

On non-OSTree distros, this program's purpose appears to be purely
cosmetic - hide the boot menu if the system had already successfully
booted up with its current kernel and a user had successfully logged in.

Impact of the issues I identified (through my work at CIQ on Rocky
Linux) is rather limited - denial of service and resource limit bypass.

I pre-notified Red Hat grub2 package maintainers about upcoming issues
in this program in late December, and reported them in detail via Red
Hat Bugzilla on January 3:

https://bugzilla.redhat.com/show_bug.cgi?id=2256678

(This is currently a private "bug", hopefully it will be opened soon.)

I also reported this to linux-distros on January 24, and today February 6
is the coordinated public disclosure.

Attached are my currently proposed patches (two revisions, see below),
tested by me on Rocky Linux 9.3, and (for the later revision) also by
people at Red Hat.

Red Hat assigned this issue CVE-2024-1048 and rated it as CVSSv3.1 Base
Score 3.3 and Moderate severity, which I agree with:

CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L - 3.3

Technically, the RLIMIT_NPROC bypass could mean S:C A:H, resulting in a
score of 6.5, however in practice for this to matter the resource limits
would need to be set up, which by default and on most systems they are
not anyway.  That is, by default almost the same kind and extent of DoS
is possible by a simple "fork bomb" from the user's account, so there's
no additional vulnerability.

I'd like to thank Red Hat, and especially Marta Lewandowska for her help
in coordinating this disclosure and testing the patches.

Overall, I think that at least on Enterprise Linux distros unprivileged
setting of boot flags should be disabled by default.  It is of
questionable value and isn't worth the risk.  That said, I understand
that for now it may be easier for distros to patch than to re-think it.

Detail:

In 2019, Tavis Ormandy reported that the original implementation of
grub2-set-bootflag could be abused to truncate the grubenv file.  This
is CVE-2019-14865 and was fixed back then:

https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2019-14865
https://access.redhat.com/errata/RHSA-2020:0335

Taking a fresh look at grub2-set-bootflag, I saw some other ways in
which users could still abuse this little program:

1. After CVE-2019-14865 fix, grub2-set-bootflag no longer rewrites the
grubenv file in-place, but writes into a temporary file and renames it
over the original, checking for error returns from each call first.
This prevents the original file truncation vulnerability, but it can
leave the temporary file around if the program is killed before it can
rename or remove the file.  There are still many ways to get the program
killed, such as through RLIMIT_FSIZE triggering SIGXFSZ (tested,
reliable) or by careful timing (tricky) of signals sent by process group
leader, pty, pre-scheduled timers, SIGXCPU (probably not an exhaustive
list).  Invoking the program multiple times fills up /boot (or if /boot
is not separate, then it can fill up the root filesystem).  Since the
files are tiny, the filesystem is likely to run out of free inodes
before it'd run out of blocks, but the effect is similar - can't create
new files after this point (but still can add data to existing files,
such as logs).

2. After CVE-2019-14865 fix, grub2-set-bootflag naively tries to protect
itself from signals by becoming full root.  (This does protect it from
signals sent by the user directly to the PID, but e.g. "kill -9 -1" by
the user still works.)  A side effect of such "protection" is that it's
possible to invoke more concurrent instances of grub2-set-bootflag than
the user's RLIMIT_NPROC would normally permit (as specified e.g. in
/etc/security/limits.conf, or say in Apache httpd's RLimitNPROC if
grub2-set-bootflag would be abused by a website script), thereby
exhausting system resources (e.g., bypassing RAM usage limit if
RLIMIT_AS was also set).

3. umask is inherited.  Again, due to how the CVE-2019-14865 fix creates
a new file, and due to how mkstemp() works, this affects grubenv's new
file permissions.  Luckily, mkstemp() forces them to be no more relaxed
than 0600, but the user ends up being able to set them e.g. to 0.
Luckily, at least in my testing GRUB still works fine even when the file
has such (lack of) permissions.

The attached -1 patch deals with my example abuses above as follows:

1. RLIMIT_FSIZE is pre-checked, so this specific way to get the process
killed should no longer work.  However, this isn't a complete fix
because there are other ways to get the process killed after it has
created the temporary file.

The patch also fixes bug 1975892 ("RFE: grub2-set-bootflag should not
write the grubenv when the flag being written is already set") and
similar for "menu_show_once", which further reduces the abuse potential.

2. RLIMIT_NPROC bypass should be avoided by not becoming full root (aka
dropping the partial "kill protection").

3. A safe umask is set.

The -1 patch is a partial fix (temporary files can still accumulate, but
this is harder to trigger).  It should be safe to use.

The attached -7 patch additionally switches to usage of per-user fixed
temporary filenames along with a weird locking mechanism, which is
explained in source code comments.  This is a more complete fix
(temporary files can't accumulate).  Unfortunately, it introduces new
risks (by working on a temporary file shared between the user's
invocations), which are _hopefully_ avoided by the patch's elaborate
logic.  I actually got it wrong at first, which suggests that this logic
is hard to reason about, and more errors or omissions are possible.  It
also relies on the kernel's primitives' exact semantics to a greater
extent (nothing out of the ordinary, though).

Both patches also fix potential 1- or 2-byte over-read of env[] if its
content is malformed - this was not a security issue since the grubenv
file is trusted input, and the fix is just for robustness.

Also attached is a program I wrote and used to test the unusual approach
to locking implemented in the -7 patch here.

Remaining issues that I think cannot reasonably be fixed without a
redesign (e.g., having per-flag files with nothing else in them) and
without introducing new issues:

A. A user can still revert a concurrent user's attempt of setting the
other flag - or of making other changes to grubenv by means other than
this program.

B. One leftover temporary file per user is still possible.

Needs comments by people more familiar with GRUB and its configurations
in use:

C. One hopefully non-issue (but I am not sure): can "menu_show_once"
possibly make the system stuck at next boot?  Apparently, not with
defaults, but maybe along with other GRUB settings in place?  If so, it
could be unsafe to expose setting this flag to users.  A misfeature?

Security hardening not yet implemented (would require changes or at
least decisions outside of this program's code):

D. If this program's functionality is really desirable anywhere at all,
perhaps its availability should vary by distro - e.g., have it on (some
builds of) Fedora, but not on Enterprise Linux distros - and then don't
make this program SUID root where that is not needed.

E. The program could refuse to work (exit early) if invoked by an
unexpected system pseudo-user.  Apparently, it's expected to be invoked
by all normal users, but we can nevertheless disallow uid < 1000, so the
program couldn't be abused by a compromised system pseudo-user account
in a multi-vulnerability multi-step attack.

F. grubenv could be made a symlink into a subdirectory writable by a
group, then SGID to that group could be used, mostly to reduce impact of
some other (yet unidentified) vulnerabilities/attacks on the program.

Regarding remaining issue/idea D above, even RHEL installs
/usr/lib/systemd/user/grub-boot-success.service, which then fails to run
upon user login when the program is not user-accessible.  The impact
from this failure, however, appears to be very limited - just some noise
in the logs.  The -7 patch includes a piece to reduce such noise if the
program is installed e.g. mode 755.

Overall, my understanding is that the program (and other related parts
using the boot success flag) is most useful on systems with OSTree,
which means some builds of Fedora, right?  Per Wikipedia it's "Fedora's
atomic spins (Silverblue, Kinoite, and Sericea)".
https://en.wikipedia.org/wiki/OSTree

Should we get rid of it on other distros?  Or on the contrary, should we
make real, non-cosmetic use of the boot flag?  If not setting the flag
would trigger automatic fallback to the previous kernel, that could be a
valuable enough feature to justify some risks, but on the other hand
such fallback would also be unexpected by many and it'd be a security
concern on its own.  A server could successfully boot into the new
kernel and be in use without any Unix user logins to it occurring until
next reboot.  It shouldn't then revert to the old kernel just because no
one had logged in.  So the feature would need to be opt-in by the
sysadmin or/and the criteria for fallback would need to be different.

Alexander

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="grub-set-bootflag-rocky-1.patch"

diff --git a/util/grub-set-bootflag.c b/util/grub-set-bootflag.c
index 3b4c25ca2..5bbbef804 100644
--- a/util/grub-set-bootflag.c
+++ b/util/grub-set-bootflag.c
@@ -33,6 +33,8 @@
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
+#include <sys/stat.h>
+#include <sys/resource.h>
 
 #include "progname.h"
 
@@ -57,12 +59,17 @@ static void usage(FILE *out)
 int main(int argc, char *argv[])
 {
   /* NOTE buf must be at least the longest bootflag length + 4 bytes */
-  char env[GRUBENV_SIZE + 1], buf[64], *s;
+  char env[GRUBENV_SIZE + 1 + 2], buf[64], *s;
   /* +1 for 0 termination, +6 for "XXXXXX" in tmp filename */
   char env_filename[PATH_MAX + 1], tmp_filename[PATH_MAX + 6 + 1];
   const char *bootflag;
   int i, fd, len, ret;
   FILE *f;
+  struct rlimit rlim;
+
+  if (getrlimit(RLIMIT_FSIZE, &rlim) || rlim.rlim_cur < GRUBENV_SIZE || rlim.rlim_max < GRUBENV_SIZE)
+    return 1;
+  umask(077);
 
   if (argc != 2)
     {
@@ -94,20 +101,11 @@ int main(int argc, char *argv[])
   len = strlen (bootflag);
 
   /*
-   * Really become root. setuid avoids an user killing us, possibly leaking
-   * the tmpfile. setgid avoids the new grubenv's gid being that of the user.
+   * setegid avoids the new grubenv's gid being that of the user.
    */
-  ret = setuid(0);
-  if (ret)
-    {
-      perror ("Error setuid(0) failed");
-      return 1;
-    }
-
-  ret = setgid(0);
-  if (ret)
+  if (setegid(0))
     {
-      perror ("Error setgid(0) failed");
+      perror ("Error setegid(0) failed");
       return 1;
     }
 
@@ -136,6 +134,9 @@ int main(int argc, char *argv[])
 
   /* 0 terminate env */
   env[GRUBENV_SIZE] = 0;
+  /* not a valid flag value */
+  env[GRUBENV_SIZE + 1] = 0;
+  env[GRUBENV_SIZE + 2] = 0;
 
   if (strncmp (env, GRUB_ENVBLK_SIGNATURE, strlen (GRUB_ENVBLK_SIGNATURE)))
     {
@@ -171,6 +172,8 @@ int main(int argc, char *argv[])
 
   /* The grubenv is not 0 terminated, so memcpy the name + '=' , '1', '\n' */
   snprintf(buf, sizeof(buf), "%s=1\n", bootflag);
+  if (!memcmp(s, buf, len + 3))
+    return 0; /* nothing to do */
   memcpy(s, buf, len + 3);
 
 

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="grub-set-bootflag-rocky-7.patch"

diff --git a/util/grub-set-bootflag.c b/util/grub-set-bootflag.c
index 3b4c25ca2..31a868aec 100644
--- a/util/grub-set-bootflag.c
+++ b/util/grub-set-bootflag.c
@@ -33,6 +33,9 @@
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
+#include <sys/file.h>
+#include <sys/stat.h>
+#include <sys/resource.h>
 
 #include "progname.h"
 
@@ -57,13 +60,15 @@ static void usage(FILE *out)
 int main(int argc, char *argv[])
 {
   /* NOTE buf must be at least the longest bootflag length + 4 bytes */
-  char env[GRUBENV_SIZE + 1], buf[64], *s;
-  /* +1 for 0 termination, +6 for "XXXXXX" in tmp filename */
-  char env_filename[PATH_MAX + 1], tmp_filename[PATH_MAX + 6 + 1];
+  char env[GRUBENV_SIZE + 1 + 2], buf[64], *s;
+  /* +1 for 0 termination, +11 for ".%u" in tmp filename */
+  char env_filename[PATH_MAX + 1], tmp_filename[PATH_MAX + 11 + 1];
   const char *bootflag;
   int i, fd, len, ret;
   FILE *f;
 
+  umask(077);
+
   if (argc != 2)
     {
       usage (stderr);
@@ -94,20 +99,22 @@ int main(int argc, char *argv[])
   len = strlen (bootflag);
 
   /*
-   * Really become root. setuid avoids an user killing us, possibly leaking
-   * the tmpfile. setgid avoids the new grubenv's gid being that of the user.
+   * Exit calmly when not installed SUID root and invoked by non-root.  This
+   * allows installing user/grub-boot-success.service unconditionally while
+   * supporting non-SUID installation of the program for some limited usage.
    */
-  ret = setuid(0);
-  if (ret)
+  if (geteuid())
     {
-      perror ("Error setuid(0) failed");
-      return 1;
+      printf ("grub-set-bootflag not running as root, no action taken\n");
+      return 0;
     }
 
-  ret = setgid(0);
-  if (ret)
+  /*
+   * setegid avoids the new grubenv's gid being that of the user.
+   */
+  if (setegid(0))
     {
-      perror ("Error setgid(0) failed");
+      perror ("setegid(0) failed");
       return 1;
     }
 
@@ -136,6 +143,9 @@ int main(int argc, char *argv[])
 
   /* 0 terminate env */
   env[GRUBENV_SIZE] = 0;
+  /* not a valid flag value */
+  env[GRUBENV_SIZE + 1] = 0;
+  env[GRUBENV_SIZE + 2] = 0;
 
   if (strncmp (env, GRUB_ENVBLK_SIGNATURE, strlen (GRUB_ENVBLK_SIGNATURE)))
     {
@@ -171,21 +181,86 @@ int main(int argc, char *argv[])
 
   /* The grubenv is not 0 terminated, so memcpy the name + '=' , '1', '\n' */
   snprintf(buf, sizeof(buf), "%s=1\n", bootflag);
+  if (!memcmp(s, buf, len + 3))
+    return 0; /* nothing to do */
   memcpy(s, buf, len + 3);
 
+  struct rlimit rlim;
+  if (getrlimit(RLIMIT_FSIZE, &rlim) || rlim.rlim_cur < GRUBENV_SIZE || rlim.rlim_max < GRUBENV_SIZE)
+    {
+      fprintf (stderr, "Resource limits undetermined or too low\n");
+      return 1;
+    }
+
+  /*
+   * Here we work under the premise that we shouldn't write into the target
+   * file directly because we might not be able to have all of our changes
+   * written completely and atomically.  That was CVE-2019-14865, known to
+   * have been triggerable via RLIMIT_FSIZE.  While we've dealt with that
+   * specific attack via the check above, there may be other possibilities.
+   */
 
   /*
    * Create a tempfile for writing the new env.  Use the canonicalized filename
    * for the template so that the tmpfile is in the same dir / on same fs.
+   *
+   * We now use per-user fixed temporary filenames, so that a user cannot cause
+   * multiple files to accumulate.
+   *
+   * We don't use O_EXCL so that a stale temporary file doesn't prevent further
+   * usage of the program by the user.
    */
-  snprintf(tmp_filename, sizeof(tmp_filename), "%sXXXXXX", env_filename);
-  fd = mkstemp(tmp_filename);
+  snprintf(tmp_filename, sizeof(tmp_filename), "%s.%u", env_filename, getuid());
+  fd = open(tmp_filename, O_CREAT | O_WRONLY, 0600);
   if (fd == -1)
     {
       perror ("Creating tmpfile failed");
       return 1;
     }
 
+  /*
+   * The lock prevents the same user from reaching further steps ending in
+   * rename() concurrently, in which case the temporary file only partially
+   * written by one invocation could be renamed to the target file by another.
+   *
+   * The lock also guards the slow fsync() from concurrent calls.  After the
+   * first time that and the rename() complete, further invocations for the
+   * same flag become no-ops.
+   *
+   * We lock the temporary file rather than the target file because locking the
+   * latter would allow any user having SIGSTOP'ed their process to make all
+   * other users' invocations fail (or lock up if we'd use blocking mode).
+   *
+   * We use non-blocking mode (LOCK_NB) because the lock having been taken by
+   * another process implies that the other process would normally have already
+   * renamed the file to target by the time it releases the lock (and we could
+   * acquire it), so we'd be working directly on the target if we proceeded,
+   * which is undesirable, and we'd kind of fail on the already-done rename.
+   */
+  if (flock(fd, LOCK_EX | LOCK_NB))
+    {
+      perror ("Locking tmpfile failed");
+      return 1;
+    }
+
+  /*
+   * Deal with the potential that another invocation proceeded all the way to
+   * rename() and process exit while we were between open() and flock().
+   */
+  {
+    struct stat st1, st2;
+    if (fstat(fd, &st1) || stat(tmp_filename, &st2))
+      {
+        perror ("stat of tmpfile failed");
+        return 1;
+      }
+    if (st1.st_dev != st2.st_dev || st1.st_ino != st2.st_ino)
+      {
+        fprintf (stderr, "Another invocation won race\n");
+        return 1;
+      }
+  }
+
   f = fdopen (fd, "w");
   if (!f)
     {
@@ -210,23 +285,25 @@ int main(int argc, char *argv[])
       return 1;     
     }
 
-  ret = fsync (fileno (f));
+  ret = ftruncate (fileno (f), GRUBENV_SIZE);
   if (ret)
     {
-      perror ("Error syncing tmpfile");
+      perror ("Error truncating tmpfile");
       unlink(tmp_filename);
       return 1;
     }
 
-  ret = fclose (f);
+  ret = fsync (fileno (f));
   if (ret)
     {
-      perror ("Error closing tmpfile");
+      perror ("Error syncing tmpfile");
       unlink(tmp_filename);
       return 1;
     }
 
   /*
+   * We must not close the file before rename() as that would remove the lock.
+   *
    * And finally rename the tmpfile with the new env over the old env, the
    * linux kernel guarantees that this is atomic (from a syscall pov).
    */

--sm4nu43k4a2Rpi4c
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="locktest.c"

/*
 * Example usage in 3 terminals:
 * while :; do ./locktest; done
 * while :; do ./locktest; done
 * cd /dev/shm/locktest && while :; do od -tx1 target | grep 78; done
 * The latter command shouldn't detect any 78's, but it does with any of:
 * - flock() removed
 * - fstat() vs. stat() comparison removed
 * - close(fd); before the rename()
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/fcntl.h>
#include <sys/file.h>
#include <sys/stat.h>

#define PATH "/dev/shm/locktest"
#define TARGET_FILE PATH "/target"
#define TMP_FILE PATH "/tmp"

int main(int argc, char **argv)
{
	char tmp_filename[1024];
	int uid = argc > 1 ? atoi(argv[1]) : 0;
	snprintf(tmp_filename, sizeof(tmp_filename), "%s.%u", TMP_FILE, uid);

	srandom(getpid());

	if (mkdir(PATH, 0700) && errno != EEXIST) {
		perror("mkdir");
		return 1;
	}

	int fd = open(tmp_filename, O_CREAT | O_WRONLY, 0600);
	if (fd == -1) {
		perror("open");
		return 1;
	}

	usleep(random() & 0x3fff);

	if (flock(fd, LOCK_EX | LOCK_NB)) {
		perror("flock");
		return 1;
	}

	struct stat st1, st2;
	if (fstat(fd, &st1) || stat(tmp_filename, &st2)) {
		perror("[f]stat");
		/* unlink(tmp_filename); Probably already gone, but may have been recreated just now */
		return 1;
	}
	if (st1.st_dev != st2.st_dev || st1.st_ino != st2.st_ino) {
		fprintf(stderr, "Another invocation won race\n");
		return 1;
	}

	usleep(random() & 0x3fff);

	char buf[1024];
	memset(buf, 'x', sizeof(buf));
	if (write(fd, buf, sizeof(buf)) != sizeof(buf)) {
		fprintf(stderr, "Partial write\n");
		unlink(tmp_filename);
		return 1;
	}

	if (fsync(fd)) {
		perror("fsync");
		unlink(tmp_filename);
		return 1;
	}

	if ((random() & 0x1f) == 0) {
		fprintf(stderr, "Fault injection\n");
		unlink(tmp_filename);
		return 1;
	}

	usleep(random() & 0x3fff);

	if (lseek(fd, 0, SEEK_SET)) {
		perror("lseek");
		unlink(tmp_filename);
		return 1;
	}

	memset(buf, 'a', sizeof(buf));
	if (write(fd, buf, sizeof(buf)) != sizeof(buf)) {
		fprintf(stderr, "Partial write\n");
		unlink(tmp_filename);
		return 1;
	}

	if (fsync(fd)) {
		perror("fsync");
		unlink(tmp_filename);
		return 1;
	}

/* Don't!
	close(fd);
*/

	usleep(random() & 0x3fff);

	if (rename(tmp_filename, TARGET_FILE)) {
		perror("rename");
		unlink(tmp_filename);
		return 1;
	}

	return 0;
}

--sm4nu43k4a2Rpi4c--
