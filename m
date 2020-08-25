X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3529" "Tuesday" "25" "August" "2020" "16:24:07" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20200825162407.2az2vg5jyfbvy7ky@yuggoth.org>" "99" "[oss-security] [OSSA-2020-006] Nova: Live migration fails to update persistent domain XML (CVE-2020-17376)" nil nil nil "8" "2020082516:24:07" "[oss-security] [OSSA-2020-006] Nova: Live migration fails to update persistent domain XML (CVE-2020-17376)" (number mark "U       fungi@yuggot Aug 25   99/3529  " thread-indent "\"[oss-security] [OSSA-2020-006] Nova: Live migration fails to update persistent domain XML (CVE-2020-17376)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-006] Nova: Live migration fails to update persistent domain XML (CVE-2020-17376)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28466 invoked by uid 550); 25 Aug 2020 16:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28436 invoked from network); 25 Aug 2020 16:24:21 -0000
Date: Tue, 25 Aug 2020 16:24:07 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20200825162407.2az2vg5jyfbvy7ky@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s7dgtqhedit7revq"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2020-006] Nova: Live migration fails to update persistent
 domain XML (CVE-2020-17376)

--s7dgtqhedit7revq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2020-006: Live migration fails to update persistent domain XML
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 25, 2020
:CVE: CVE-2020-17376


Affects
~~~~~~~
- Nova: <19.3.1, >=3D20.0.0 <20.3.1, =3D=3D21.0.0


Description
~~~~~~~~~~~
Tadayoshi Hosoya (NEC) and Lee Yarwood (Red Hat) reported a
vulnerability in Nova live migration. By performing a soft reboot of
an instance which has previously undergone live migration, a user may
gain access to destination host devices that share the same paths as
host devices previously referenced by the virtual machine on the
source. This can include block devices that map to different Cinder
volumes on the destination than the source. The risk is increased
significantly in non-default configurations allowing untrusted users
to initiate live migrations, so administrators may consider
temporarily disabling this in policy if they cannot upgrade
immediately. This only impacts deployments where users are allowed to
perform soft reboots of server instances; it is recommended to disable
soft reboots in policy (only allowing hard reboots) until the fix can
be applied.


Patches
~~~~~~~
- https://review.opendev.org/747978 (Pike)
- https://review.opendev.org/747976 (Queens)
- https://review.opendev.org/747975 (Rocky)
- https://review.opendev.org/747974 (Stein)
- https://review.opendev.org/747973 (Train)
- https://review.opendev.org/747972 (Ussuri)
- https://review.opendev.org/747969 (Victoria)


Credits
~~~~~~~
- Tadayoshi Hosoya from NEC (CVE-2020-17376)
- Lee Yarwood from Red Hat (CVE-2020-17376)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1890501
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-17376


Notes
~~~~~
- The stable/rocky, stable/queens, and stable/pike branches are under exten=
ded
  maintenance and will receive no new point releases, but patches for them =
are
  provided as a courtesy.


--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--s7dgtqhedit7revq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl9FOydfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkVrxAAkSXuziPfbzFqr/yaRlq491QLO6kxpll4kQ7BmAHBxheB6oBYqVh40457
W+LEYJWq/g2oD/8/v/LfM86WNi+Ecij/aoTu6zvdpchJATWHWmLGoZox99x/AmMd
ocZZagqNn6hL7WBIItKFp6A3d3ZDFmeG5GG0z2s5k1OqDTTr1jjyFu50CdzSa1Bb
CkjG97B9RN/LKnUkPpIF5mLGhSdlWywRrOnT+N9ZAMLERtzyodEvoKakxbj4vY3Y
fZ/F5GPgPVPP0CiKXx1VbAYRxTxXrIlvW/cdVa5UtYEeq+bvrIoGienn5A8Ic9bO
zaTIKOaUQyDM6+LLTQ0WVl+fY4+VKyTow09Te1MbIZDnGwJgBO9/TlxMN9oP9Pyu
r2DF9ITG+6wSTkWiqANKX8l7Rm7eq6czi8PuiZo3rnJotBKvp9p+4gvm5Vy+r9P4
PrBO+4c+tUe6yt2k6+H03895k62JDJkprX2ph2ZUlXXzKSL+Gd9GKVcbAWgs3VQj
netU3GIVQZA7rOxGDTeZrI8idYcf/is0ssQN4DcVQObc1SqVh8kRQitnPsLJQdID
g/lrllRUP/12IrfKeKku31Et3+ORFJUuKSLNOkNibOYWxpZ36ZONfSf1sp+Jzf+R
4lOPrp3HhopOS5Aw7CgWcYD5HM6aqQPCeW1QQLIJFmNFd9dJX3U=
=0mdA
-----END PGP SIGNATURE-----

--s7dgtqhedit7revq--
