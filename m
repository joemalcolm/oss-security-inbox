X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1214" "Tuesday" "1" "September" "2015" "14:51:18" "+0200" "Nicolas =?ISO-8859-1?Q?Gr=E9goire?=" "nicolas.gregoire@agarri.fr" "<1441111878.28893.115.camel@banzai2>" "39" "[oss-security] CSRF to RCE in Jenkins" nil nil nil "9" "2015090112:51:18" "[oss-security] CSRF to RCE in Jenkins" (number mark "        nicolas.greg Sep  1   39/1214  " thread-indent "\"[oss-security] CSRF to RCE in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7578 invoked by uid 550); 1 Sep 2015 12:51:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7520 invoked from network); 1 Sep 2015 12:51:35 -0000
Message-ID: <1441111878.28893.115.camel@banzai2>
Organization: Agarri
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-WatXG7/2C/q40tTYhm3A"
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Date: Tue, 01 Sep 2015 14:51:18 +0200
From: Nicolas =?ISO-8859-1?Q?Gr=E9goire?= <nicolas.gregoire@agarri.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CSRF to RCE in Jenkins
To: oss-security@lists.openwall.com

--=-WatXG7/2C/q40tTYhm3A
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

a CSRF to RCE exploit was published on Bugtraq last week. It affects
Jenkins >=3D 1.626, including the latest public version. No CVE is
affected (AFAIK) and an exploit should be added to the BeEF Project
soon.

Original post to Bugtraq:
http://seclists.org/bugtraq/2015/Aug/161

BeEf devs working on an exploit for 1.627:
https://twitter.com/bmantra/status/638680685084037120

Cheers,
Nicolas

--=-WatXG7/2C/q40tTYhm3A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAABAgAGBQJV5Z9GAAoJEPNA97Htf0f89u8IAJjbETQ7SUlWJZYVtHDEwpg2
hN18cBmuCde0xVTn9qIaaj6MFgo2aaYIAX4z40N7PZGTJpc06oZpZ1+f2mkajM+H
lPCithdt6MY2P4BtnDxPgzeOza/SkMxOv7fZrWeqaPeCekuZ3P1MFz6h2/PZz6fK
gN+xdQk7W7/vb9d12gDpEuMPnl3L7kDcbD/UkDV6nJhpOY66p7dE63IHWnEvHsi9
j62wL6M5DWGA92igaZcxUNh8BCrxoH2/aihbYmp4o/deEAWbqY49XX569AYbVzSL
ZM5AS0oW32BHi4a+uAwuBIHdSrggOOHQ6L2rRxZ0mm3uJ6he+jNU8QHcv1cKu5U=
=x7nQ
-----END PGP SIGNATURE-----

--=-WatXG7/2C/q40tTYhm3A--

