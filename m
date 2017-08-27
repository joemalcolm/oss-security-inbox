X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11081" "Sunday" "27" "August" "2017" "19:14:49" "+0200" "Florent Rougon" "f.rougon@free.fr" "<8760d9nd9y.fsf@frougon.crabdance.com>" "331" "[oss-security] CVE-2017-13709: Incorrect access control in FlightGear" nil nil nil "8" "2017082717:14:49" "[oss-security] CVE-2017-13709: Incorrect access control in FlightGear" (number mark "U       f.rougon@fre Aug 27  331/11081 " thread-indent "\"[oss-security] CVE-2017-13709: Incorrect access control in FlightGear\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24218 invoked by uid 550); 27 Aug 2017 17:41:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32491 invoked from network); 27 Aug 2017 17:15:09 -0000
From: Florent Rougon <f.rougon@free.fr>
To: oss-security@lists.openwall.com
Mail-Followup-To: oss-security@lists.openwall.com
Date: Sun, 27 Aug 2017 19:14:49 +0200
Message-ID: <8760d9nd9y.fsf@frougon.crabdance.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: [oss-security] CVE-2017-13709: Incorrect access control in FlightGear

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

Please find below the info for CVE-2017-13709. I'm also attaching a
patch combining the security fix applied to FlightGear's 'next'
branch[1] with its parent commit[2], because [1] requires [2] to work
properly.

However, I don't expect the combined patch nor [2] to apply cleanly to
FlightGear 2017.2 or earlier, because commit [3] introduced changes in
the close vicinity of the changes in [2] (two conflicts). If you need to
adapt [2] for such releases, just put the fgInitAllowedPaths() call
after the one to Options::processOptions() in src/Main/fg_init.cxx[4] and
src/Main/main.cxx[5], and you should be good.

I will probably backport the needed changes to a few of the last
releases in the next days: see the FlightGear release branches at [6].

[1] https://sourceforge.net/p/flightgear/flightgear/ci/2a5e3d06b2c0d9f83106=
3afe7e7260bca456d679/
[2] https://sourceforge.net/p/flightgear/flightgear/ci/c7a2aef59979af3e9ff2=
2daabb37bdaadb91cd75/
[3] https://sourceforge.net/p/flightgear/flightgear/ci/b2cc191bc665d13f5036=
0e5508234e653669a372/
[4] https://sourceforge.net/p/flightgear/flightgear/ci/next/tree/src/Main/f=
g_init.cxx#l1147
[5] https://sourceforge.net/p/flightgear/flightgear/ci/next/tree/src/Main/m=
ain.cxx#l543
[6] https://sourceforge.net/p/flightgear/flightgear/ref/next/branches/

Now here is the info for CVE-2017-13709:

[Suggested description]
In FlightGear before version 2017.3.1, Main/logger.cxx in the FGLogger
subsystem allows one to overwrite any file via a resource that affects
the contents of the global Property Tree.

------------------------------------------

[Additional Information]
In FlightGear before version 2017.3.1, the FGLogger subsystem allows
one to overwrite any file the user has write access to (with enough
control over the contents to run arbitrary commands if the target file
is then executed). A resource such as a malicious third-party aircraft
or add-on could exploit this to damage files belonging to the user.

The security fix
(https://sourceforge.net/p/flightgear/flightgear/ci/2a5e3d06b2c0d9f831063af=
e7e7260bca456d679/)
requires its parent commit
(https://sourceforge.net/p/flightgear/flightgear/ci/c7a2aef59979af3e9ff22da=
abb37bdaadb91cd75/)
to work correctly.

We are not aware of any malicious resource exploiting the problem.

The fix will be in FlightGear 2017.3.1 (expected in a few days).

------------------------------------------

[Vulnerability Type]
Incorrect Access Control

------------------------------------------

[Vendor of Product]
FlightGear (http://flightgear.org/)

------------------------------------------

[Affected Product Code Base]
FlightGear - Affected: releases earlier than 2017.3.1 (at least since
version 2.0.0).

------------------------------------------

[Affected Component]
source file: src/Main/logger.cxx in the FlightGear repository
(https://sourceforge.net/p/flightgear/flightgear/ci/next/tree/src/Main/logg=
er.cxx)
executable: fgfs

------------------------------------------

[Attack Type]
Local

------------------------------------------

[Impact Code execution]
true

------------------------------------------

[Impact Denial of Service]
true

------------------------------------------

[CVE Impact Other]
Allows one to overwrite any file the user has write access to, and to
control a significant part of the written contents. This leads to code
execution using .bashrc and such.

------------------------------------------

[Attack Vectors]
Trick users into installing a resource that enables logging to a
chosen file, via properties /logging/log/... For instance, a malicious
third-party aircraft or add-on could do that (add-ons loaded via 'fgfs
--addon=3D...').

------------------------------------------

[Reference]
https://sourceforge.net/p/flightgear/flightgear/ci/2a5e3d06b2c0d9f831063afe=
7e7260bca456d679/
https://sourceforge.net/p/flightgear/flightgear/ci/c7a2aef59979af3e9ff22daa=
bb37bdaadb91cd75/

------------------------------------------

[Has vendor confirmed or acknowledged the vulnerability?]
true

------------------------------------------

[Discoverer]
wkitty42

--=20
Florent

--=-=-=
Content-Type: text/x-diff
Content-Disposition: attachment;
 filename=combined-patch-for-CVE-2017-13709.patch
Content-Transfer-Encoding: quoted-printable
Content-Description: Combined patch for CVE-2017-13709
 (c7a2aef59979af3e9ff22daabb37bdaadb91cd75
 + 2a5e3d06b2c0d9f831063afe7e7260bca456d679)

commit a7c0c2b72ac2f2f5ce64624512c3758ec3422a02
Author: Florent Rougon <f.rougon@free.fr>
Date:   Sat Aug 26 17:49:30 2017 +0200

    Call fgInitAllowedPaths() earlier + fix for CVE-2017-13709
=20=20=20=20
    This is, for convenience, the combination of two commits:
=20=20=20=20
      https://sourceforge.net/p/flightgear/flightgear/ci/c7a2aef59979af3e9f=
f22daabb37bdaadb91cd75/
=20=20=20=20
    and
=20=20=20=20
      https://sourceforge.net/p/flightgear/flightgear/ci/2a5e3d06b2c0d9f831=
063afe7e7260bca456d679/
=20=20=20=20
    Indeed, the second commit wouldn't work correctly without the first one:
    fgInitAllowedPaths() must be called before FGLogger::init() gets to run
    in order for fgValidatePath() to be usable there for the security check.

diff --git a/src/Main/fg_init.cxx b/src/Main/fg_init.cxx
index 8205d3f0e..cccb61c62 100644
--- a/src/Main/fg_init.cxx
+++ b/src/Main/fg_init.cxx
@@ -1145,6 +1145,11 @@ void fgStartNewReset()
=20=20=20=20=20
     flightgear::Options::sharedInstance()->processOptions();
=20
+    // Rebuild the lists of allowed paths for cases where a path comes fro=
m an
+    // untrusted source, such as the global property tree (this uses $FG_H=
OME
+    // and other paths set by Options::processOptions()).
+    fgInitAllowedPaths();
+
     const auto& resMgr =3D simgear::EmbeddedResourceManager::instance();
     // The language was (re)set in processOptions()
     const string locale =3D globals->get_locale()->getPreferredLanguage();
diff --git a/src/Main/logger.cxx b/src/Main/logger.cxx
index 6c18162c3..00b6833ca 100644
--- a/src/Main/logger.cxx
+++ b/src/Main/logger.cxx
@@ -9,12 +9,17 @@
=20
 #include "logger.hxx"
=20
-#include <fstream>
+#include <ios>
 #include <string>
+#include <cstdlib>
=20
 #include <simgear/debug/logstream.hxx>
+#include <simgear/io/iostreams/sgstream.hxx>
+#include <simgear/misc/sg_path.hxx>
=20
 #include "fg_props.hxx"
+#include "globals.hxx"
+#include "util.hxx"
=20
 using std::string;
 using std::endl;
@@ -59,6 +64,25 @@ FGLogger::init ()
         child->setStringValue("filename", filename.c_str());
     }
=20
+    // Security: the path comes from the global Property Tree; it *must* be
+    //           validated before we overwrite the file.
+    const SGPath authorizedPath =3D fgValidatePath(SGPath::fromUtf8(filena=
me),
+                                                 /* write */ true);
+
+    if (authorizedPath.isNull()) {
+      const string propertyPath =3D child->getChild("filename")
+                                       ->getPath(/* simplify */ true);
+      const string msg =3D
+        "The FGLogger logging system, via the '" + propertyPath + "' prope=
rty, "
+        "was asked to write to '" + filename + "', however this path is no=
t "
+        "authorized for writing anymore for security reasons. " +
+        "Please choose another location, for instance in the $FG_HOME/Expo=
rt "
+        "folder (" + (globals->get_fg_home() / "Export").utf8Str() + ").";
+
+      SG_LOG(SG_GENERAL, SG_ALERT, msg);
+      exit(EXIT_FAILURE);
+    }
+
     string delimiter =3D child->getStringValue("delimiter");
     if (delimiter.empty()) {
         delimiter =3D ",";
@@ -68,7 +92,8 @@ FGLogger::init ()
     log.interval_ms =3D child->getLongValue("interval-ms");
     log.last_time_ms =3D globals->get_sim_time_sec() * 1000;
     log.delimiter =3D delimiter.c_str()[0];
-    log.output =3D new std::ofstream(filename.c_str());
+    // Security: use the return value of fgValidatePath()
+    log.output =3D new sg_ofstream(authorizedPath, std::ios_base::out);
     if (!log.output) {
       SG_LOG(SG_GENERAL, SG_ALERT, "Cannot write log to " << filename);
       continue;
diff --git a/src/Main/logger.hxx b/src/Main/logger.hxx
index 3d2146a83..de6209756 100644
--- a/src/Main/logger.hxx
+++ b/src/Main/logger.hxx
@@ -6,10 +6,10 @@
 #ifndef __LOGGER_HXX
 #define __LOGGER_HXX 1
=20
-#include <iosfwd>
 #include <vector>
=20
 #include <simgear/compiler.h>
+#include <simgear/io/iostreams/sgstream.hxx>
 #include <simgear/structure/subsystem_mgr.hxx>
 #include <simgear/props/props.hxx>
=20
@@ -39,7 +39,7 @@ private:
     Log ();
     virtual ~Log ();
     std::vector<SGPropertyNode_ptr> nodes;
-    std::ostream * output;
+    sg_ofstream * output;
     long interval_ms;
     double last_time_ms;
     char delimiter;
diff --git a/src/Main/main.cxx b/src/Main/main.cxx
index c72db1c3a..3264d8d8f 100644
--- a/src/Main/main.cxx
+++ b/src/Main/main.cxx
@@ -541,6 +541,11 @@ int fgMainInit( int argc, char **argv )
         return EXIT_SUCCESS;
     }
=20
+    // Set the lists of allowed paths for cases where a path comes from an
+    // untrusted source, such as the global property tree (this uses $FG_H=
OME
+    // and other paths set by Options::processOptions()).
+    fgInitAllowedPaths();
+
     const auto& resMgr =3D simgear::EmbeddedResourceManager::createInstanc=
e();
     initFlightGearEmbeddedResources();
     // The language was set in processOptions()
diff --git a/src/Scripting/NasalSys.cxx b/src/Scripting/NasalSys.cxx
index 89a1e0f96..9e37a2e93 100644
--- a/src/Scripting/NasalSys.cxx
+++ b/src/Scripting/NasalSys.cxx
@@ -911,10 +911,6 @@ void FGNasalSys::init()
       .member("simulatedTime", &TimerObj::isSimTime, &f_timerObj_setSimTim=
e)
       .member("isRunning", &TimerObj::isRunning);
=20
-
-    // Set allowed paths for Nasal I/O
-    fgInitAllowedPaths();
-
     // Now load the various source files in the Nasal directory
     simgear::Dir nasalDir(SGPath(globals->get_fg_root(), "Nasal"));
     loadScriptDirectory(nasalDir);

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEEltaD9t4j90O9Bqdx4W5C1BTo6IFAlmi/gkACgkQx4W5C1BT
o6KaGg/+PLNkEpilYpy4MbkK1hxnhZuvMgl/+KEOsNqfn+rdQJCBsHV34HzCnsAw
/RdWlKW5nIfw8qOiAqB782FZW1YY0yygD0nRs5tgb1/xND4IofgvY1wWAXwMvzEn
z70/U7c5VeQMrB348OBXdHNow7wOXTzmg5SsI8nbJqCn3iXgNi2cairBIINu8Yo3
VjLiUTmt+bW717TIdlpmwTiLQAKp3/x8jC/eX+/auSrb3J0rucEukmL1zdGe61FU
df9ZvtgH/UHsDtB0jWqEjYK2uNx1qRjDgd11FOnUC6e9QK1Vu9N/93/Dgk4myuc2
ZYYhYkcKKeNxWDB4z9xza5tClB3tKtVUJiEiS+1jIcl4xNzn8g7UF7+ZEUFa9F2r
BbvxHMz05bloXDWsQ0RA1d1BXejPEm6bciHPN/yAiokOU5+bd7Edv/rGi5bgurq/
hSdt9FXi7PVEkI+zeYHuoeC7ePxVWPYpRCSii/YW1zdZSf02Sy/rK/5oNHOeAvmt
+oUGB/W30HQY0CtnEciSxApMiuDREkBlzsOiSsgmO72iSSoUqMZsj6JtO6tG4KbD
X3heLMlT8CzCNc2SDxKOJBX1tq1az/3ZF2S83pjoRKpgV4uoQJGLqkzPoYEQlIEZ
L9LOYA0d0hc/zBp3+2MR8PeOQ+8wQfSeHyP1S9pA2k8X/q6yqr4=
=xWUR
-----END PGP SIGNATURE-----
--==-=-=--
