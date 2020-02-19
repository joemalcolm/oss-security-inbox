X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2653" "Wednesday" "19" "February" "2020" "17:14:16" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "81" nil "^Date:" nil nil "2" nil nil (number mark "        fungi@yuggot Feb 19   81/2653  " thread-indent "\"[oss-security] [OSSA-2020-001] Nova can leak consoleauth token into log files (CVE-2015-9543)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-001] Nova can leak consoleauth token into log files (CVE-2015-9543)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25849 invoked by uid 550); 19 Feb 2020 17:14:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25814 invoked from network); 19 Feb 2020 17:14:29 -0000
Message-ID: <20200219171416.vofjngtntxvlocx2@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rjgbnf2cz2pfmqn6"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Wed, 19 Feb 2020 17:14:16 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA-2020-001] Nova can leak consoleauth token into log files
 (CVE-2015-9543)
To: oss-security@lists.openwall.com

--rjgbnf2cz2pfmqn6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2020-001: Nova can leak consoleauth token into log files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: February 19, 2020
:CVE: CVE-2015-9543


Affects
~~~~~~~
- Nova: <18.2.4,>=3D19.0.0<19.1.0,>=3D20.0.0<20.1.0


Description
~~~~~~~~~~~
Paul Carlton from HP reported a vulnerability in Nova. An attacker
with read access to the service=C3=A2=E2=82=AC=E2=84=A2s logs may obtain to=
kens used for
console access. All Nova setups using novncproxy are affected.


Patches
~~~~~~~
- https://review.opendev.org/707845 (Queens)
- https://review.opendev.org/704255 (Rocky)
- https://review.opendev.org/702181 (Stein)
- https://review.opendev.org/696685 (Train)
- https://review.opendev.org/220622 (Ussuri)


Credits
~~~~~~~
- Paul Carlton from HP (CVE-2015-9543)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1492140
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-9543


Notes
~~~~~
- The stable/queens branch is under extended maintenance and will receive no
  new point releases, but a patch for it is provided as a courtesy.

--=20
Jeremy Stanley, on behalf of OpenStack Vulnerability Management

--rjgbnf2cz2pfmqn6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl5NbOhfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCne6w/+OkVjD2kyNxJUgMWkOxKS9dNVu/H7zJXf5NDTpGRrqJvLkSJ3Nj9ZqGLD
fO8NT1e8PpHKtRaEdRwiJrwToBFLrzb1RWBwqvHd1gpyPM41WEfytXuY24dZv1vg
rgZ5RL7cKyRNgQ4VKIGNHoGxHkPsdaA8StlX94Cl7/Awjad73juaAA5BDlrL/zNE
CTrnw1AY3v6oGF0QtJD65P/qavwimdAnhUWSWFGHLYJZQfeLwIa7uYYH1m02TDr+
yFLM0sf7RHqLcjjC7tidcBWe+lADS+fWcNz/ZM2H2njE7E/UOqUQkGJwOjfV+x+3
FP8BgqnvNigLkFVMPbx+/8fRwW8/+ow2SX/QBXFCsKPdsHNW547yiTVapOn80YGV
NQcyadcPXWUSqKaVEWVdD1i+Hd5Suulay+7+9gzLgMAVl/rh6LcyxLPu9ceVghh9
q+HCm+Dblnzgfz3PcXFGD8RjvOug0XrBXA80JsR92oyx3QXqMS5ZBEOauJ5kKeZq
PBJJa3kL08BsmZnyvWJQLqCpaXTpgOLwy9csTHwTNkCCJwQlhJE7vl1Xwl4fb5Lx
0T+uzEMPeizBs1kBFovzPcLDQL5/297M7SOi1tvrG18S1YsAADBO5Y6TSC3pjsAQ
eHZFS4/wIRrx9o6pLv9Kqj1tS2eX5aKIv8y2cKitrK1wu417AwU=
=Run8
-----END PGP SIGNATURE-----

--rjgbnf2cz2pfmqn6--
