X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2846" "Tuesday" "5" "December" "2017" "16:50:34" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20171205165034.GU28203@yuggoth.org>" "81" "[oss-security] [OSSA-2017-006] Nova FilterScheduler doubles resource allocations during rebuild with new image (CVE-2017-17051)" nil nil nil "12" "2017120516:50:34" "[oss-security] [OSSA-2017-006] Nova FilterScheduler doubles resource allocations during rebuild with new image (CVE-2017-17051)" (number mark "U       fungi@yuggot Dec  5   81/2846  " thread-indent "\"[oss-security] [OSSA-2017-006] Nova FilterScheduler doubles resource allocations during rebuild with new image (CVE-2017-17051)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19469 invoked by uid 550); 5 Dec 2017 16:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18411 invoked from network); 5 Dec 2017 16:50:47 -0000
Date: Tue, 5 Dec 2017 16:50:34 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20171205165034.GU28203@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qcz4xfO8nvR/PV7q"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2017-006] Nova FilterScheduler doubles resource allocations
 during rebuild with new image (CVE-2017-17051)

--Qcz4xfO8nvR/PV7q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-006: Nova FilterScheduler doubles resource allocations during reb=
uild with new image
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: December 05, 2017
:CVE: CVE-2017-17051


Affects
~~~~~~~
- Nova: =3D=3D16.0.3


Description
~~~~~~~~~~~
Matt Riedemann from Huawei reported a vulnerability in OpenStack
Nova's default FilterScheduler. By repeatedly rebuilding an instance
with new images, an authenticated user may consume untracked resources
on a hypervisor host leading to a denial of service. This regression
was introduced with the fix for OSSA-2017-005 (CVE-2017-16239),
however, only Nova stable/pike or later deployments with that fix
applied and relying on the default FilterScheduler are affected.


Patches
~~~~~~~
- https://review.openstack.org/523214 (Pike)
- https://review.openstack.org/521662 (Queens)


Credits
~~~~~~~
- Matt Riedemann from Huawei (CVE-2017-17051)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1732976
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-17051

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--Qcz4xfO8nvR/PV7q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJaJs5aXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpAhQP/0lLi/ekIrR7HLm1xX4LeqHh
VWmgbtRDNghkhH0PCM48J/xYtVrnU7mYoGZrx3oqhyQHOm3PE9iZc2Ez/xEnXEVi
8qLENuy/6X45DhlrP0t2uhtwD/SRk07VgVVAZgmCKD+N473ogSK38UJoQlTJG1dG
Fyl34PirMUX+A1DOJVLZbaef45oa5NiAwC7Y7fgAOi8NIY7KCSiHjxxXDjzfkgh8
MHjgxe/lsqK4Io8lkjrOBZiy5jg91+4929wOBcIKrDWhximmugvkWg0hg7QOnjuY
Tv147XneUIAFUVT65R2D8BS2nfYhVBHy44MW6cR2YO7SQ8vnuMyodn/Mm+AvSpde
/8gFq5vw/3Pd6oVJK8Vk0NpCGR58JIGJUJcoG9JuNsYaTNHx0GeRArmUrWcSztEP
fyox9li/RddIg9NKfrIONKx9jWxVK43CfH9hPFiI97ImnPhbeNXGB2gWvAydlmq7
jfXfFnbr5xm08FVA9DrY6LRfntIumKM+o5J3Zw041WEjMe1HL7NnRPnbsrSAZFRK
GeQWP3Axo/zN/a8Y7Vf6czMgNeLTSHLcBbBm/Qgaepzexa1Ao6f/im2zfJCdxnrT
bDyrot2XR7rYFdHdOj5pl/vk4KCI6l/FWNuWiEEBseZz4dHYpQVo1mJ4MsQAhQV6
QVkhzpNq8fST6GX+THVl
=W766
-----END PGP SIGNATURE-----

--Qcz4xfO8nvR/PV7q--
