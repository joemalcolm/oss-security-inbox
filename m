X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2860" "Monday" "18" "March" "2019" "15:47:23" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20190318154723.5tucbpkzibivnczg@yuggoth.org>" "80" "[oss-security] [OSSA-2019-001] Unsupported dport option prevents applying security groups in OpenStack Neutron (CVE-2019-9735)" "^Date:" nil nil "3" "2019031815:47:23" "[oss-security] [OSSA-2019-001] Unsupported dport option prevents applying security groups in OpenStack Neutron (CVE-2019-9735)" (number mark "        fungi@yuggot Mar 18   80/2860  " thread-indent "\"[oss-security] [OSSA-2019-001] Unsupported dport option prevents applying security groups in OpenStack Neutron (CVE-2019-9735)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2019-001] Unsupported dport option prevents applying security groups in OpenStack Neutron (CVE-2019-9735)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6014 invoked by uid 550); 18 Mar 2019 15:47:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5977 invoked from network); 18 Mar 2019 15:47:38 -0000
Message-ID: <20190318154723.5tucbpkzibivnczg@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c2c5ux62gv22ci6m"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Mon, 18 Mar 2019 15:47:23 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA-2019-001] Unsupported dport option prevents applying security
 groups in OpenStack Neutron (CVE-2019-9735)
To: oss-security@lists.openwall.com

--c2c5ux62gv22ci6m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2019-001: Unsupported dport option prevents applying security groups
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: March 13, 2019
:CVE: CVE-2019-9735


Affects
~~~~~~~
- Neutron: <10.0.8, >=3D11.0.0 <11.0.7, >=3D12.0.0 <12.0.6, >=3D13.0.0 <13.=
0.3


Description
~~~~~~~~~~~
Erik Olof Gunnar Andersson with Blizzard Entertainment reported a
vulnerability in Neutron's iptables firewall module. By setting a
destination port in a security group rule along with a protocol which
doesn't support that option (for example, VRRP), an authenticated user
may block further application of security group rules for instances
from any project/tenant on the compute hosts to which it's applied.
Only deployments using the iptables security group driver are
affected.


Patches
~~~~~~~
- https://review.openstack.org/640791 (Ocata)
- https://review.openstack.org/640790 (Pike)
- https://review.openstack.org/640702 (Queens)
- https://review.openstack.org/640685 (Rocky)
- https://review.openstack.org/640619 (Stein)


Credits
~~~~~~~
- Erik Olof Gunnar Andersson from Blizzard Entertainment (CVE-2019-9735)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1818385
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-9735

--=20
Jeremy Stanley

--c2c5ux62gv22ci6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAlyPvYpfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkGFw//d0Tuo+T2e46mUyOO1PPU/VDBmFty+YFvMaezx+8U4VAAiop0s9B51fzq
lO/FnuTWdmv+DfjkAArZ3FDygpglpghLhkNc6/GcJ705rNz/aVpOkKbBVf/nNQpD
zQeYaNr6XytmhM1lrSsfrRY+93c3T9PPa8Bf1UUrl5CK7Bs2HyLaBIa1xhp5tSgP
5jJ36GWjkX96egTVblw2WoeRHJrryAWMoyHPo+TEtO7YdfKseVfXn41IEWWStMNq
TUPDHvw53lxDH3to/ad7fbeAjlu6iayb9JUSsXrkX+bmtLEhOP2pPqNAEZFpMh2B
iwRxPDvt5YWPORPyU461hdAYqUup3pQPXcdtvA/wHjRMq+nalBRinCIVfA4b7MXK
vDhJUa+7DId5EfFyyYvBAo4WXX6/0ywM8G1GhtOek4zH+a4bpVO2rZD4HzkmrVpj
M3067koStWZJo0YGiZUqgLoIBoahV/HONskv72yIR0vTVYTYQj+NQkvbEuIOIk9A
Z+w4k2Tv+kxwb43FjQYu8zaLlfk80+iXUg12Wd0AcM9WQQeUcVB2Lt62cwn+jvcs
3a8/xK6jiKXVrw76l5n7ft/UJTXXePxqT1zVGFgWSxbHG9i+HM3wt1OQYldr7rm+
k101JWWW4RgR0LYtwjyWABx2bsJW/nkv2IzMNwfOvqymMFwDtXM=
=Ahhl
-----END PGP SIGNATURE-----

--c2c5ux62gv22ci6m--
