X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6024" "Thursday" "23" "February" "2017" "17:53:54" "+0100" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<46fe3e2c-05b5-f574-4bd6-eb62ad99b68c@x41-dsec.de>" "184" "[oss-security] Advisory X41-2017-004: Multiple Vulnerabilities in tnef" nil nil nil "2" "2017022316:53:54" "[oss-security] Advisory X41-2017-004: Multiple Vulnerabilities in tnef" (number mark "U       advisories@x Feb 23  184/6024  " thread-indent "\"[oss-security] Advisory X41-2017-004: Multiple Vulnerabilities in tnef\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32222 invoked by uid 550); 23 Feb 2017 17:23:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9604 invoked from network); 23 Feb 2017 16:55:13 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Organization: X41 D-Sec GmbH
Message-ID: <46fe3e2c-05b5-f574-4bd6-eb62ad99b68c@x41-dsec.de>
Date: Thu, 23 Feb 2017 17:53:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="oDTPXL0oDqVeWW79NAjdUG3MoIrom7iVi"
Subject: [oss-security] Advisory X41-2017-004: Multiple Vulnerabilities in tnef

--oDTPXL0oDqVeWW79NAjdUG3MoIrom7iVi
Content-Type: multipart/mixed; boundary="u6l3JJcOejQhsQasde24nPPJnQSXXO6bs";
 protected-headers="v1"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <46fe3e2c-05b5-f574-4bd6-eb62ad99b68c@x41-dsec.de>
Subject: Advisory X41-2017-004: Multiple Vulnerabilities in tnef

--u6l3JJcOejQhsQasde24nPPJnQSXXO6bs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2017-004

Multiple Vulnerabilities in tnef
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Confirmed Affected Versions: 1.4.12 and earlier
Confirmed Patched Versions:
Vendor: verdammelt
Vendor URL: https://github.com/verdammelt/tnef/
Vector: File
Credit: X41 D-Sec GmbH, Eric Sesterhenn
Status: Public
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2017-004-tnef/


Summary and Impact
------------------
Multiple Integer Overflows, Type Confusions and Out of Band Reads and
Writes have been discovered in tnef 1.4.12 and earlier. These could
be exploited by tricking a user into opening a malicious winmail.dat file.


Product Description
-------------------
=46rom the Readme.md:
TNEF is a program for unpacking MIME attachments of type
"application/ms-tnef". This is a Microsoft only attachment. Due to the
proliferation of Microsoft Outlook and Exchange mail servers, more and
more mail is encapsulated into this format. The TNEF program allows one
to unpack the attachments which were encapsulated into the TNEF
attachment. Thus alleviating the need to use Microsoft Outlook to view
the attachment. TNEF is mainly tested and used on GNU/Linux and CYGWIN
systems. It 'should' work on other UNIX and UNIX-like systems.



Integer Overflows in Memory Allocator
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: High
Vector: Local
CVE: Not yet assigned
CVSS Score: 7.0
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H

Summary and Impact
------------------
Several Integer Overflows, which can lead to Heap Overflows have been
identified in the functions, which wrap memory allocation.

Workarounds
-----------
None, X41 D-Sec GmbH recommends to update to the latest version.



Type Confusion in src/tnef.c:parse_file()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: High
Vector: Local
CVE: Not yet assigned
CVSS Score: 7.0
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H

Summary and Impact
------------------
Two type confusions have been identified in the parse_file() function.
These might lead to invalid read and write operations, controlled by an
attacker.

Workarounds
-----------
None, X41 D-Sec GmbH recommends to update to the latest version.



OOB Writes in src/mapi_attr.c:mapi_attr_read()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: High
Vector: Local
CVE: Not yet assigned
CVSS Score: High
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H

Summary and Impact
------------------
Two OOB Writes have been identified in src/mapi_attr.c:mapi_attr_read().
These might lead to invalid read and write operations, controlled by an
attacker.

Workarounds
-----------
None, X41 D-Sec GmbH recommends to update to the latest version.


Type Confusion in src/file.c:file_add_mapi_attrs()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Severity Rating: High
Vector: Local
CVE: Not yet assigned
CVSS Score: 7.0
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H

Summary and Impact
------------------
Four type confusions have been identified in the file_add_mapi_attrs()
function. These might lead to invalid read and write operations,
controlled by an attacker.

Workarounds
-----------
None, X41 D-Sec GmbH recommends to update to the latest version.


About X41 D-Sec GmbH
--------------------
X41 D-Sec is a provider of application security services. We focus on
application code reviews, design review and security testing. X41 D-Sec
GmbH was founded in 2015 by Markus Vervier. We support customers in
various industries such as finance, software development and public
institutions.

Timeline
--------
2017-02-17	Issue found
2017-02-19	Vendor contacted
2017-02-20	CVE IDs requested
2017-02-21	Vendor Reply
2017-02-23	Vendor releases patched version
2017-02-23	Advisory released

--=20
X41 D-SEC GmbH, Dennewartstr. 25-27, D-52068 Aachen
T: +49 241 9809418-0, Fax: -9
Unternehmenssitz: Aachen, Amtsgericht Aachen: HRB19989
Gesch=C3=A4ftsf=C3=BChrer: Markus Vervier




--u6l3JJcOejQhsQasde24nPPJnQSXXO6bs--

--oDTPXL0oDqVeWW79NAjdUG3MoIrom7iVi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAlivE6IACgkQo5Klpg50
CxCWSg/9EH5A9b2zWNtj5E5wE5Q/asS18QeG7TO45UK1eCXB8BCpCTx1aYd3uBEm
ECLyYLvC7Ol7+ouq3UVaPayOAE/G12vOM6PsYuXeWZkZEn1zCAypjAMb7hSc3kwN
Oh7TEJZNWioSwDx3hd9UoWoFW2wiCjKcMj+/NILkDwaZN6oTt9zysfTb3cUTuyet
4N8txEMan5pGOMN20qWKp7J7VaRwqG8/NDKo0MnJllZzV5HjuIhkN1ZFLiHM65Q8
r3Xpt3zeIyxAZq4zwK+wTcXFlYFE+d19s+JtD6pO4x+IrjGuDar8eTJ0F4NY0ISC
/TYlSDmmLW9d7+EJ17IPWHxxAXPbRsVCYPhwrrwSG3tGb2D0NDaFoWQBkkL9+yf9
J9KgBWgGOCkTj8OWeyoA2us6OMYh6JsJ1HiuSs2LgVtRymQz8Mz/eYWHz78hvIsm
RLVcCWBS9QXGxNJgGcqhv/fnYUwze+0lhN6rE6lmPIqI0IgboyxfcjfQ1nXoOZlt
xgG6jonoZ0aROolWRvQP51ZhkzeNpVWVk8JCshaLpIlYaUPxACpg2f0zb5E/UWVJ
IDpBADp6nVry6XxFM2Y26dVF9sx3jK+n3qemTlBYvHcagYraeMVRpXiutyDobk14
43pJ4MF0DYTgLZNqnfJk4dRZhD7yakP7W3uX7zJ+/r1XUSO6Q8Q=
=xcka
-----END PGP SIGNATURE-----

--oDTPXL0oDqVeWW79NAjdUG3MoIrom7iVi--
