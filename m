X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6115" "Monday" "20" "January" "2020" "15:51:48" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200120145148.GG10486@f195.suse.de>" "186" "[oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" nil nil nil "1" "2020012014:51:48" "[oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" (number mark "U       mgerstner@su Jan 20  186/6115  " thread-indent "\"[oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege escalation / DoS attack vector" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13990 invoked by uid 550); 20 Jan 2020 14:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13940 invoked from network); 20 Jan 2020 14:51:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 20 Jan 2020 15:51:48 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200120145148.GG10486@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/qIPZgKzMPM+y5U5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] CVE-2019-18932: sarg: insecure usage of /tmp/sarg allows privilege
 escalation / DoS attack vector

--/qIPZgKzMPM+y5U5
Content-Type: multipart/mixed; boundary="l0l+eSofNeLXHSnY"
Content-Disposition: inline


--l0l+eSofNeLXHSnY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

sarg [1] is a tool that generates HTML reports from Squid web proxy
logfiles. Typically these reports are generated automatically via cron
jobs on a regular basis (e.g. through entries in
/etc/cron.{daily,weekly,monthly}).

In the course of a code review [2] of sarg it turned out that it uses a
fixed path in /tmp/sarg by default to store files (log.c:571). sarg
employs a couple of system calls to check for an already existing
/tmp/sarg directory and tries to reuse it by deleting its contents
(log.c:588). The system calls used for this logic are subject to race
conditions. Since sarg runs as 'root' this behaviour allows
unprivileged local users to prepare symlink attacks.

By winning a race condition an attacker will be able to let new files be
created or existing files be overwritten in privileged locations. This
presents a denial-of-service attack vector and possibly also a privilege
escalation in some circumstances. Since the content of the files that
are created cannot be controlled by the attacker (as far I can tell)
there is no easy full privilege escalation to root possible.

A mitigation for this weakness can be to pass the '-w' switch to
invocations of /usr/bin/sarg which allows to explicitly specify a
safe temporary directory to use. Also in the openSUSE packaging the cron
jobs for sarg don't invoke sarg if not explicitly enabled in
/etc/sysconfig/sarg. On Debian 9, however, for example, the cron jobs
seem to run unconditionally after installing sarg.

To make sarg safe, the file handlings parts will need to be completely
revised. An improvement could also be not to run sarg as 'root' user at
all but instead share the 'squid' user account, if possible. The
upstream maintainer communicated to me that this should be possible
without loss of functionality.

The attached suggested patch adjust the sarg-reports wrapper script to
pass a safe and unpredictable temporary directory name to sarg to
prevent the security issues described, at least when called from the
cron job context.

I've informed the upstream maintainer about this issue on 2019-11-13 and
discussed various aspects of a suitable security fix with him. No
agreement on a suitable publication date for this finding or a final
patch could be achieved and I did not hear back for around a month by
now.

Best Regards

Matthias

[1]: https://sourceforge.net/projects/sarg/
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1150554

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--l0l+eSofNeLXHSnY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="sarg-reports-pass-safe-tmpdir.diff"
Content-Transfer-Encoding: quoted-printable

Index: sarg/sarg-reports
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- sarg.orig/sarg-reports
+++ sarg/sarg-reports
@@ -137,10 +137,7 @@ VER=3D20050202
 ## The configuration is end, so don't touch anything bellow
=20
 # TEMP Files
-R=3D$RANDOM
-[ -n "$R" ] || R=3D"$(od -An -d -N2 /dev/urandom | tr -d ' ')"
-TMPFILE=3D/tmp/sarg-reports.$R
- ERRORS=3D"${TMPFILE}.errors"
+ERRORS=3D`mktemp`
=20
 # Date Calc
 MANUALDATE=3D$2
@@ -203,7 +200,6 @@ create_index_html ()
 exclude_from_log ()
 {
   cat $ERRORS | grep -v "$EXCLUDELOG1" | grep -v "$EXCLUDELOG2"
-  rm -f $TMPFILE*
 }
=20
 manual ()
@@ -219,12 +215,28 @@ manual ()
   fi
 }
=20
+run_sarg ()
+{
+  DATE_PAR=3D"$1"
+  OUT_PAR=3D"$2"
+
+  TMPDIR=3D`mktemp -d`
+  if [ $? -ne 0 -o -z "$TMPDIR" ]; then
+    echo "Failed to create temporary directory" 1>&2
+    exit 1
+  fi
+
+  $SARG -f $CONFIG -d "$DATE_PAR" -o "$OUT_PAR" -w "$TMPDIR" >$ERRORS 2>&1
+
+  rm -rf "$TMPDIR"
+}
+
 today ()
 {
   DAILYOUT=3D$HTMLOUT/$DAILY
   mkdir -p $DAILYOUT
   create_index_html
-  $SARG -f $CONFIG -d $TODAY -o $DAILYOUT >$ERRORS 2>&1
+  run_sarg $TODAY $DAILYOUT
   exclude_from_log
 }
=20
@@ -233,7 +245,7 @@ daily ()
   DAILYOUT=3D$HTMLOUT/$DAILY
   mkdir -p $DAILYOUT
   create_index_html
-  $SARG -f $CONFIG -d $YESTERDAY -o $DAILYOUT >$ERRORS 2>&1
+  run_sarg $YESTERDAY $DAILYOUT
   exclude_from_log
 }
=20
@@ -242,7 +254,7 @@ weekly ()
   WEEKLYOUT=3D$HTMLOUT/$WEEKLY
   mkdir -p $WEEKLYOUT
   create_index_html
-  $SARG -f $CONFIG -d $WEEKAGO-$YESTERDAY -o $WEEKLYOUT >$ERRORS 2>&1
+  run_sarg $WEEKAGO-$YESTERDAY $WEEKLYOUT
   exclude_from_log
 }
=20
@@ -251,7 +263,7 @@ monthly ()
   MONTHLYOUT=3D$HTMLOUT/$MONTHLY
   mkdir -p $MONTHLYOUT
   create_index_html
-  $SARG -f $CONFIG -d $MONTHAGO -o $MONTHLYOUT >$ERRORS 2>&1
+  run_sarg $MONTHAGO $MONTHLYOUT
   exclude_from_log
 }
=20

--l0l+eSofNeLXHSnY--

--/qIPZgKzMPM+y5U5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl4lvoQACgkQFMQFyXGS
NVPNbBAAuKJ8cELRVkpx2bOJVaImigXtfpjMsnDx9wWBgkdjDYTvixeN6QGEF1xF
1kj9YOtCRrpmpGM2f4Hdl6LGALLTmLMFHb9ZkHyOM1R5RqL3X0zvdOkh0mP7TyiH
7fC+MMW1udeXB3IW7xn8muuiUjeVE1+triwG9zF59rcv0ir5tRuyvJFg8bXGM2vr
8jRdx/Xw8mhh2xAJ7vQApo5mplqUTS4QLtDf3BcQVubkTCsGWLcEqwV9rcJ+uu9I
ykUxfI3wQjp/gkOjUleAVRKsj+o5DUrMeiV29RTbHlmyy1mEP8KxNN/VshtwJxMj
NssxJnOiRfc/RCmwPwf9pmj/MPe0Y+8p8BC8mNGfgjYARRt9C6VxmI5iRfExhidy
k1wvIEAItoO66p8pUfKUGAlXVpMn2uZw+wmcKW/LX3ud+r/nQAdNVE5lo+vaDFF/
4C/l0oiKeXrpnikf9p0Qw+ogvfUM5mHE35BdjVFh+cO1MYHGsRC0gVlccF5XNl0V
m4az18tR4VlOhan6CA1Mmmycg9UazOVW23FB4Dotkdgf3dPxB0YdeosuG0BOP2/B
DaDEeMbpJlIjPSoASyOFhy7qdLmFOpEwtpfACgxVcIoykXzkMt8ohBE50EyAQuh8
wtoIpCwhgzj1ipbIzscQ8fLxS0KxcwHlUa36jBzhVlZoGcLO4rA=
=7wES
-----END PGP SIGNATURE-----

--/qIPZgKzMPM+y5U5--
