X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4861" "Monday" "21" "August" "2017" "17:49:18" "+0200" "Remi Gacogne" "remi.gacogne@powerdns.com" "<c126c968-f80d-6036-f1b7-22bedd1fbfa0@powerdns.com>" "125" "[oss-security] PowerDNS Security Advisories for dnsdist 2017-01 and 2017-02" nil nil nil "8" "2017082115:49:18" "[oss-security] PowerDNS Security Advisories for dnsdist 2017-01 and 2017-02" (number mark "U       remi.gacogne Aug 21  125/4861  " thread-indent "\"[oss-security] PowerDNS Security Advisories for dnsdist 2017-01 and 2017-02\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22051 invoked by uid 550); 21 Aug 2017 15:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22019 invoked from network); 21 Aug 2017 15:49:34 -0000
To: oss-security@lists.openwall.com
From: Remi Gacogne <remi.gacogne@powerdns.com>
Message-ID: <c126c968-f80d-6036-f1b7-22bedd1fbfa0@powerdns.com>
Date: Mon, 21 Aug 2017 17:49:18 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6IasI3NeQab1L2A0wwKxp2pOfWuJgDB5D"
X-purgate-ID: 151428::1503330559-00000233-00F41778/0/0
X-purgate-type: clean
X-purgate-size: 5049
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
Subject: [oss-security] PowerDNS Security Advisories for dnsdist 2017-01 and 2017-02

--6IasI3NeQab1L2A0wwKxp2pOfWuJgDB5D
Content-Type: multipart/mixed; boundary="aWBCDndUFi8OkiNLmNq8jS91KEcNMIhlR";
 protected-headers="v1"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <c126c968-f80d-6036-f1b7-22bedd1fbfa0@powerdns.com>
Subject: PowerDNS Security Advisories for dnsdist 2017-01 and 2017-02

--aWBCDndUFi8OkiNLmNq8jS91KEcNMIhlR
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi all,

Two security issues of low severity have been reported to us, and we
just released a new version of dnsdist, 1.2.0, addressing them:
- 2017-01: Crafted backend responses can cause a denial of service
- 2017-02: Alteration of ACLs via API authentication bypass

The full security advisories are provided below, and can also be
found at:
-
https://dnsdist.org/security-advisories/powerdns-advisory-for-dnsdist-2017-=
01.html
-
https://dnsdist.org/security-advisories/powerdns-advisory-for-dnsdist-2017-=
02.html

Minimal patches for 1.1.0 are available for those unable to fully upgrade:
- https://downloads.powerdns.com/patches/2017-01/
- https://downloads.powerdns.com/patches/2017-02/

Please feel free to contact me directly if you have any question.

- PowerDNS Security Advisory 2017-01 for dnsdist: Crafted backend
responses can cause a denial of service

CVE: CVE-2016-7069
Date: 2017-08-21
Credit: Guido Vranken
Affects: dnsdist up to and including 1.2.0 on 32-bit systems
Not affected: dnsdist 1.2.0, dnsdist on 64-bit (all versions)
Severity: Low
Impact: Degraded service or Denial of service
Exploit: This issue can be triggered by sending specially crafted
response packets from a backend
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Workaround: Disable EDNS Client Subnet addition
An issue has been found in dnsdist in the way EDNS0 OPT records are
handled when parsing responses from a backend. When dnsdist is
configured to add EDNS Client Subnet to a query, the response may
contain an EDNS0 OPT record that has to be removed before forwarding the
response to the initial client. On a 32-bit system, the pointer
arithmetic used when parsing the received response to remove that record
might trigger an undefined behavior leading to a crash.

dnsdist up to and including 1.1.0 is affected on 32-bit systems. dnsdist
1.2.0 is not affected, dnsdist on 64-bit systems is not affected.

For those unable to upgrade to a new version, a minimal patch is
available for 1.1.0

We would like to thank Guido Vranken for finding and subsequently
reporting this issue.

- PowerDNS Security Advisory 2017-02 for dnsdist: Alteration of ACLs via
API authentication bypass
CVE: CVE-2017-7557
Date: 2017-08-21
Credit: Nixu
Affects: dnsdist 1.1.0
Not affected: dnsdist 1.0.0, 1.2.0
Severity: Low
Impact: Access restriction bypass
Exploit: This issue can be triggered by tricking an authenticated user
into visiting a crafted website
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Workaround: Keep the API read-only (default) via setAPIWritable(false)
An issue has been found in dnsdist 1.1.0, in the API authentication
mechanism. API methods should only be available to a user authenticated
via an X-API-Key HTTP header, and not to a user authenticated on the
webserver via Basic Authentication, but it was discovered by Nixu during
a source code audit that dnsdist 1.1.0 allows access to all API methods
to both kind of users.

In the default configuration, the API does not provide access to more
information than the webserver does, and therefore this issue has no
security implication. However if the API is allowed to make
configuration changes, via the setAPIWritable(true) option, this allows
a remote unauthenticated user to trick an authenticated user into
editing dnsdist=E2=80=99s ACLs by making him visit a crafted website contai=
ning
a Cross-Site Request Forgery.

For those unable to upgrade to a new version, a minimal patch is
available for 1.1.0

--=20
Remi Gacogne
PowerDNS.COM BV - https://www.powerdns.com/


--aWBCDndUFi8OkiNLmNq8jS91KEcNMIhlR--

--6IasI3NeQab1L2A0wwKxp2pOfWuJgDB5D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE1jAMq8v0abvjkuUDogjtT4r1hEYFAlmbAP4ACgkQogjtT4r1
hEYTpAf8Cqm8trjhvaQRqqNa/N5LpGHzUG5dRY3h7VnTuiXz5JEvTcI6SoXhAgO0
94AKeuUdEMVrhGfuLL19z/QjPKUNFhEo3S5R7G3qQF6lGmlsMtJxOj2k8H8tF8Ig
NhxmaA+PxIGcKj+976EDLXMoJb5cnCDlIWZ282oAvy9igNvnislVZ5arzilLTEVU
rC57t7vWl7mvBqCr39OTZIdLEQbM7b7cquYBX2A4hxJOLMeCeCAckuFw0ZGv8jY5
BSj0CUPLQsNlQ/opZs8Sez0Zo5TMpzr2k403dccSWZkFlXmbwVSNinHh+MCf1dgl
8VevcEHEp8OTXLQY73kAxw3Tjl3s1Q==
=0PvC
-----END PGP SIGNATURE-----

--6IasI3NeQab1L2A0wwKxp2pOfWuJgDB5D--
