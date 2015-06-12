X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3736" "Saturday" "13" "June" "2015" "01:25:15" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150613012515.737b9d3d@pc1>" "88" "[oss-security] Out of bounds read in OpenSSL function X509_cmp_time (CVE-2015-1789) and other minor issues" nil nil nil "6" "2015061223:25:15" "[oss-security] Out of bounds read in OpenSSL function X509_cmp_time (CVE-2015-1789) and other minor issues" (number mark "        hanno@hboeck Jun 13   88/3736  " thread-indent "\"[oss-security] Out of bounds read in OpenSSL function X509_cmp_time (CVE-2015-1789) and other minor issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17413 invoked by uid 550); 12 Jun 2015 23:24:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16339 invoked from network); 12 Jun 2015 23:24:35 -0000
Message-ID: <20150613012515.737b9d3d@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-24388-1434151463-0001-2"
Date: Sat, 13 Jun 2015 01:25:15 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Out of bounds read in OpenSSL function X509_cmp_time
 (CVE-2015-1789) and other minor issues
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-24388-1434151463-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/15-Out-of-bounds-read-in-OpenSSL-function-=
X509_cmp_time-CVE-2015-1789-and-other-minor-issues.html

Lately I started an effort to systematically fuzz all possible file
input vectors of OpenSSL. This led to the discovery of one potential
security issue and two minor non-security fixes.

Malformed inputs can cause an out of bounds heap read access in the
function X509_cmp_time. This issue was reported to the OpenSSL
developers on 11th March. It was independently discovered three days
earlier by Google developer Robert Swiecki.

During the fuzzing I also discovered several issues in the parser of
ASN1 definition files. These can be used to create ASN1 data structures
with OpenSSL. It is unlikely that there is any situation where ASN1
definitions are attacker controlled, therefore these are not considered
security issues.

The latest security updates of OpenSSL (1.0.2b, 1.0.1n, 1.0.0s,
0.9.8zg) fix all three issues. These releases also fix a number of
other security issues. Shortly after publishing these updates OpenSSL
issued another update (1.0.2c, 1.0.1o), because the versions contained
an ABI change which should not happen in minor releases.

I am aware that a couple of other people were also fuzzing OpenSSL
lately. Noteworthy is one issue that was found by Joseph Birr-Pixton in
the parser of elliptic curve parameters. It is an endless loop and can
be used to hang processes with a high CPU load. Endless loop issues
tend to get ignored because they are often false positives.
https://jbp.io/2015/06/11/cve-2015-1788-openssl-binpoly-hang/

It is definitely getting harder finding any new issues through fuzzing
in OpenSSL. This is good news.

Out of bounds read in X509_cmp_time
CVE-2015-1789
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2015-1789
Git commit / fix
https://github.com/openssl/openssl/commit/f48b83b4fb7d6689584cf25f61ca63a48=
91f5b11
OpenSSL Security Advisory
https://openssl.org/news/secadv_20150611.txt
Sample malformed cert (test with openssl verify [input])
https://crashes.fuzzing-project.org/openssl-verify-oob.crt

Samples for issues in ASN1 definition parser (test with openssl
asn1parse -genconf [input]): Out of bounds read heap
https://crashes.fuzzing-project.org/openssl-asn1-oob.asn
Stack overflow through endless recursion
https://crashes.fuzzing-project.org/openssl-asn1-stack.asn
Uninitialized memory access
https://crashes.fuzzing-project.org/openssl-asn1-uninitialized.asn

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-24388-1434151463-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVe2pbAAoJEKWIAHK7tR5CMg8QAKmmEfGKFwJ9zsyNJUiBlOJu
iyFT1qj3Mqp97oqOEy9X5Cxzi3sqhydAszHeEM+6FcO9xm6aSXrDGhKDLP/t9BZV
hMwkbpncyIQnkNrBH6nk45/v6PSkHSG+jS28ReHbmXl2xiRAF5FDG88rLJI6TRcP
4FopyxDppZzttxYKqeKT2A9jGjgLdKH846SfHl4AjMk+FGQ3/EPeJYUpANRGpA0w
Ut8Y32sv+wNlkCwP0NxLPle76qwJJKRs51WJoOW5SlrHh6NfS4K77qfULud/zCG1
fEqvIUvq6nOfQWhViKYLxM8r2sSMrArvVnEUYoXb2770xsG1k8vSXAsctsnzv8He
tpSvOCVDggqM2SMQRne5olDINzjGlU+/XKj3UBo5JpcBTI3Qb/go8rUSfGm8BaY3
1vStxGt2f42hIAKapN6vNW5QzAHmWK8LVsq5JO+HB7nAue4whKwN6uUTLDyUxTWg
sG+rJm62lSXmjH8UMB2+tzUpJNyyozEzDmWnlg8Gtgphi9AW+xpMu0lO91DPtnGg
9enarkZBBlSf8qT0xo5raFdkvGgFGcGYceE/MsfG/LQ5yleDIGN1AyYIrz/sS7Qd
37j5ZsVwch5ubHRZcu2ShhOMHLLq3KenQJB5yDZa10M3PNTswrd5pDbCDtWBnVIF
iGAxHStJ24K8GCC+BmWN
=1CD5
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-24388-1434151463-0001-2--
