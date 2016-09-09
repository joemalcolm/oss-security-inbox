X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3968" "Friday" "9" "September" "2016" "13:30:11" "+0200" "Remi Gacogne" "remi.gacogne@powerdns.com" "<a3531031-58b5-2210-8e5f-f997cd07be27@powerdns.com>" "98" "[oss-security] PowerDNS Security Advisory 2016-01: Crafted queries can cause unexpected backend load" nil nil nil "9" "2016090911:30:11" "[oss-security] PowerDNS Security Advisory 2016-01: Crafted queries can cause unexpected backend load" (number mark "U       remi.gacogne Sep  9   98/3968  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2016-01: Crafted queries can cause unexpected backend load\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1574 invoked by uid 550); 9 Sep 2016 11:51:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13641 invoked from network); 9 Sep 2016 11:30:26 -0000
X-Virus-Scanned: Debian amavisd-new at imap.open-xchange.com
To: oss-security@lists.openwall.com
From: Remi Gacogne <remi.gacogne@powerdns.com>
Message-ID: <a3531031-58b5-2210-8e5f-f997cd07be27@powerdns.com>
Date: Fri, 9 Sep 2016 13:30:11 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="7S2BBLkIpfrvmU9eUarHIff2OFRR4JUvJ"
X-purgate-ID: 151428::1473420614-000075C5-8F10396A/0/0
X-purgate-type: clean
X-purgate-size: 4132
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
Subject: [oss-security] PowerDNS Security Advisory 2016-01: Crafted queries can cause
 unexpected backend load

--7S2BBLkIpfrvmU9eUarHIff2OFRR4JUvJ
Content-Type: multipart/mixed; boundary="pjDHBubVdgVLI443jW4mm9moQwdMwsrEg";
 protected-headers="v1"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <a3531031-58b5-2210-8e5f-f997cd07be27@powerdns.com>
Subject: PowerDNS Security Advisory 2016-01: Crafted queries can cause
 unexpected backend load

--pjDHBubVdgVLI443jW4mm9moQwdMwsrEg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi All,

Two security issues of medium severity have been reported to us by
Florian Heinz and Martin Kluge in PowerDNS Authoritative Server <=3D
3.4.9. We released PowerDNS Authoritative 3.4.10 a week ago, fixing both
issues. PowerDNS Authoritative 4.0.x and PowerDNS Recursor are not affected.

The corresponding security advisory is provided below, and can also be
found at: https://doc.powerdns.com/md/security/powerdns-advisory-2016-01/

Please feel free to contact me directly if you have any question.


PowerDNS Security Advisory 2016-01: Crafted queries can cause unexpected
backend load

CVE: CVE-2016-5426, CVE-2016-5427
Date: 9th of September 2016
Credit: Florian Heinz and Martin Kluge
Affects: PowerDNS Authoritative Server up to and including 3.4.9
Not affected: PowerDNS Authoritative Server 3.4.10, 4.x
Severity: Medium
Impact: Degraded service or Denial of service
Exploit: This problem can be triggered by sending specially crafted
query packets
Risk of system compromise: No
Solution: Upgrade to a non-affected version
Workaround: Run dnsdist with the rules provided below in front of
potentially affected servers, or dimension the backend capacity so that
it can handle the increased load.

Two issues have been found in PowerDNS Authoritative Server allowing a
remote, unauthenticated attacker to cause an abnormal load on the
PowerDNS backend by sending crafted DNS queries, which might result in a
partial denial of service if the backend becomes overloaded. SQL
backends for example are particularly vulnerable to this kind of
unexpected load if they have not been dimensioned for it.
The first issue is based on the fact that PowerDNS Authoritative Server
accepts queries with a qname's length larger than 255 bytes. This issue
has been assigned CVE-2016-5426.
The second issue is based on the fact that PowerDNS Authoritative Server
does not properly handle dot inside labels. This issue has been assigned
CVE-2016-5427.
Both issues have been addressed by this commit:
https://github.com/PowerDNS/pdns/commit/881b5b03a590198d03008e4200dd00cc537=
712f3

PowerDNS Authoritative Server up to and including 3.4.9 is affected. No
other versions are affected. The PowerDNS Recursor is not affected.

dnsdist can be used to block crafted queries, using
QNameWireLengthRule() to block queries with a qname larger than 255
bytes and QNameLabelsCountRule() to block queries with a very large
amount of labels. Please note that restricting the number of labels in a
query might lead to unexpected issues, especially with DNSSEC-enabled
domains.

We'd like to thank Florian Heinz and Martin Kluge for finding and
subsequently reporting this issue.


--=20
Remi Gacogne
PowerDNS.COM BV - https://www.powerdns.com/


--pjDHBubVdgVLI443jW4mm9moQwdMwsrEg--

--7S2BBLkIpfrvmU9eUarHIff2OFRR4JUvJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJX0p1DAAoJEKII7U+K9YRGN6kH/0DbiGyuqLPGQQ44Zh+b7NCF
7tXoY28YfCvwZ5K9Zza34JXHaqMFqpQyjw6iQPWkik4VyxxPjee/OuvY24u7QxGD
kxxWXNjIQREpKmHW0kTtj/gnCHlqHQo1DFvVTFpg4g8y7kg82vgtpQMsu3Ok7Jha
/xVvL3SITcT6VS9oyKCDntOUnUS32bXaUzZsJoGFH1Ah98Xm8JJhxW1TvCL1AHg/
Omw5rqsiI6a7L2SvWRiAqju34OCmMI475IEXcq2TNF5IL3HRUVvhqHqw2Eowf+E5
+NMJAKJos+fzfkk2zHCKp9wLjxVdePoqs85zvvqBgtG+UFCx7h5WickuS9qPbCE=
=XLFR
-----END PGP SIGNATURE-----

--7S2BBLkIpfrvmU9eUarHIff2OFRR4JUvJ--
