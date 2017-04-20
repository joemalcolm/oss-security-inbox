X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10856" "Thursday" "20" "April" "2017" "10:41:05" "+0200" "Guillem Jover" "guillem@debian.org" "<20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>" "307" "[oss-security] Directory traversal in dpkg-source via indented patches on non-GNU systems" nil nil nil "4" "2017042008:41:05" "[oss-security] Directory traversal in dpkg-source via indented patches on non-GNU systems" (number mark "U       guillem@debi Apr 20  307/10856 " thread-indent "\"[oss-security] Directory traversal in dpkg-source via indented patches on non-GNU systems\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27992 invoked by uid 550); 20 Apr 2017 10:43:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5633 invoked from network); 20 Apr 2017 08:41:24 -0000
Date: Thu, 20 Apr 2017 10:41:05 +0200
From: Guillem Jover <guillem@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bpz27bg76smt3gjr"
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] Directory traversal in dpkg-source via indented patches on non-GNU
 systems

--bpz27bg76smt3gjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

Recently, while going through the POSIX standard to check for some
other stuff related to the patch(1) format, I realized that indented
patches are also accepted, which is something the Dpkg::Source::Patch
perl module is not checking, so any of the sanity checks against
directory traveral attacks can be avoided through indenting.

Of course on Debian and other distributions using GNU patch >= 1.7.5,
this is not a concern anymore, as this implementation should be
directory traversal resistant.

But on systems such as the BSDs, with their own patch(1) variant,
this is effective. And while this could (and should in addition be
considered) a problem with those patch implementations, dpkg-source
has always assumed uncooperating underlaying implementations so this
is something it should probably protect against one way or another.

This issue shows up when unpacking a Debian source package for
examination, but then on those non-GNU systems, usage of patch(1)
is unsafe, so I'm not sure how sever this should be considered.

I've got a test case (attached) that fails (the attack is successful) on
at least NetBSD (not tried others), but they share a similar patch(1)
codebase.

And I started adding support for indented patches so thah the checks
would apply, or to just reject them (as a query on codesearch.debian.net)
didn't trigger any instance of such patches in Debian (which would make
them not able to be unpacked if we reject them). But I'm considering the
shorter and more strightforward solution of just requiring GNU patch at
configure time for now. Which is what I'm attaching here as the fix
I'm planning to merge for dpkg 1.18.24.

Given tha above, does this deserve a CVE? At least we have gotten ones
for similar issues in the past.

Thanks,
Guillem

--bpz27bg76smt3gjr
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-Dpkg-Source-Patch-Indented-patch-test-case.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 08e07ecbef2e1ebdcaaed7a9c90e10eacbc210a8 Mon Sep 17 00:00:00 2001
From: Guillem Jover <guillem@debian.org>
Date: Sun, 19 Mar 2017 19:40:14 +0100
Subject: [PATCH] Dpkg::Source::Patch: Indented patch test-case

POSIX specifies that a diff hunk can be indented by spaces or tabs
(while the original patch(1) by Larry Wall also accepts 'X'), as long
as the amount of spaces is consisten for all subsequent lines. And as
we are not checking for this condition at all, any such indented hunk
can avoid the sanity checks performed by Dpkg::Source::Patch.

On systems using GNU patch >=3D 2.7.5, this should, in principle, not be
a problem anymore, as that implementation protects against directory
traversal issue. But on other systems where the patch implementation
does not perform such checks (such as the BSDs) this is an issue, so
check for this in the test-suite.

Those are arguably all security issues in these various patch
implementations, but given that we are performing sanity checks and that
those implementations are currently very lax, it seems prudent to do the
heavy lifting ourselves and also take the possible blame too.

Fixes: CVE-2017-XXXX
---
 scripts/t/Dpkg_Source_Patch.t                   | 6 +++++-
 scripts/t/Dpkg_Source_Patch/indent-header.patch | 9 +++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 scripts/t/Dpkg_Source_Patch/indent-header.patch

diff --git a/scripts/t/Dpkg_Source_Patch.t b/scripts/t/Dpkg_Source_Patch.t
index 8f382f546..938f98ebb 100644
--- a/scripts/t/Dpkg_Source_Patch.t
+++ b/scripts/t/Dpkg_Source_Patch.t
@@ -16,7 +16,7 @@
 use strict;
 use warnings;
=20
-use Test::More tests =3D> 9;
+use Test::More tests =3D> 10;
 use Test::Dpkg qw(:paths);
=20
 use File::Path qw(make_path);
@@ -67,4 +67,8 @@ test_patch_escape('partial', 'symlink', 'partial.patch',
 test_patch_escape('ghost-hunk', 'symlink', 'ghost-hunk.patch',
                   'Patch cannot escape using a disabling hunk');
=20
+# This is CVE-2017-XXXX
+test_patch_escape('indent-header', 'symlink', 'indent-header.patch',
+                  'Patch cannot escape indented hunks');
+
 1;
diff --git a/scripts/t/Dpkg_Source_Patch/indent-header.patch b/scripts/t/Dp=
kg_Source_Patch/indent-header.patch
new file mode 100644
index 000000000..4bef00829
--- /dev/null
+++ b/scripts/t/Dpkg_Source_Patch/indent-header.patch
@@ -0,0 +1,9 @@
+  --- /dev/null
+  +++ b/symlink/index-file
+  @@ -0,0 +1,1 @@
+  +Escaped
+
+--- /dev/null
++++ b/dummy-file
+@@ -0,0 +1,1 @@
++Dummy to make the code see a valid hunk
--=20
2.12.2.762.g0e3151a226


--bpz27bg76smt3gjr
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-build-Detect-the-required-GNU-patch.patch"
Content-Transfer-Encoding: quoted-printable

=46rom e1dcc2f0c02a31d12d2455e4ce457ff426b6c6fe Mon Sep 17 00:00:00 2001
From: Guillem Jover <guillem@debian.org>
Date: Tue, 28 Mar 2017 22:44:36 +0200
Subject: [PATCH] build: Detect the required GNU patch

This makes sure the perl module is using a directory traversal resistant
patch implementation, currently that's only GNU patch.
---
 configure.ac                 |  1 +
 m4/dpkg-progs.m4             | 21 +++++++++++++++++++++
 scripts/Dpkg.pm              | 13 ++++++++++++-
 scripts/Dpkg/Source/Patch.pm |  9 +++++----
 scripts/Makefile.am          |  2 ++
 5 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/configure.ac b/configure.ac
index d5075509c..87c1e9d09 100644
--- a/configure.ac
+++ b/configure.ac
@@ -66,6 +66,7 @@ AC_PROG_CC
 DPKG_C_C99
 AC_PROG_CXX
 DPKG_CXX_CXX11
+DPKG_PROG_PATCH
 AC_CHECK_PROGS([DOXYGEN], [doxygen])
 AC_CHECK_PROG([HAVE_DOT], [dot], [YES], [NO])
 DPKG_PROG_PO4A
diff --git a/m4/dpkg-progs.m4 b/m4/dpkg-progs.m4
index f4a0b5b3a..3a0a8478f 100644
--- a/m4/dpkg-progs.m4
+++ b/m4/dpkg-progs.m4
@@ -70,3 +70,24 @@ AC_DEFUN([DPKG_DEB_PROG_TAR], [
   AC_SUBST([TAR], [$ac_cv_path_TAR])
   AC_DEFINE_UNQUOTED([TAR], ["$TAR"], [GNU tar program])
 ])# DPKG_DEB_PROG_TAR
+
+# DPKG_PROG_PATCH
+# ---------------
+# Specify GNU patch program name to use by dpkg-source. On GNU systems this
+# is usually simply patch, on BSD systems this is usually gpatch.
+# Even though most invocations would work with other patch implementations,
+# currently only GNU patch is directory traversal resitant.
+AC_DEFUN([DPKG_PROG_PATCH], [
+  AC_ARG_VAR([PATCH], [GNU patch program])
+  AC_CACHE_CHECK([for GNU patch], [ac_cv_path_PATCH], [
+    AC_PATH_PROGS_FEATURE_CHECK([PATCH], [gpatch patch], [
+      AS_IF([$ac_path_PATCH --version 2>/dev/null | grep -q '^GNU patch'],=
 [
+        ac_cv_path_PATCH=3D$ac_path_PATCH ac_path_PATCH_found=3D:
+      ])
+    ], [
+      AC_MSG_ERROR([cannot find a GNU patch program])
+    ])
+  ])
+  AC_SUBST([PATCH], [$ac_cv_path_PATCH])
+  AC_DEFINE_UNQUOTED([PATCH], ["$PATCH"], [GNU patch program])
+])# DPKG_PROG_PATCH
diff --git a/scripts/Dpkg.pm b/scripts/Dpkg.pm
index 1b9624c4d..3deb933f9 100644
--- a/scripts/Dpkg.pm
+++ b/scripts/Dpkg.pm
@@ -29,12 +29,13 @@ this system installation.
 use strict;
 use warnings;
=20
-our $VERSION =3D '1.02';
+our $VERSION =3D '1.03';
 our @EXPORT_OK =3D qw(
     $PROGNAME
     $PROGVERSION
     $PROGMAKE
     $PROGTAR
+    $PROGPATCH
     $CONFDIR
     $ADMINDIR
     $LIBDIR
@@ -70,6 +71,11 @@ Contains the name of the system GNU make program.
=20
 Contains the name of the system GNU tar program.
=20
+=3Ditem $Dpkg::PROGPATCH
+
+Contains the name of the system GNU patch program (or another implementati=
on
+that is directory traversal resistant).
+
 =3Ditem $Dpkg::CONFDIR
=20
 Contains the path to the dpkg system configuration directory.
@@ -96,6 +102,7 @@ our ($PROGNAME) =3D $0 =3D~ m{(?:.*/)?([^/]*)};
 our $PROGVERSION =3D '1.18.x';
 our $PROGMAKE =3D $ENV{DPKG_PROGMAKE} // 'make';
 our $PROGTAR =3D $ENV{DPKG_PROGTAR} // 'tar';
+our $PROGPATCH =3D $ENV{DPKG_PROGPATCH} // 'patch';
=20
 our $CONFDIR =3D '/etc/dpkg';
 our $ADMINDIR =3D '/var/lib/dpkg';
@@ -114,6 +121,10 @@ our $pkgdatadir =3D $DATADIR;
=20
 =3Dhead1 CHANGES
=20
+=3Dhead2 Version 1.03 (dpkg 1.18.24)
+
+New variable: $PROGPATCH.
+
 =3Dhead2 Version 1.02 (dpkg 1.18.11)
=20
 New variable: $PROGTAR, $PROGMAKE.
diff --git a/scripts/Dpkg/Source/Patch.pm b/scripts/Dpkg/Source/Patch.pm
index ee5e114f8..22e9d213d 100644
--- a/scripts/Dpkg/Source/Patch.pm
+++ b/scripts/Dpkg/Source/Patch.pm
@@ -30,6 +30,7 @@ use File::Compare;
 use Fcntl ':mode';
 use Time::HiRes qw(stat);
=20
+use Dpkg;
 use Dpkg::Gettext;
 use Dpkg::ErrorHandling;
 use Dpkg::IPC;
@@ -582,7 +583,7 @@ sub apply {
     $self->ensure_open('r');
     my ($stdout, $stderr) =3D ('', '');
     spawn(
-	exec =3D> [ 'patch', @{$opts{options}} ],
+	exec =3D> [ $Dpkg::PROGPATCH, @{$opts{options}} ],
 	chdir =3D> $destdir,
 	env =3D> { LC_ALL =3D> 'C', LANG =3D> 'C', PATCH_GET =3D> '0' },
 	delete_env =3D> [ 'POSIXLY_CORRECT' ], # ensure expected patch behaviour
@@ -595,7 +596,7 @@ sub apply {
     if ($?) {
 	print { *STDOUT } $stdout;
 	print { *STDERR } $stderr;
-	subprocerr('LC_ALL=3DC patch ' . join(' ', @{$opts{options}}) .
+	subprocerr("LC_ALL=3DC $Dpkg::PROGPATCH " . join(' ', @{$opts{options}}) .
 	           ' < ' . $self->get_filename());
     }
     $self->close();
@@ -632,7 +633,7 @@ sub check_apply {
     # Apply the patch
     $self->ensure_open('r');
     my $patch_pid =3D spawn(
-	exec =3D> [ 'patch', @{$opts{options}} ],
+	exec =3D> [ $Dpkg::PROGPATCH, @{$opts{options}} ],
 	chdir =3D> $destdir,
 	env =3D> { LC_ALL =3D> 'C', LANG =3D> 'C', PATCH_GET =3D> '0' },
 	delete_env =3D> [ 'POSIXLY_CORRECT' ], # ensure expected patch behaviour
@@ -642,7 +643,7 @@ sub check_apply {
     );
     wait_child($patch_pid, nocheck =3D> 1);
     my $exit =3D WEXITSTATUS($?);
-    subprocerr('patch --dry-run') unless WIFEXITED($?);
+    subprocerr("$Dpkg::PROGPATCH --dry-run") unless WIFEXITED($?);
     $self->close();
     return ($exit =3D=3D 0);
 }
diff --git a/scripts/Makefile.am b/scripts/Makefile.am
index 5583fa960..54a83c044 100644
--- a/scripts/Makefile.am
+++ b/scripts/Makefile.am
@@ -132,6 +132,7 @@ do_perl_subst =3D $(AM_V_GEN) sed \
 	-e "s:our \$$DATADIR =3D .*;:our \$$DATADIR =3D '$(pkgdatadir)';:" \
 	-e "s:our \$$PROGMAKE =3D .*;:our \$$PROGMAKE =3D '$(MAKE)';:" \
 	-e "s:our \$$PROGTAR =3D .*;:our \$$PROGTAR =3D '$(TAR)';:" \
+	-e "s:our \$$PROGPATCH =3D .*;:our \$$PROGPATCH =3D '$(PATCH)';:" \
 	-e "s:our \$$PROGVERSION =3D .*;:our \$$PROGVERSION =3D '$(PACKAGE_VERSIO=
N)';:"
=20
 do_shell_subst =3D $(AM_V_GEN) sed \
@@ -193,6 +194,7 @@ coverage-clean:
=20
 TEST_ENV_VARS =3D \
 	DPKG_PROGTAR=3D$(TAR) \
+	DPKG_PROGPATCH=3D$(PATCH) \
 	DPKG_PROGMAKE=3D$(MAKE) \
 	DPKG_DATADIR=3D$(top_srcdir)/data \
 	DPKG_ORIGINS_DIR=3D$(srcdir)/t/origins
--=20
2.12.2.762.g0e3151a226


--bpz27bg76smt3gjr--
