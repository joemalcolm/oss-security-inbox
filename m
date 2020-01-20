X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4379" "Monday" "20" "January" "2020" "14:40:55" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200120134055.GC10486@f195.suse.de>" "118" "[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" "^Date:" nil nil "1" "2020012013:40:55" "[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" (number mark "        mgerstner@su Jan 20  118/4379  " thread-indent "\"[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23614 invoked by uid 550); 20 Jan 2020 13:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23596 invoked from network); 20 Jan 2020 13:41:07 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200120134055.GC10486@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GyRA7555PLgSTuth"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 20 Jan 2020 14:40:55 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack
 vector via fixed lockfile path /tmp/storeBackup.lock
To: oss-security@lists.openwall.com

--GyRA7555PLgSTuth
Content-Type: multipart/mixed; boundary="mvpLiMfbWzRoNl4x"
Content-Disposition: inline


--mvpLiMfbWzRoNl4x
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

storeBackup [1] is a tool for performing disk-to-disk backups.
In the course of a code review [2] for this package as it is included in
openSUSE I found that the program, which typically runs as the root
user, uses a fixed default path /tmp/storeBackup.lock to protect
parallel instances of storeBackup against each other.

This opens up a DoS attack vector for unprivileged local users.
If an unprivileged user simply does this:
=20=20
$ echo 1 >/tmp/storeBackup.lock
=20=20
then possibly configured system backups won't be executed, because
storeBackup assumes that an instance is already running. In this
situation the program will not wait for the "other instance" to finish
but simply exit immediately, doing nothing.
=20=20
Furthermore there's a race condition involved allowing a symlink attack.
storeBackup first performs a stat() then an lstat() on
/tmp/storeBackup.lock and only then opens it for creation. Thus if
storeBackup runs as root and an unprivileged attacker wins this race
condition then files can be created or overwritten. This way a system
can be broken, or if additional conditions are met it might even allow
to escalate privileges in some way.

As a workaround users can pass an explicit --lockFile, -L parameter to
storeBackup to specify a safe lockfile location not accessible to
unprivileged users.

There is currently no isolated patch available from upstream to deal
with this problem. A new version 3.5.1 containing a fix is expected to
be released (via savannah.gnu.org) in the course of next week. Attached
is a patch authored by the openSUSE storeBackup package maintainer Jan
Ritzerfeld that addresses the symlink attack vector by changing the way
the lockfile is opened in the Perl code.

Cheers

Matthias

[1]: http://storebackup.org
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1156767

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--mvpLiMfbWzRoNl4x
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fix-tmp-lock-file-race-condition.patch"
Content-Transfer-Encoding: quoted-printable

Index: storeBackup/lib/fileDir.pl
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- storeBackup.orig/lib/fileDir.pl
+++ storeBackup/lib/fileDir.pl
@@ -21,7 +21,7 @@
=20
=20
 use Digest::MD5 qw(md5_hex);
-use Fcntl qw(O_RDWR O_CREAT);
+use Fcntl qw(O_RDWR O_CREAT O_WRONLY O_EXCL);
 use Fcntl ':mode';
 use POSIX;
 use Cwd 'abs_path';
@@ -482,7 +482,7 @@ sub checkLockFile
 		  '-str' =3D> ["creating lock file <$lockFile>"]);
=20
     &::checkDelSymLink($lockFile, $prLog, 0x01);
-    open(FILE, '>', $lockFile) or
+    sysopen(FILE, $lockFile, O_WRONLY | O_CREAT | O_EXCL) or
 	$prLog->print('-kind' =3D> 'E',
 		      '-str' =3D> ["cannot create lock file <$lockFile>"],
 		      '-exit' =3D> 1);

--mvpLiMfbWzRoNl4x--

--GyRA7555PLgSTuth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl4lreQACgkQFMQFyXGS
NVMhtBAAn/iW3t0i9KbB38ffECJ8oZd1O8+oEvDzoLzr00mHYvk6c+wBtibDkMpn
ck5c12A6Q4i+5PqJMe2ho8LNf3NzRvGHAjDFFRV6ez6v2AVOUAm3iBRsIgiSqR0h
p9yLhskZM0AT9Fv0ShtjfurDp9KfQA9bHOyUaO+GgDgRo7eSCQ25fJPctFCM9e/5
bR2dZi74LGlXT2QQXoCDgLPzHFwRY2cTTcoq13xbPNFzdYi7jE5YtuBd11lKYgqn
OLmACdA/MSpLmiILsuBtj9njgpfq1AMDz4cvFzJZbnGwD8aZ1JU3s4y+b95yiBTB
2D+TnwVAejvNZcvDa5/i/wG3cUxm42aFDudvGMP22KIWAo2f1zks9Cva391SyJvj
SUGrcP7JidK+t49RQxo4TzX80u+pK75wy9WTFgpx9aszCj2pijikoWii9kemshMh
nymlcbrX2qR7tE7yQCWISXCvFxqnc2JHyX+SU7h7aLRdy0hJipVYQnvC7n8GwD5X
RSJGQKCMV4VTHXCoGUh6yWM6lDQDfDy5uWmuBXlj1z8L8PyjT7TA8hpou6cUyhUp
IsHZcWA0hKGGycia6wQnuRJH1kjnBBE7bzwU4+1zK6ftbcvYuPwlU3qg4JczV2Sk
cLQKWPak8Eng+S9N/4Diq7JpvZT3i860QkM53wnPRSVRXC+Ee4o=
=R9A9
-----END PGP SIGNATURE-----

--GyRA7555PLgSTuth--
