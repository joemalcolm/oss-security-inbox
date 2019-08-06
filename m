X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2915" "Tuesday" "6" "August" "2019" "19:44:00" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20190806194400.unuo632rnugzzgq7@yuggoth.org>" "86" "[oss-security] [OSSA-2019-003] Nova Server Resource Faults Leak External Exception Details (CVE-2019-14433)" nil nil nil "8" "2019080619:44:00" "[oss-security] [OSSA-2019-003] Nova Server Resource Faults Leak External Exception Details (CVE-2019-14433)" (number mark "U       fungi@yuggot Aug  6   86/2915  " thread-indent "\"[oss-security] [OSSA-2019-003] Nova Server Resource Faults Leak External Exception Details (CVE-2019-14433)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2019-003] Nova Server Resource Faults Leak External Exception Details (CVE-2019-14433)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3110 invoked by uid 550); 6 Aug 2019 19:44:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3078 invoked from network); 6 Aug 2019 19:44:13 -0000
Date: Tue, 6 Aug 2019 19:44:00 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20190806194400.unuo632rnugzzgq7@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tveerclupyxofhot"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2019-003] Nova Server Resource Faults Leak External Exception
 Details (CVE-2019-14433)

--tveerclupyxofhot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2019-003: Nova Server Resource Faults Leak External Exception Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 06, 2019
:CVE: CVE-2019-14433


Affects
~~~~~~~
- Nova: <17.0.12,>=3D18.0.0<18.2.2,>=3D19.0.0<19.0.2


Description
~~~~~~~~~~~
Donny Davis with Intel reported a vulnerability in Nova Compute
resource fault handling. If an API request from an authenticated user
ends in a fault condition due to an external exception, details of the
underlying environment may be leaked in the response and could include
sensitive configuration or other data.


Patches
~~~~~~~
- https://review.openstack.org/674908 (Ocata)
- https://review.openstack.org/674877 (Pike)
- https://review.openstack.org/674859 (Queens)
- https://review.openstack.org/674848 (Rocky)
- https://review.openstack.org/674828 (Stein)
- https://review.openstack.org/674821 (Train)


Credits
~~~~~~~
- Donny Davis from Intel (CVE-2019-14433)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1837877
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-14433


Notes
~~~~~
- The stable/ocata and stable/pike branches are under extended maintenance =
and
  will receive no new point releases, but patches for them are provided as a
  courtesy.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--tveerclupyxofhot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl1J2HlfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCndDRAAtq4u6Ls/edJCuG2pfB5qUe2rKn0QuIZ0F8fRZWJ0NCeqcseQtA7hThfF
1rDAXGxnhqPSjSaesycpwOaImdTJTcNqyywxSnDEG3X7VatF43GgQhwpnRMLZrlf
X+y45EtHNJuDAx8HIHDx/Qc/v5D3rq2GZ+zed0YK84ADpBmnRNs8bvM4vHMNzzSe
yvSxifSD4VKJ2UVPqrPcAYp/J4n53q3bxdvGQOrLcrK6YlS+mnjvgqh6qtpCxxCK
bSkbORAyTjFD+i8i5sErBSlkxozTrDE76GYxaWMFBUO6diWJy470I0StrVlJbWuY
HVnkWj3thnsQQFln6BxaiL1INSDKRdGBKdF+TT6d+c32epTE7d+m0JweAvl2wwmA
toB5AQ9ikop6SsUjzXAVrf0bzvWBtJf/nKkJT89hlUPbKTC77yGGJ3nuYW/36BDF
dAiCH5pbAuGxf0ef5DexsPN7H+pvppc9x5ndLQQytMOCX6eXthbbbCnXClfAQ3Hz
40dZGyJTkihwP1tPmq7AA9BXonwpUuygl+95ktD2mr5caqIuPnnLIEzjgQnWnb6v
SPUElYaWUryRNJpg9MEYUG1kfP6TVtWqr8b8iyyfPbhQCAjB/T9uzwp9JXwEA/es
3xTwznqJNzIJvaxOmtpdqBl4Kzog0LlWN3mjXtLpB+ox3mzkQYo=
=cYmH
-----END PGP SIGNATURE-----

--tveerclupyxofhot--
