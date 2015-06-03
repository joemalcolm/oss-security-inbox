X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2036" "Thursday" "4" "June" "2015" "00:29:04" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150604002904.5afb54e8@pc1>" "57" "[oss-security] Null pointer access in inflatehd tool (nghttp2)" nil nil nil "6" "2015060322:29:04" "[oss-security] Null pointer access in inflatehd tool (nghttp2)" (number mark "        hanno@hboeck Jun  4   57/2036  " thread-indent "\"[oss-security] Null pointer access in inflatehd tool (nghttp2)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30557 invoked by uid 550); 3 Jun 2015 22:28:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30497 invoked from network); 3 Jun 2015 22:28:28 -0000
Message-ID: <20150604002904.5afb54e8@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-20584-1433370497-0001-2"
Date: Thu, 4 Jun 2015 00:29:04 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Null pointer access in inflatehd tool (nghttp2)
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-20584-1433370497-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/14-Null-pointer-access-in-inflatehd-tool-n=
ghttp2.html

The nghttp2 library ships two tools to parse http headers packed with
the hpack algorithm. An invalid input file can crash the inflatehd
tool. This is a bug in the tool, there is no issue in the library.

This issue was fixed in version 0.7.15 of nghttp2.

One day of fuzzing both the inflatehd and deflatehd turned up no other
issues.

Sample input file
https://crashes.fuzzing-project.org/nghttp2-inflatehd-nullptr
Git commit / patch
https://github.com/tatsuhiro-t/nghttp2/commit/3572e7c6343cb85fc21f5667a7ed0=
902cf5305cf
Upstream bug report
https://github.com/tatsuhiro-t/nghttp2/issues/235
nghttp 0.7.15 release notes
https://github.com/tatsuhiro-t/nghttp2/releases/tag/v0.7.15

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-20584-1433370497-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVb3+wAAoJEKWIAHK7tR5CNtEP/R5Gr5CRwkvcBsnnenC1sPWg
Ga6oyRui9QRAu9UzbVlWKXTUCuiG0X/qAS6kt6FawrbPNNRW1UUq50jn7TcqKMIP
pJmPop4WkihfazwfxWWYEqcKPQcWNbxm5kn2Nrnl9bnPZZ1+Ik51JxW3LeKv+9XL
F4Z4F+PGHJIvGc+/dkhFVo1fGwuhjfDn/0S/lBddPA1H9xqmRhbfUgFqysFGlKPI
vE1rs6l3H+7447qk1HX6be8X2/icxg1UdnN2JMUmXcu8HGV41b3Tsc6jFUDym6Yi
EnfBK0iaLcepXDPzp+LGWKQOxiuW/mKYoTE+Mjv8mGMlRe66cF8h40BCAwM8PdJU
SOmoE3bQxWv4fgvlMss6LQ440YB7ceHMwGd46Q828TuqiYOFo+g9pmQGarbbD3eu
ammuOdLjP7frZHV2SJUJ/yFlMqt3QiclNoyystsq94kWpf/Pj6ufmQL6g/awmD7W
IonCmpgBE7ljsJxpRit2UYjA4L+J4hhBRYRqHUV/RtSLEQWZqXlNcFbkNRRE5x8b
cqU6gBk43JqaugigA/8+rOJwYZ0759vn3HNsj3p/Z0cPuVYpDiby70IUWj6zoz6r
SHct47/ByZzDWCHMndjwkt/bqTovcg++D3le6TcFHVu+nLOcH9bSxKgp45b/ixDo
Xe4rGNHFFCplhtYQ6Vk0
=KG2/
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-20584-1433370497-0001-2--
