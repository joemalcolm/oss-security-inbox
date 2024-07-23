Received: (qmail 12282 invoked by uid 550); 23 Jul 2024 15:00:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12251 invoked from network); 23 Jul 2024 15:00:30 -0000
Date: Tue, 23 Jul 2024 15:00:19 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20240723150019.ljs3rfx4dlzu56sm@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ppjiffyrseghqnnw"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2024-002] OpenStack Nova: Incomplete file access fix and
 regression for QCOW2 backing files and VMDK flat descriptors
 (CVE-2024-40767)

--ppjiffyrseghqnnw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2024-002: Incomplete file access fix and regression for QCOW2
               backing files and VMDK flat descriptors
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: July 23, 2024
:CVE: CVE-2024-40767

Affects
~~~~~~~
- Nova: <27.4.1, >=3D28.0.0 <28.2.1, >=3D29.0.0 <29.1.1

Description
~~~~~~~~~~~
Arnaud Morin (OVH) reported a vulnerability in Nova. By supplying a
raw format image which is actually a specially crafted QCOW2 image
with a backing file path or VMDK flat image with a descriptor file
path, an authenticated user may convince systems to return a copy of
the referenced file=E2=80=99s contents from the server resulting in
unauthorized access to potentially sensitive data. All Nova
deployments are affected.

Patches
~~~~~~~
- https://review.opendev.org/924734 (2023.1/antelope)
- https://review.opendev.org/924733 (2023.2/bobcat)
- https://review.opendev.org/924732 (2024.1/caracal)
- https://review.opendev.org/924731 (2024.2/dalmatian)

Credits
~~~~~~~
- Arnaud Morin from OVH (CVE-2024-40767)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2071734
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-40767

Notes
~~~~~
- The patches linked above should apply cleanly to the public state
  of their respective branches at time of disclosure, and depend on
  some commits which merged after the `OSSA-2024-001
  <https://security.openstack.org/ossa/OSSA-2024-001.html>`_ fixes
  as well as the final states of the Nova changes linked from that
  advisory (those did see some minor adjustments before they
  merged).
- The QCOW2 issue is due to an incomplete fix in OSSA-2024-001
  affecting systems where the ``use_cow_images`` configuration
  option is disabled, while the VMDK issue is a regression of the
  earlier `OSSA-2023-002
  <https://security.openstack.org/ossa/OSSA-2023-002.html>`_
  vulnerability reintroduced by the new implementation in
  OSSA-2024-001. Both problems were identified in the final hours
  before OSSA-2024-001 publication but, due to time constraints,
  were redacted from that bug and moved to a separate report.
- Neither the methods introduced in these patches nor the fixes for
  OSSA-2024-001 are capable of blocking malicious images which are
  already resident in Nova's cache. At this time we do not have
  useful operator guidance for identifying and removing such
  existing images from the cache but strongly caution, if you do
  attempt to use the qemu-img tool to find them, to make sure you're
  using a version of it patched for `QEMU CVE-2024-4467
  <https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-4467>`_.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--ppjiffyrseghqnnw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmafxYNfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnTGw//bdzkcb9fHh8Qipvcx4iQSLPqar84jCrtCFJkJghpUNBeCQRsz2iGS5jk
4DUgaHR4SV+n9uufIZ4USMxMwVWsSNOFn8xHAWF/LKh7lU/GY+7/cMiUsAxVkllt
yvYx+Lvj+815a9gIgrzq9fBoZhXqeqwTOM/az7JprQ6GNLg8Ytye+s4gg5NPekWg
Qz8U6h7L/p0SDOnkirfqSrm/NKX/88v80ItCPpvs8u2+2ZAYc6/oKnthZk3BnDPY
K8dPKHHG1YpYWGzFko6s4UNWQNywYzPW6jafYorKwPv2hQ+2o+isjXvDg8nWrEhW
99SXfwoIAkgscsNwTxqsRl/TigjEBVWEw+ePP5xQo+lJ79PIym2HawrOsQtLRYij
dB9j5KouzDoPKDJ/Y9l43lddUj/zzOH5keIpt5IXNA0xOV0UHgimjqzZf30VoJ1x
szPSibb9ZsrNAVPr7rrObSzrLv+NfSN6y1Tv8gMQfi7/Dk/uqbz9sEZ8l9L3Tj7x
hYc8i6Utu5I25c0uXX/40tta0OnxIdO8DhZ56dBwqVFErfgPcNmApb1+7u5yk0uJ
toVGTVQWMlzSlwJZteTno74zmarI8g9TB04U0P7zxUy5vcbIvkujS/+IBUTWPmD+
rgDErnPp3v08se9bDC/Er3Nwnbmw7KSyn4YOkA4oWXfcKJgPHFM=
=aoaI
-----END PGP SIGNATURE-----

--ppjiffyrseghqnnw--
