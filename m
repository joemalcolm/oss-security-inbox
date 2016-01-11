X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1766" "Monday" "11" "January" "2016" "11:42:30" "-0600" "Jamie Strandboge" "jamie@canonical.com" "<5693E986.2010705@canonical.com>" "54" "[oss-security] CVE Request: click" nil nil nil "1" "2016011117:42:30" "[oss-security] CVE Request: click" (number mark "U       jamie@canoni Jan 11   54/1766  " thread-indent "\"[oss-security] CVE Request: click\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11468 invoked by uid 550); 11 Jan 2016 17:42:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11450 invoked from network); 11 Jan 2016 17:42:44 -0000
From: Jamie Strandboge <jamie@canonical.com>
To: oss-security@lists.openwall.com
Cc: security <security@ubuntu.com>
Message-ID: <5693E986.2010705@canonical.com>
Date: Mon, 11 Jan 2016 11:42:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="rMA0wmruv2CfTMwFd8mCIDGTe3FQ3JGmT"
Subject: [oss-security] CVE Request: click

--rMA0wmruv2CfTMwFd8mCIDGTe3FQ3JGmT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi MITRE, all,

A vulnerability was discovered in the click package system:
https://launchpad.net/bugs/1506467
http://www.ubuntu.com/usn/usn-2771-1/

It was fixed in 0.4.42 with:
https://code.launchpad.net/~cjwatson/click/audit-missing-dot-slash/+merge/2=
74554

This is an input sanitization bug where click assumed leading paths were al=
ways
prefixed with './' which, for example, allows a crafted click to ship a '.c=
lick'
directory to manipulate the click install process.

Can we get a CVE for this?

Thanks!

--=20
Jamie Strandboge                 http://www.ubuntu.com/



--rMA0wmruv2CfTMwFd8mCIDGTe3FQ3JGmT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWk+mGAAoJEFHb3FjMVZVzqN0P/A/CFM4wJT4+siVyezI+IPWv
84ljcfhGxjwSemLBU4nzj0PNokgb973kyUMXXBbB2gJA177E2z3U2yCyGrMrjtSz
XptfWClMhte9GsvdDlK2rE7ryTd+Crf+W95883SN9qpp1Q9Nxdqo/NrIK2lCQwjw
kU9SnlhJdBSJgOX817E+8i5BKEHUbTILpomnGmQka/NO1bf7174PxAoI75EwnmxT
rp5TiFlWpPKtVCcuuvaAJkIdTc1iYsPRW3b1stL3WJGlcH9VJUXmkZ4g7hVpueSB
CLlhTxXjQxonpZsXvD6UWTq8QsU4lb2Bm6wgW6YFrfQnqAW7ZYwb+gwClYPx4Mfd
yqzfoZxsiepF6SJH5ZaT8GKpr7bdI1ud1tEWhw4IGoYDLKDcf1nmEwaimzpjO9Lu
oq+vcdDaThudxP5OExxf8J8QcGEhdcDxHME5CPA9rQ9MqXVd39vRjqw1oP4mWHIB
jMSz/IyVt4gtuOsWCphRxzXlqj9vrg+rHmZMC2R6fbkgeX4dm4YUIosbFmaRzgan
8iWBrDy0+44TcJs8xuluwE9Du8QqnqkLKOmgZ2trzOFXISpTLrS9ukaEXuINQjjM
iXpWRm423GRJWi99NM7ofL3oEiW3b+61DvgPaqOV674C3aoTQh3aswdoZ1/1qnpe
ajA2WhmLxvCnUgSQWJyN
=y4FO
-----END PGP SIGNATURE-----

--rMA0wmruv2CfTMwFd8mCIDGTe3FQ3JGmT--
