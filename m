X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3066" "Tuesday" "17" "August" "2021" "15:17:17" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "88" "[oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil "8" nil nil (number mark "U       fungi@yuggot Aug 17   88/3066  " thread-indent "\"[oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter platforms (CVE-2021-38598)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5425 invoked by uid 550); 17 Aug 2021 15:17:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5384 invoked from network); 17 Aug 2021 15:17:30 -0000
Date: Tue, 17 Aug 2021 15:17:17 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210817151717.m4qgvhye2svlvxmp@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7kscmgf6k44rqx5l"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-004] Neutron: Linuxbridge ARP filter bypass on Netfilter
 platforms (CVE-2021-38598)

--7kscmgf6k44rqx5l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-004: Linuxbridge ARP filter bypass on Netfilter platforms
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 17, 2021
:CVE: CVE-2021-38598


Affects
~~~~~~~
- Neutron: <16.4.1, >=3D17.0.0 <17.1.3, =3D=3D18.0.0


Description
~~~~~~~~~~~
Jake Yip with ARDC and Justin Mammarella with the University of
Melbourne reported a vulnerability in Neutron's linuxbridge driver
on newer Netfilter-based platforms (the successor to IPTables). By
sending carefully crafted packets, anyone in control of a server
instance connected to the virtual switch can impersonate the
hardware addresses of other systems on the network, resulting in
denial of service or in some cases possibly interception of traffic
intended for other destinations. Only deployments using the
linuxbridge driver with ebtables-nft are affected.


Patches
~~~~~~~
- https://review.opendev.org/804058 (Train)
- https://review.opendev.org/804057 (Ussuri)
- https://review.opendev.org/804056 (Victoria)
- https://review.opendev.org/785917 (Wallaby)
- https://review.opendev.org/785177 (Xena)


Credits
~~~~~~~
- Jake Yip from ARDC (CVE-2021-38598)
- Justin Mammarella from University of Melbourne (CVE-2021-38598)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1938670
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-38598


Notes
~~~~~
- The stable/train branch is under extended maintenance and will
  receive no new point releases, but a patch for it is provided as a
  courtesy.

--=20
Jeremy Stanley

--7kscmgf6k44rqx5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmEb0vdfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnTZRAAlGJqLwLhyeVKdFVj6uuW+hziG8RZKiDAqovkt8O38kB77zn+b1MJ0nhA
vLVttpuSauqJ4O0hja0fllepG9qtzM+BoQM5X+EAsHm88vLRLMacY13DCiyia3PB
uf3eN4ybymrD7ltiIqHcEvYWmsQC4yox8hG0dz4aEV3UUOH6ewGP9Tc9gzAzdW1+
7Tw+RGtl1k2OS1CwSuNH0fWnNBQhEmJeTRwLobVaoLVTsiyULeaA9BueKbaSQTIJ
eB9kN6LpH4ewKbolYdsjRbdUMV4JgtjMqbmQ4hRb1xt3k+CE0dCRsk7YXiI4r6Qp
kkUm1I9oVBn3zhr14lViUhwUzVL96gipbq3aA7VCj+8XlatbFZZ2XTbFKJfkvYOC
urW4ga365MjRuqtIQko8VF75vX+vFa9GIxU0hupmISblNdthcOIJRZqGBqDcEw3l
8Li/9cRur+le1lprES8q5ktW0WQQ1bZhNioDjxeurnGqKv6cljZMz5oR48UuBaxO
fBf4p2bwmANnjOfCxRPxFK/D1JoFIDXNqlLrPsTnL84R6wCITRqbOe0PQXlcH257
I7otAKYLFzn4ygGXxadslMt9gP324D1/zXpoSk1WITKmBUhmjrKe9b+kRs2mTRkO
xLFWgy9MVPviKZZA7QmGUzSIwtTnVKi5JKQXA4fRTYUf9YtWF9A=
=wxvZ
-----END PGP SIGNATURE-----

--7kscmgf6k44rqx5l--
