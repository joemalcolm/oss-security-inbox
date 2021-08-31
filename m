X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2766" "Tuesday" "31" "August" "2021" "15:00:38" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "78" "[oss-security] [OSSA-2021-005] Neutron: Arbitrary dnsmasq reconfiguration via extra_dhcp_opts (CVE-2021-40085)" nil nil nil "8" nil nil (number mark "U       fungi@yuggot Aug 31   78/2766  " thread-indent "\"[oss-security] [OSSA-2021-005] Neutron: Arbitrary dnsmasq reconfiguration via extra_dhcp_opts (CVE-2021-40085)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-005] Neutron: Arbitrary dnsmasq reconfiguration via extra_dhcp_opts (CVE-2021-40085)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16324 invoked by uid 550); 31 Aug 2021 15:00:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16293 invoked from network); 31 Aug 2021 15:00:51 -0000
Date: Tue, 31 Aug 2021 15:00:38 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210831150038.5aqn2pqqfrupkjqm@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cyadsncw4i5banx4"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-005] Neutron: Arbitrary dnsmasq reconfiguration via
 extra_dhcp_opts (CVE-2021-40085)

--cyadsncw4i5banx4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-005: Arbitrary dnsmasq reconfiguration via extra_dhcp_opts
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 31, 2021
:CVE: CVE-2021-40085


Affects
~~~~~~~
- Neutron: <16.4.1, >=3D17.0.0 <17.2.1, >=3D18.0.0 <18.1.1


Description
~~~~~~~~~~~
Pavel Toporkov reported a vulnerability in Neutron. By supplying a
specially crafted extra_dhcp_opts value, an authenticated user may add
arbitrary configuration to the dnsmasq process in order to crash the
service, change parameters for other tenants sharing the same
interface, or otherwise alter that daemon's behavior. This
vulnerability may also be used to trigger a configuration parsing
buffer overflow in versions of dnsmasq prior to 2.81, which could lead
to remote code execution. All Neutron deployments are affected.


Patches
~~~~~~~
- https://review.opendev.org/806750 (Ussuri)
- https://review.opendev.org/806749 (Victoria)
- https://review.opendev.org/806748 (Wallaby)
- https://review.opendev.org/806746 (Xena)


Credits
~~~~~~~
- Pavel Toporkov (CVE-2021-40085)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1939733
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-40085

--=20
Jeremy Stanley

--cyadsncw4i5banx4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmEuRBZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmsXw//S4ng4/I0+sgxveDd6wvvGDanVbNTrJypUgfo/WegKMYeC22DA/zRouQr
LMRLJm1xe+/To3gpMz42z4npjLqL2bm9UyAEMf9lmwNSwd9/IwZgNte6D7DlHDoj
lc9AD99bQyjzuaOcVs/5uIZg7WbW2y4J9+XQrCqU78jtZGAZEQop7JmfwijnjLVG
HOXxbB6Nn5iDyUokIJ/49e5aJgqd0PabUtYlkaeAaHC+WEookn1pkOh92xSxeptZ
lG/yuWdFSK0rjsMugHygdfjyYnVcDs+TDyXv2NJE6gDKgV6YTpb9K9GP7FZEwVrU
p6sLJ1TU9slKMqFNEvRcgMUA5MaGtVAu2smAf9FzEKU9p+7+Ju+woT1WNXI5pOFP
u6sq2g58mqVWEvRq7Hpydg3HeSnnomz2Z85Jv/QHNuP2bq3SxUCbWRmb4+x8WFMi
e/W/0gP3dp105Jveyat/9ZiR+EKKnvnipvANP8IwgWhNRAFX3SuakaySOdIDKU/1
HeiOL4bu/tbM1mcbLDZhTsXwbhoxpJUyK+Pz/1mOizWQl19E2nXyXi8+PNdTnUpz
uaX24/eF/GFkw7HfzvhP09pLnmm7fUYMz5hjRB3PuOyxV/hC+rzawSYxgmyMrufY
YuZBgbleDQdOvKEzHUXt6peVpmbQTKuz2ZaGNU9E4w+ic1WkQ5o=
=TRTR
-----END PGP SIGNATURE-----

--cyadsncw4i5banx4--
