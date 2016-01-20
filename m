X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1947" "Wednesday" "20" "January" "2016" "09:06:03" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<20160120150602.GA7709@boyd>" "47" "[oss-security] Security issue in eCryptfs-utils (CVE-2016-1572)" "^Cc:" nil nil "1" "2016012015:06:03" "[oss-security] Security issue in eCryptfs-utils (CVE-2016-1572)" (number mark "U       tyhicks@cano Jan 20   47/1947  " thread-indent "\"[oss-security] Security issue in eCryptfs-utils (CVE-2016-1572)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31926 invoked by uid 550); 20 Jan 2016 15:06:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31905 invoked from network); 20 Jan 2016 15:06:19 -0000
Message-ID: <20160120150602.GA7709@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Jann Horn <jann@thejh.net>
Date: Wed, 20 Jan 2016 09:06:03 -0600
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issue in eCryptfs-utils (CVE-2016-1572)
To: oss-security@lists.openwall.com

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii; name="msg-5829-2.txt"
Content-Disposition: inline; filename="msg-5829-2.txt"

Jann Horn discovered[1] that the setuid-root mount.ecryptfs_private
helper would mount over any target directory that the user owns. This
included procfs. A user could mount over the /proc/<PID> of a process
that they own and maliciously craft files in that mount point with the
intent to confuse privileged processes that interact with those files.
Once the crafted mount point was set up, the reporter used the newuidmap
program (also setuid-root) to escalate his privileges by confusing it
with the files in the crafted mount point.

This issue was assigned CVE-2016-1572.

The upstream fix[2] prevents the attack by creating a whitelist of mount
target filesystem types that mount.ecryptfs_private can safely
mount over.

[1] https://launchpad.net/bugs/1530566
[2] https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/870

Tyler

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJWn6JaAAoJENaSAD2qAscKT3UP/iMvxQhZuMAv50+XXohK968o
gCt3gYUhV6JPaZDmLNzl8RBEgPqgTG8tvJcKVmpydvfIS8OMshb6EIoVz80XNUIQ
NRg3z1olh3DipN3PeyoXFVm+7L4SZWkb/xMk1/KhOrCbS8JIDW0118L5An6KxPCE
GkwALVZzkWWt8SctfDli12iPlY6hPuA1gJh+//QJMq8KyMIvNkEMqMlbbwHh8fRo
/1iuX+7Q+nZR/j4/iRa64v2dTcVEIomrpKNXUKFlqFCguv1rpLoD/MYkxfBobHuh
xNoe4qYCzZVw3GRvbWkH8ncmNg3jnnrbG3W9PEd6n4tr9WgCtSoiBzZtONcpYApH
30BVRV9b6sHmFftzbBz4gqst/HUNXlReVID/glPqobZWzjzvVikDmOYtXFzyfBV4
Lhnu5uzMEnVxF+PU8dEGN7LEqtdzNsRefaY/kCmQhIYWcCNB7nmHXCg8lRFEodlS
svI5rS8faAUaLWgVuzlV/spb7nS8LIMUjs0Um/oEJwAubpfDjrPN5oaeXWfh7J9f
yj5aklsr/3j1YKHHyoJG2W3hVJDjoLeNt4mb5QDOknArDJjRGr00albW8KRheUFK
VquS4cXUyBwXoGR6th3xtV1wTyAxo7uDsrAq47iwhg20YTQIszFY4jg2XV8ltkzA
aQuxkUuzg6hxfPLPMRpZ
=EILP
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
