X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8758" "Sunday" "15" "January" "2017" "13:26:43" "+0100" "Remi Gacogne" "remi.gacogne@powerdns.com" "<f18ebf42-d205-3d4a-4740-5d65d0dcac41@powerdns.com>" "201" "[oss-security] PowerDNS Security Advisories 2016-02, 2016-03, 2016-04 and 2016-05" nil nil nil "1" "2017011512:26:43" "[oss-security] PowerDNS Security Advisories 2016-02, 2016-03, 2016-04 and 2016-05" (number mark "U       remi.gacogne Jan 15  201/8758  " thread-indent "\"[oss-security] PowerDNS Security Advisories 2016-02, 2016-03, 2016-04 and 2016-05\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11977 invoked by uid 550); 15 Jan 2017 12:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11945 invoked from network); 15 Jan 2017 12:27:02 -0000
To: oss-security@lists.openwall.com
From: Remi Gacogne <remi.gacogne@powerdns.com>
Message-ID: <f18ebf42-d205-3d4a-4740-5d65d0dcac41@powerdns.com>
Date: Sun, 15 Jan 2017 13:26:43 +0100
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="m60CofamscOjtwGJ7kchjrmLKNiFQmCeo"
X-purgate-ID: 151428::1484483205-000038BB-5DCC5614/0/0
X-purgate-type: clean
X-purgate-size: 9028
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
Subject: [oss-security] PowerDNS Security Advisories 2016-02, 2016-03, 2016-04 and 2016-05

--m60CofamscOjtwGJ7kchjrmLKNiFQmCeo
Content-Type: multipart/mixed; boundary="t96HcmucTfkk2qFWX0HtQ9ksH8NUu5TiT";
 protected-headers="v1"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <f18ebf42-d205-3d4a-4740-5d65d0dcac41@powerdns.com>
Subject: PowerDNS Security Advisories 2016-02, 2016-03, 2016-04 and 2016-05

--t96HcmucTfkk2qFWX0HtQ9ksH8NUu5TiT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

Several security issues of medium severity have been recently reported
to us, and we just released new versions of PowerDNS Authoritative
Server and PowerDNS Recursor addressing them:
- 2016-02: Crafted queries can cause abnormal CPU usage: CVE-2016-7068
- 2016-03: Denial of service via the web server: CVE-2016-7072
- 2016-04: Insufficient validation of TSIG signatures: CVE-2016-7073
CVE-2016-7074
- 2016-05: Crafted zone record can cause a denial of service: CVE-2016-2120

This matrix shows the versions affected by these issues:

|                   | 2016-02 | 2016-03 | 2016-04 | 2016-05 |
| ---               | ---     | ---     | ---     | ---     |
| Recursor 3.6      | Yes     |         |         |         |
| Recursor 3.7      | Yes     |         |         |         |
| Recursor 4.0      | Yes     |         | Yes     |         |
| Authoritative 3.3 | Yes     | Yes     | Yes     | Yes     |
| Authoritative 3.4 | Yes     | Yes     | Yes     | Yes     |
| Authoritative 4.0 | Yes     | Yes     | Yes     | Yes     |

The full security advisories are provided below, and can also be
found at:
- https://doc.powerdns.com/md/security/powerdns-advisory-2016-02/
- https://doc.powerdns.com/md/security/powerdns-advisory-2016-03/
- https://doc.powerdns.com/md/security/powerdns-advisory-2016-04/
- https://doc.powerdns.com/md/security/powerdns-advisory-2016-05/

Minimal patches are available for those unable to fully upgrade:
- https://downloads.powerdns.com/patches/2016-02/
- https://downloads.powerdns.com/patches/2016-03/
- https://downloads.powerdns.com/patches/2016-04/
- https://downloads.powerdns.com/patches/2016-05/

Please note that for the Authoritative Server 3.3 and the Recursor 3.6
series, we will only publish these patches. We also urge all users of
these versions to migrate to the 4.X release trains.

Please feel free to contact me directly if you have any question.

- PowerDNS Security Advisory 2016-02: Crafted queries can cause abnormal
CPU usage
CVE: CVE-2016-7068
Date: December 15th 2016
Credit: Florian Heinz and Martin Kluge
Affects: PowerDNS Authoritative Server up to and including 3.4.10,
4.0.1, PowerDNS Recursor up to and including 3.7.3, 4.0.3
Not affected: PowerDNS Authoritative Server 3.4.11, 4.0.2 and PowerDNS
Recursor 3.7.4, 4.0.4
Severity: Medium
Impact: Degraded service or Denial of service
Exploit: This issue can be triggered by sending specially crafted query
packets
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Workaround: Run dnsdist with the rules provided below in front of
potentially affected servers.
An issue has been found in PowerDNS allowing a remote, unauthenticated
attacker to cause an abnormal CPU usage load on the PowerDNS server by
sending crafted DNS queries, which might result in a partial denial of
service if the system becomes overloaded. This issue is based on the
fact that the PowerDNS server parses all records present in a query
regardless of whether they are needed or even legitimate. A specially
crafted query containing a large number of records can be used to take
advantage of that behaviour. This issue has been assigned CVE-2016-7068.

PowerDNS Authoritative Server up to and including 3.4.10 and 4.0.1 are
affected. PowerDNS Recursor up to and including 3.7.3 and 4.0.3 are
affected.

dnsdist can be used to block crafted queries, using RecordsCountRule()
and RecordsTypeCountRule() to block queries with crafted records.

We would like to thank Florian Heinz and Martin Kluge for finding and
subsequently reporting this issue.

- PowerDNS Security Advisory 2016-03: Denial of service via the web server
CVE: CVE-2016-7072
Date: December 15th 2016
Credit: Mongo
Affects: PowerDNS Authoritative Server up to and including 3.4.10, 4.0.1
Not affected: PowerDNS Authoritative Server 3.4.11, 4.0.2
Severity: Medium
Impact: Degraded service or Denial of service
Exploit: This issue can be triggered by opening a large number of
simultaneous connections to the web server
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Workaround: Disable the web server, or restrict access to it via a firewall.
An issue has been found in PowerDNS Authoritative Server allowing a
remote, unauthenticated attacker to cause a denial of service by opening
a large number of TCP connections to the web server. If the web server
runs out of file descriptors, it triggers an exception and terminates
the whole PowerDNS process. While it's more complicated for an
unauthorized attacker to make the web server run out of file descriptors
since its connection will be closed just after being accepted, it might
still be possible. This issue has been assigned CVE-2016-7072.

PowerDNS Authoritative Server up to and including 3.4.10 and 4.0.1 are
affected. The PowerDNS Recursor is not affected.

We would like to thank Mongo for finding and subsequently reporting this
issue.

- PowerDNS Security Advisory 2016-04: Insufficient validation of TSIG
signatures
CVE: CVE-2016-7073 CVE-2016-7074
Date: December 15th 2016
Credit: Mongo
Affects: PowerDNS Authoritative Server up to and including 3.4.10,
4.0.1, PowerDNS Recursor from 4.0.0 and up to and including 4.0.3
Not affected: PowerDNS Authoritative Server 3.4.11, 4.0.2, PowerDNS
Recursor < 4.0.0, 4.0.4
Severity: Medium
Impact: Zone content alteration
Exploit: This problem can be triggered by an attacker in position of
man-in-the-middle
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Two issues have been found in PowerDNS Authoritative Server allowing an
attacker in position of man-in-the-middle to alter the content of an
AXFR because of insufficient validation of TSIG signatures. The first
issue is a missing check of the TSIG time and fudge values in
AXFRRetriever, leading to a possible replay attack. This issue has been
assigned CVE-2016-7073. The second issue is a missing check that the
TSIG record is the last one, leading to the possibility of parsing
records that are not covered by the TSIG signature. This issue has been
assigned CVE-2016-7074.

PowerDNS Authoritative Server up to and including 3.4.10 and 4.0.1 are
affected. PowerDNS Recursor from 4.0.0 up to and including 4.0.3 are
affected.

We would like to thank Mongo for finding and subsequently reporting this
issue.

- PowerDNS Security Advisory 2016-05: Crafted zone record can cause a
denial of service
CVE: CVE-2016-2120
Date: December 15th 2016
Credit: Mathieu Lafon
Affects: PowerDNS Authoritative Server up to and including 3.4.10, 4.0.1
Not affected: PowerDNS Authoritative Server 3.4.11, 4.0.2
Severity: Medium
Impact: Denial of service
Exploit: This issue can be triggered by inserting a specially crafted
record in a zone
Risk of system compromise: No
Solution: Upgrade to a non-affected version
An issue has been found in PowerDNS Authoritative Server allowing an
authorized user to crash the server by inserting a specially crafted
record in a zone under their control then sending a DNS query for that
record. The issue is due to an integer overflow when checking if the
content of the record matches the expected size, allowing an attacker to
cause a read past the buffer boundary. This issue has been assigned
CVE-2016-2120.

PowerDNS Authoritative Server up to and including 3.4.10 and 4.0.1 are
affected. The PowerDNS Recursor is not affected.

We would like to thank Mathieu Lafon for finding and subsequently
reporting this issue.

--=20
Remi Gacogne
PowerDNS.COM BV - https://www.powerdns.com/


--t96HcmucTfkk2qFWX0HtQ9ksH8NUu5TiT--

--m60CofamscOjtwGJ7kchjrmLKNiFQmCeo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE1jAMq8v0abvjkuUDogjtT4r1hEYFAlh7aoMACgkQogjtT4r1
hEby6Qf/SxD+MvhbAAmQgyiBkl/nEuVuYhZXR4uRsla17bda8x1ZhNSIXH1yqMLJ
DJw9/q64+YHC4w/vxWI/VOCx8RvN+LjzHLUqeAKfWpthI+yQ+xJcfhsfXsNY5GZl
Tr9HZ3fuiguLPK+HqTm7zK8FPxbf+lYprDVHwmOWKe+ExUJmxRGluvwri6f6lM5H
kfeJomlM65UmtS/SIJc8icx1baQM98K8V7L+ty4D/6OQAXCB7O9+E/7lCV6izQag
v+rzQ3H7s9hAYJcbBOzAVvfKI7/eW3XjsNDxCDdub4xmpOgw3H0Kgzcpzyw5uxbk
S3g4U4w/RoO8rsHkzfp9PFABCifWUg==
=BrlX
-----END PGP SIGNATURE-----

--m60CofamscOjtwGJ7kchjrmLKNiFQmCeo--
