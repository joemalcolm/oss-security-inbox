Received: (qmail 28208 invoked by uid 550); 29 Mar 2024 21:49:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3571 invoked from network); 29 Mar 2024 21:47:23 -0000
Date: Fri, 29 Mar 2024 22:46:15 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240329214615.GA2610@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ZgcL9VUx6CQ5Wx/W@weckbecker.name> <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 29, 2024 at 12:19:26PM -0700, Andres Freund wrote:
> On 2024-03-29 19:44:05 +0100, Matthias Weckbecker wrote:
> > I've attached a yara rule to detect the *.o droplet you attached in the
> > email (liblzma_la-crc64-fast.o.gz).
> 
> Unfortunately xz 5.61 added further obfuscations, making it harder to
> detect. Should have made it clearer that the attached .o was from 5.60. Among
> others 5.61 removed the two symbols you're checking against here.  That's why
> Vegard's script looks for a specific instructions sequence, but obviously is
> also more obscure :/

Andres, maybe you (or Florian or someone else) can post the .o file from
5.61 as well (gzipped just like the previous one, please)?

On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
> openssh does not directly use liblzma. However debian and several other
> distributions patch openssh to support systemd notification, and libsystemd
> does depend on lzma.

It is indeed a security risk that sshd on major distros brings in so
many libraries.  For example, on RHEL 9.x and its rebuilds, "ldd sshd"
is 28 lines.  In the Rocky Linux SIG/Security override package, we've so
far reduced this to 13 lines, which is still a lot:

https://sig-security.rocky.page/packages/openssh

For systemd notification, I patched it (half a year ago, so not in
response to these new findings) to dlopen() libsystemd into a new sshd
child process that's briefly spawned on sshd service startup or restart,
notifies systemd, and exits.  I could probably also drop privileges in
that child process, but so far I didn't bother.  I just didn't want
those libraries to stay in the process address space after startup.

Luckily, RHEL is not affected by the xz backdoor anyway, but if it were
I think these changes would just happen to have prevented the backdoor
from working.  Indeed, it's still bad code that could run as root (and
even if not in sshd, then in other services that use libsystemd), so it
could have as well e.g. modified sshd on disk, but its current way of
dynamically plugging into sshd authentication wouldn't work.

I've attached the patch, which applies on top of Red Hat's patches.  If
using it in a package, explicit dependency on libsystemd (or the package
that provides it) should be added to the (sub)package with sshd, e.g.:

Requires: systemd-libs

That's because the package manager would no longer automatically detect
the dependency, which is now a soft one.

I took this approach back then in order not to drop functionality, but
I'd re-think it now.  Perhaps systemd notification isn't worth even the
reduced risk, and should be dropped completely.  For the latter, an edit
to the systemd unit file is needed, changing "Type=notify" to
"Type=simple", which should fit "sshd -D".

Not only Red Hat'ish distros, but also Debian and Ubuntu are similar in
this respect, and I think should want to make similar changes.

Alexander

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssh-8.7p1-rocky-systemd.patch"

diff -urpx '*.m4' -x '*.in' -x configure openssh-8.7p1-rh-systemd/configure.ac openssh-8.7p1/configure.ac
--- openssh-8.7p1-rh-systemd/configure.ac	2023-08-28 11:56:19.955892400 +0000
+++ openssh-8.7p1/configure.ac	2023-08-28 12:29:38.678775780 +0000
@@ -4758,21 +4758,9 @@ SYSTEMD_MSG="no"
 AC_ARG_WITH(systemd,
 	[  --with-systemd          Enable systemd support],
 	[ if test "x$withval" != "xno" ; then
-		AC_PATH_TOOL([PKGCONFIG], [pkg-config], [no])
-		if test "$PKGCONFIG" != "no"; then
-			AC_MSG_CHECKING([for libsystemd])
-			if $PKGCONFIG --exists libsystemd; then
-				SYSTEMD_CFLAGS=`$PKGCONFIG --cflags libsystemd`
-				SYSTEMD_LIBS=`$PKGCONFIG --libs libsystemd`
-				CPPFLAGS="$CPPFLAGS $SYSTEMD_CFLAGS"
-				SSHDLIBS="$SSHDLIBS $SYSTEMD_LIBS"
-				AC_MSG_RESULT([yes])
-				AC_DEFINE(HAVE_SYSTEMD, 1, [Define if you want systemd support.])
-				SYSTEMD_MSG="yes"
-			else
-				AC_MSG_RESULT([no])
-			fi
-		fi
+		AC_MSG_RESULT([yes])
+		AC_DEFINE(HAVE_SYSTEMD, 1, [Define if you want systemd support.])
+		SYSTEMD_MSG="yes"
 	fi ]
 )
 
diff -urpx '*.m4' -x '*.in' -x configure openssh-8.7p1-rh-systemd/sshd.c openssh-8.7p1/sshd.c
--- openssh-8.7p1-rh-systemd/sshd.c	2023-08-28 11:56:19.957892327 +0000
+++ openssh-8.7p1/sshd.c	2023-08-28 12:53:52.070538125 +0000
@@ -86,7 +86,7 @@
 #endif
 
 #ifdef HAVE_SYSTEMD
-#include <systemd/sd-daemon.h>
+#include <dlfcn.h>
 #endif
 
 #include "xmalloc.h"
@@ -2076,7 +2076,20 @@ main(int ac, char **av)
 
 #ifdef HAVE_SYSTEMD
 		/* Signal systemd that we are ready to accept connections */
-		sd_notify(0, "READY=1");
+		if (!fork()) {
+			void *handle = dlopen("libsystemd.so.0", RTLD_LAZY);
+			if (handle) {
+				int (*sd_pid_notify)(pid_t pid, int unset_environment, const char *state);
+				*(void **)&sd_pid_notify = dlsym(handle, "sd_pid_notify");
+				if (sd_pid_notify)
+					sd_pid_notify(getppid(), 0, "READY=1");
+#if 0
+				/* Unnecessary due to fork/exit */
+				dlclose(handle);
+#endif
+			}
+			_exit(0);
+		}
 #endif
 
 		/* Accept a connection and return in a forked child */

--PEIAKu/WMn1b1Hv9--
