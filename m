X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2615" "Thursday" "29" "August" "2019" "14:42:44" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "77" nil nil nil nil "8" nil nil (number mark "U       fungi@yuggot Aug 29   77/2615  " thread-indent "\"[oss-security] [OSSA-2019-004] Ageing time of 0 disables linuxbridge MAC learning (CVE-2019-15753)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2019-004] Ageing time of 0 disables linuxbridge MAC learning (CVE-2019-15753)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13355 invoked by uid 550); 29 Aug 2019 14:42:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13317 invoked from network); 29 Aug 2019 14:42:58 -0000
Date: Thu, 29 Aug 2019 14:42:44 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20190829144244.4cvuomwersv65t4o@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2mabyim7sklanip5"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2019-004] Ageing time of 0 disables linuxbridge MAC learning
 (CVE-2019-15753)

--2mabyim7sklanip5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2019-004: Ageing time of 0 disables linuxbridge MAC learning
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 29, 2019
:CVE: CVE-2019-15753


Affects
~~~~~~~
- Os-vif: >=3D1.15.0<1.15.2, 1.16.0


Description
~~~~~~~~~~~
James Denton with Rackspace reported a vulnerability in os-vif, the
Nova/Neutron network integration library. A hard-coded MAC ageing
time
of 0 disables MAC learning in linuxbridge, forcing obligatory
Ethernet
flooding for non-local destinations which both impedes network
performance and allows users to possibly view the content of packets
for instances belonging to other tenants sharing the same network.
Only deployments using the linuxbridge backend are affected.


Patches
~~~~~~~
- https://review.opendev.org/678098 (Stein)
- https://review.opendev.org/672834 (Train)


Credits
~~~~~~~
- James Denton from Rackspace (CVE-2019-15753)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1837252
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15753

--=20
Jeremy Stanley, on behalf of the OpenStack VMT

--2mabyim7sklanip5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAl1n5GRfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmerw//aaj2lbq53scVY0wvL+oHBoUd5K+iWWr599oeg2s9WPq66eTXyLOE1fHe
n6fu0MOGWc04ll6YJ4yy3KJP+qRHXNU8ArIbrRdUhAIITp4X0unTJa41TOY3V/CY
X0O0DjpzUA9CDGydMCzktEHwBBuM3BkOwMuebOKpEpjrjX5JixaUB11C3obhGI9n
zk7tGu54BU0I94NdglN4Mv6LRsP3pyIvef/TyvJB2/nQsInu/UOFNd5T1owAND8P
+wmT92WT+QrAGIT7ZEvU3aeVVr71BP2O1lX83/y1PCX3qaTWGholJgt3sJId1GEd
XyA17O5w6FiSRwg8p8XrI2ypwE8PNCxQIsuKUouNqKr8lvNdzEONlrJefeS5kkDb
U485J+UTXoA36CSg7LZ/BmBB8iPUr34Sblg+mDJckv4QI5BveLmaqLrTp2cmimub
JiGpR3GpD6S4pgxnt+y8EQ3TaYjLdoADhRNyt0NPhFKS7IFcwf4Udt0QhyT8sYsb
KmFtWj/HZ8U8MpF1o+2umbu4gss/rJTXwxCeN8cZ/PJTWOMql0hUZF423w50BNoC
IwbYkOuodkbYh3Z8IIh83SD3PI0KxydagpXG0K/McnIuQCkGHKcveTQTYEIPOWe0
8iGZugtHipJGi2hIpgkgBm+IqM2ZKWCWr+7HJXSDSgd5CicsaoM=
=8nFF
-----END PGP SIGNATURE-----

--2mabyim7sklanip5--
