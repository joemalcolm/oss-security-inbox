X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3880" "Monday" "11" "December" "2017" "13:34:31" "+0100" "Remi Gacogne" "remi.gacogne@powerdns.com" "<d664369b-77c6-b0e3-7d40-5d8ef912ee3d@powerdns.com>" "100" "[oss-security] PowerDNS Security Advisory 2017-08" nil nil nil "12" "2017121112:34:31" "[oss-security] PowerDNS Security Advisory 2017-08" (number mark "U       remi.gacogne Dec 11  100/3880  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2017-08\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29910 invoked by uid 550); 11 Dec 2017 12:34:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29876 invoked from network); 11 Dec 2017 12:34:44 -0000
To: oss-security@lists.openwall.com
From: Remi Gacogne <remi.gacogne@powerdns.com>
Message-ID: <d664369b-77c6-b0e3-7d40-5d8ef912ee3d@powerdns.com>
Date: Mon, 11 Dec 2017 13:34:31 +0100
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="N8wuXIBR0lhen2AEXU7DEE7XsdVm8QgJT"
Subject: [oss-security] PowerDNS Security Advisory 2017-08

--N8wuXIBR0lhen2AEXU7DEE7XsdVm8QgJT
Content-Type: multipart/mixed; boundary="d6bMwWdqX7rWV7F90kgsTACX83WMPvDdc";
 protected-headers="v1"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <d664369b-77c6-b0e3-7d40-5d8ef912ee3d@powerdns.com>
Subject: PowerDNS Security Advisory 2017-08

--d6bMwWdqX7rWV7F90kgsTACX83WMPvDdc
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello everybody,

We just released PowerDNS Recursor 4.0.8, fixing a security issue
(CVE-2017-15120) affecting PowerDNS Recursor from 4.0.0 up to and
including 4.0.7. PowerDNS Recursor 3.7.4 and 4.1.0 are not affected. The
full security advisory can be found below and at
https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisor=
y-2017-08.html

The issue is a parsing error while handling authoritative answers
containing a CNAME of a different class than IN, leading to a recursor
crash via a NULL-pointer dereference. We don't believe this crash to be
exploitable, but it results in an unauthenticated remote denial of
service which can be mitigated by running the recursor inside a
supervisor like supervisord or systemd so it can be automatically restarted.

We also provide a minimal patch for the 4.0.7 release at
https://downloads.powerdns.com/patches/2017-08/

Please feel free to contact me directly if you have any question.

Best regards,


Remi and the PowerDNS team

PowerDNS Security Advisory 2017-08: Crafted CNAME answer can cause a
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
denial of service
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  CVE: CVE-2017-15120
-  Date: December 11th 2017
-  Credit: Toshifumi Sakaguchi
-  Affects: PowerDNS Recursor from 4.0.0 up to and including 4.0.7
-  Not affected: PowerDNS Recursor 3.7.4, 4.0.8, 4.1.0
-  Severity: High
-  Impact:  Denial of service
-  Exploit: This problem can be triggered by an authoritative server
   sending a crafted CNAME answer with a class other than IN to the
Recursor.
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version
-  Workaround: run the process inside a supervisor like supervisord or
systemd

An issue has been found in the parsing of authoritative answers in
PowerDNS Recursor, leading to a NULL pointer dereference when parsing a
specially crafted answer containing a CNAME of a different class than IN.
This issue has been assigned CVE-2017-15120.

When the PowerDNS Recursor is run inside a supervisor like supervisord
or systemd, it will be automatically restarted, limiting the impact to
somewhat degraded service.

PowerDNS Recursor from 4.0.0 up to and including 4.0.7 are affected.

For those unable to upgrade to a new version, a minimal patch is
`available <https://downloads.powerdns.com/patches/2017-08>`__

We would like to thank Toshifumi Sakaguchi for finding and subsequently
reporting this issue.



--d6bMwWdqX7rWV7F90kgsTACX83WMPvDdc--

--N8wuXIBR0lhen2AEXU7DEE7XsdVm8QgJT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE1jAMq8v0abvjkuUDogjtT4r1hEYFAloue1cACgkQogjtT4r1
hEZvfwf/YP3x1lZvBvPwDcJPAXY4OItbGxiokP0u/X5cdr2+LfvrpfztMiXcaFKJ
lKy+MHkNXI3HeL/N4SNMfS2bMQhKRi1A+aNB0QaE57qOE04ZvJ18Jk3opsTP8eQr
THyufm56H89T9bXHtzSn0cRpm8eTBLni3rvaPcSyMY5SJbggOwkCBjAhemVvTkNR
EVg/IwPMKGi/COJQ8ibcjPLDhUeaZ7Oqlywi6YiISD7yb4VTInkdU9mVzB3EpDZt
mey/pPTARpZZMaQKtVrbVvnjqaAeusqjNWNqc6vIYQWVm+R53e0yjXSVoKqcTr3C
z0/VxNSiM2WH4cOk9PHABaq4vemx/g==
=Wj//
-----END PGP SIGNATURE-----

--N8wuXIBR0lhen2AEXU7DEE7XsdVm8QgJT--
