Received: (qmail 30558 invoked by uid 550); 14 Mar 2024 20:22:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30525 invoked from network); 14 Mar 2024 20:22:58 -0000
Date: Thu, 14 Mar 2024 20:27:02 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20240314202702.nl2rwe5oubaymb3y@yuggoth.org>
References: <20240307224501.c7jr2xfefbgo2olv@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a3ibalyraymjak6m"
Content-Disposition: inline
In-Reply-To: <20240307224501.c7jr2xfefbgo2olv@yuggoth.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] OSSN-0093: [OpenStack Murano] Unsafe Environment Handling in MuranoPL

--a3ibalyraymjak6m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

OSSN-0093
Unsafe Environment Handling in MuranoPL

### Summary ###
The Murano service's MuranoPL extension to the YAQL language fails
to sanitize the supplied environment, leading to potential leakage
of sensitive service account information. Murano is an inactive
project[*], so no fix is currently under development for this
vulnerability. It is strongly recommended that any OpenStack
deployments disable or fully remove Murano, if installed, at the
earliest opportunity.

[*] https://governance.openstack.org/tc/reference/emerging-technology-and-i=
nactive-projects.html#current-inactive-projects

### Affected Services / Software ###
- murano: all versions

### Discussion ###
The YAQL interpreter project has released a new major version
(3.0.0) which removes support for format strings, a feature
necessary to exploit this condition in MuranoPL. Because Murano is
not considered under active maintenance in OpenStack, its complete
removal from all deployments is still strongly advised.

Note that this behavior change in YAQL means configurations relying
on string formatting will no longer be interpreted the same after
upgrading, which could cause them to not work as intended by their
users in services which accept YAQL (including Heat and Mistral).
Reliance on that feature is considered to be unusual, but users
should be made aware in case it negatively impacts their
configuration.

### Recommended Actions ###
Disable the Murano service in, or fully remove it from, all
OpenStack deployments at the earliest opportunity.

### Credits ###
kirualawliet and edwardpeng from Sangfor Security Research Team

### Contacts / References ###
Authors:
- Jeremy Stanley, OpenStack Vulnerability Coordinator

This OSSN: https://wiki.openstack.org/wiki/OSSN/OSSN-0093

Original bug: https://launchpad.net/bugs/2048114

Mailing List : [security-sig] openstack-discuss@lists.openstack.org

--=20
Jeremy Stanley, OpenStack Vulnerability Coordinator

--a3ibalyraymjak6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmXzXZZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCn7kg/+NuvwONw6ZBj18XK6bwB6R2isBKvsj1FcxL/W5i6uSLRM95tLTJ5LPolH
FILzHCS71S1fH2Ho7N0rbZ6+VftCjtBa2CIYUZ8dsfdom3xOLJqhMp8Pl32Do0Fn
l9ovUtREjEY1xb8dOa/WfEblnkL9j6XVQsOBIkXh9YnQNt53exw5y4y4xpR+brUX
NTn5Ouhg7VA4c7SCJE97WswrDPwHmRGvP9ZLoh/PPi9TvX1Qc+9Y5qrPiYg0pL44
T4V7q+X5UC8IpMFbLfdgq1l/4t+iK1Z+c+IRarWVpG0sOheQdjYQxJsxAPotgua2
EJDWHVBSjQggq8nkWUnon8xdvI9uziBAw7Ib4ObzjQSomdaJPteJ1kJTY13HR9P4
+H0Y7IdHS7N6LnYQWwXO5H/Pg2Fazy4I3d9XP6NVA21TFtJiPjZx7YzEjV4Z917n
1C2layOtfXZ0cIubk9GF9drQUjjat26LuiXotx3VmQVWuF4WAO9OVMNbEnFCr8ZR
pkoovrPIZaX3Fe+wWBlLLgkMA9c0akXrSk6twI1q2e0vk3AYCv9txwumA5Q0udDa
jI7t/jatkIn4Eqy8mnFJu5MHbwNCLFJVisIh/zxxV6ADxGk3EC6R5PXssDSk6tfr
Gd9n8m7RG6XG4wKgK0wiGu59zzX1JQ6E6TMfc72lK4hEwxIeTSo=
=Xksb
-----END PGP SIGNATURE-----

--a3ibalyraymjak6m--
