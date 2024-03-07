Received: (qmail 11942 invoked by uid 550); 7 Mar 2024 22:41:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11912 invoked from network); 7 Mar 2024 22:41:15 -0000
Date: Thu, 7 Mar 2024 22:45:01 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20240307224501.c7jr2xfefbgo2olv@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nhkjqn33tpullsyh"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] OSSN-0093: Unresolved Vulnerability in OpenStack Murano

--nhkjqn33tpullsyh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

OSSN-0093
Unresolved Vulnerability in OpenStack Murano

### Summary ###
A severe security vulnerability in all versions of the Murano
service will be disclosed at a later date. Murano is an inactive
project[*], so no fix is currently under development for this
vulnerability. It is strongly recommended that any OpenStack
deployments disable or fully remove Murano, if installed, at the
earliest opportunity. This security note will be amended at the time
of public disclosure to include further details and context, but
action should be taken as soon as possible in order to minimize the
risk it poses.

[*] https://governance.openstack.org/tc/reference/emerging-technology-and-i=
nactive-projects.html#current-inactive-projects

### Affected Services / Software ###
- murano: all versions

### Discussion ###
This security note is a redacted placeholder, and will be amended
with complete details once the associated bug report becomes public.

### Recommended Actions ###
Disable the Murano service in, or fully remove it from, all
OpenStack deployments at the earliest opportunity.

### Credits ###
Not yet disclosed.

### Contacts / References ###
Authors:
- Jeremy Stanley, OpenStack Vulnerability Coordinator

This OSSN: https://wiki.openstack.org/wiki/OSSN/OSSN-0093

Original bug: https://launchpad.net/bugs/2048114 (not yet public)

Mailing List : [security-sig] openstack-discuss@lists.openstack.org

--=20
Jeremy Stanley, OpenStack Vulnerability Coordinator

--nhkjqn33tpullsyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmXqQ21fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkVQg/9EOF+R3Peb9y0mD5fXP9mi5ju5UdvxwUzOFsMiJsNnb3tLUtAXq7uPBum
Tov3/JyZdW8TCa5p6QHJ/0eqSGS0nXGPal7uUnVGMI4Hwq2Gr8vxm/9HopLvgE1L
J1J7SM+lFO1fzkii9IxEAoZwdDMncu9Z6VSp/z7oPrO8hocWeJSXISfCamrysrDx
hgFaHG5rrTB8E4bHRqU8t+LhDuj/ipBScK7kaMkCxeJuzx/QTlotx9ohYZyRDTt7
Tajta8VGCvjJCO8HjUcYt4BDXzgWxlpNx1sK2toqkJtEtFbpcq6XSIIA34E15wsJ
DY1VnQ14x0vYiMAY3fDR7wjHTOQeZaKOLxxqMSmRL/SpQQkIEQJdI+/TkA1rypG9
lDi+xEPsumRi9pNzUz7RvtWNGSVhbuqbzt2VwOsj6vcoQh8I1IvdTek/tkWyQDs+
8GsfNDzfTq7pOmwri+57GY8hHJasTSfo1OAjtoW8ySYpxTeCsSGENd6iKkQrlHE0
m6Ls/l54GKpUZhoXhyMexaQY7Us8za64x1/2ybDG/YpT2MIT6xS+Omq59X0J5yuR
KbuNm1pdwGglWETIrpkzKHJ+mpGPXKigZX222UlOFOJuf3yH0oedq+kWs9DwumQl
mca9J74xANkMp4Pzu2cSpVIFsb+LFsgOO50WUJl63ojGDWqfI9g=
=RMBX
-----END PGP SIGNATURE-----

--nhkjqn33tpullsyh--
