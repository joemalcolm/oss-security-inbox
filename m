X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2598" "Thursday" "23" "March" "2017" "14:42:53" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20170323144253.GF12842@openstack.org>" "77" "[oss-security] [OSSA-2017-002] Nova logs sensitive context from notification exceptions (CVE-2017-7214)" nil nil nil "3" "2017032314:42:53" "[oss-security] [OSSA-2017-002] Nova logs sensitive context from notification exceptions (CVE-2017-7214)" (number mark "U       jeremy@opens Mar 23   77/2598  " thread-indent "\"[oss-security] [OSSA-2017-002] Nova logs sensitive context from notification exceptions (CVE-2017-7214)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3539 invoked by uid 550); 23 Mar 2017 15:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3207 invoked from network); 23 Mar 2017 14:43:07 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Date: Thu, 23 Mar 2017 14:42:53 +0000
From: Jeremy Stanley <jeremy@openstack.org>
To: oss-security@lists.openwall.com
Message-ID: <20170323144253.GF12842@openstack.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfWagoTHmfL/c8Ax"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [OSSA-2017-002] Nova logs sensitive context from notification
 exceptions (CVE-2017-7214)

--jfWagoTHmfL/c8Ax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-002: Nova logs sensitive context from notification exceptions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: March 23, 2017
:CVE: CVE-2017-7214


Affects
~~~~~~~
- Nova: >=3D13.0.0 <=3D13.1.3, >=3D14.0.0 <=3D14.0.4, >=3D15.0.0 <=3D15.0.1


Description
~~~~~~~~~~~
Matt Riedemann with Huawei reported a vulnerability in Nova. Legacy
notification exception contexts appearing in ERROR level logs may
include sensitive information such as account passwords and
authorization tokens. All Nova setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/447075 (Mitaka)
- https://review.openstack.org/447072 (Newton)
- https://review.openstack.org/447071 (Ocata)
- https://review.openstack.org/446948 (Pike)


Credits
~~~~~~~
- Matt Riedemann from Huawei (CVE-2017-7214)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1673569
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-7214

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--jfWagoTHmfL/c8Ax
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJY097tXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpIscQAIbad7TMfgxk4mgFYiudByxa
n0W+EvlJmey2yvNMi2z7m1orDahE/Hs6XWc2SrR1eGi+aJm+R6B+AlCphAA45JKC
8ph/lTJudT/9DStxOCsf6PPyTs0nE9JWCuZsu9aHNwshQkCtrpjlSx69H/E3f0y3
EO61YruSZ/ycRQ3YRnyQIukISTnqJc4tHoGDg+eJyif/UZc/g4emqqlNTr++3Z8w
tw1NPwhjkmWsT+DonhGAC/Fd/DUbKC8y31GIAutXi+g/Jn6mb0vwj9O8/iWQBySZ
ZP2m8/FZRWpCJEmWt3uM0yliL4KfHSCWbKzV7Zney4Vg1ATx3ZuquXzeoO2RfuVr
Sip6vghTRWF9PqdkWhgHA/Wxnjg/U/j1SkMD1g8Qbvo4WQrTcQq0c477j3F+/3hx
Sv1MpXUX67Pn+Q0FFoi6Km3WxET/gtAR8p+TkYVe/qxzfWILHFRQMt89mdZ2GFSW
Y/uk5yztAYG5kqvlaaYcdXU5NjPmSKl/BhVICsQQihRwejCoRrtLRC8O0yG3c6NK
B/uM8LXZG+APhcwAfPXlgKGoRQLc1JYqmmGjBHVgczSqDo5kMrMe2qRcvy3GpZzI
wxngsFtbHg1DihNfZP9n/2D7SOi011s/kNSjQzU49n/Brr26iGgWkkomoVcPAzy7
wBpds843tBm5EUxjwKF7
=RP1n
-----END PGP SIGNATURE-----

--jfWagoTHmfL/c8Ax--
