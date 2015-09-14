X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1312" "Monday" "14" "September" "2015" "15:34:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>" "31" "[oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" nil nil nil "9" "2015091419:34:59" "[oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c" (number mark "        cve-assign@m Sep 14   31/1312  " thread-indent "\"[oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3171 invoked by uid 550); 14 Sep 2015 19:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1468 invoked from network); 14 Sep 2015 19:35:11 -0000
Message-Id: <20150914193459.DFDB4B2E032@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Mon, 14 Sep 2015 15:34:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-6937 - Linux kernel - NULL pointer dereference in net/rds/connection.c
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2015-6937 has been assigned to this issue that is exploitable "on
sockets that weren't properly bound before attempting to send a
message":

  https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=74e98eb085889b0d2d4908f59f6e00026063014f

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV9x7KAAoJEL54rhJi8gl5dnwP/AzP6v5uHg2fWIzr3DydL2sr
I9voc2h3JnrPBRa7i/yGPvinXdvrYSOWsFJbWKMdPaQUTGNZ6f08BLZv2G5qKcII
0cm5t6Kt/FVbbp/sTV+gnPgj1Bxjnju8KZdjYzr0BSOn1z1KsxZKksXGS0lNGM1H
VqYTwJF0rRR/Z4+yhtvO9hHTYrpaFkfauSpAP2DCP79SbPzi3yQosaeNwj59/WNZ
5q9kvwDtVjU3kK3A9PCV4lFfQ+G0Hjc5SL0wQmjSospwt2vLtC1RwDEi7uLULx36
G2ugnYSHbz5yWLfk5Qm3XJbLIoBBCcHoeeyJeOrTRnGcMfefhrrPff9vr+6g3elp
pO/7sYgcG/+tYI6+2yeOwO35Z4liyboWstClu5EJEyLCCw9nE+2k79Roxox0Qt0Y
n/e3of59IwTePaNM8iKwadoO+dRUKsegEYg5Klsz/8YgFMXU05Bs1dedUUcwWXe7
UAhw6L11T6RtjOlQZ6V+EXwdqOoB3Wq/5iwEc0vW53Gk3Yxp2NmHfNd81eB7amDg
4SDUB598wjNab3TyTZs7R0v0X5kSwsZ2Fn+ZwqoYZ4V24WjDprBRah6VbfrVnBpn
zWKK5E3WvC8KChfKgVHmAL64OOSVxVpsKQZuqfoxDci5lyHlU6mSP9I/KFnDzH8X
5UF+gjwB5wqldhQ+GMjQ
=qG8H
-----END PGP SIGNATURE-----
