X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10648" "Monday" "27" "November" "2017" "17:32:29" "+0100" "Remi Gacogne" "remi.gacogne@powerdns.com" "<126e9802-e0aa-77b4-f87d-1fa469b8d79b@powerdns.com>" "263" "[oss-security] PowerDNS Security Advisories 2017-03, 2017-04, 2017-05, 2017-06 and 2017-07" nil nil nil "11" "2017112716:32:29" "[oss-security] PowerDNS Security Advisories 2017-03, 2017-04, 2017-05, 2017-06 and 2017-07" (number mark "U       remi.gacogne Nov 27  263/10648 " thread-indent "\"[oss-security] PowerDNS Security Advisories 2017-03, 2017-04, 2017-05, 2017-06 and 2017-07\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28199 invoked by uid 550); 27 Nov 2017 16:32:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28165 invoked from network); 27 Nov 2017 16:32:43 -0000
To: oss-security@lists.openwall.com
From: Remi Gacogne <remi.gacogne@powerdns.com>
Message-ID: <126e9802-e0aa-77b4-f87d-1fa469b8d79b@powerdns.com>
Date: Mon, 27 Nov 2017 17:32:29 +0100
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="b9g6i2uruvSNhqcbsb4vWDEdMcmQ7pJNj"
Subject: [oss-security] PowerDNS Security Advisories 2017-03, 2017-04, 2017-05, 2017-06 and
 2017-07

--b9g6i2uruvSNhqcbsb4vWDEdMcmQ7pJNj
Content-Type: multipart/mixed; boundary="ftXwKcDAWEdhSEJWKlRhOptSgwStogOfX";
 protected-headers="v1"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <126e9802-e0aa-77b4-f87d-1fa469b8d79b@powerdns.com>
Subject: PowerDNS Security Advisories 2017-03, 2017-04, 2017-05, 2017-06 and
 2017-07

--ftXwKcDAWEdhSEJWKlRhOptSgwStogOfX
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello everybody,

We just released PowerDNS Authoritative 4.0.5 and Recursor 4.0.7, fixing
security issues that have recently been reported to us:

- 2017-03: Insufficient validation of DNSSEC signatures
(CVE-2017-15090, Recursor >=3D 4.0.0)
- 2017-04: Missing check on API operations (CVE-2017-15091, Authoritative)
- 2017-05: Cross-Site Scripting in the web interface (CVE-2017-15092,
Recursor >=3D 4.0.0)
- 2017-06: Configuration file injection in the API (CVE-2017-15093,
Recursor)
- 2017-07: Memory leak in DNSSEC parsing (CVE-2017-15094, Recursor >=3D
4.0.0)

The full security advisories can be found below, and also at:

-
https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisor=
y-2017-04.html
-
https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-201=
7-03.html
-
https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-201=
7-05.html
-
https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-201=
7-06.html
-
https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-201=
7-07.html

All of the issues require a specific configuration that is not enabled
by default: 2017-03 and 2017-07 issues only exist if DNSSEC validation
is enabled, 2017-04 requires authenticated access to the Authoritative
server API, 2017-05 only exists if the webserver is enabled and 2017-06
if the API is enabled and allowed to alter the configuration.

We also provide minimal patches for the 3.4.11 and 3.7.4 releases:

- https://downloads.powerdns.com/patches/2017-03/
- https://downloads.powerdns.com/patches/2017-04/
- https://downloads.powerdns.com/patches/2017-05/
- https://downloads.powerdns.com/patches/2017-06/
- https://downloads.powerdns.com/patches/2017-07/

We urge all users of these versions to migrate to the 4.X release trains.

Please feel free to contact me directly if you have any question.

Best regards,

PowerDNS Security Advisory 2017-03: Insufficient validation of DNSSEC
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
signatures
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  CVE: CVE-2017-15090
-  Date: November 27th 2017
-  Credit: Kees Monshouwer
-  Affects: PowerDNS Recursor from 4.0.0 and up to and including 4.0.6
-  Not affected: PowerDNS Recursor < 4.0.0, 4.0.7
-  Severity: Medium
-  Impact: Records manipulation
-  Exploit: This problem can be triggered by an attacker in position of
   man-in-the-middle
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version

An issue has been found in the DNSSEC validation component of PowerDNS
Recursor, where the signatures might have been accepted as valid even if
the signed data was not in bailiwick of the DNSKEY used to sign it. This
allows an attacker in position of man-in-the-middle to alter the content
of records by issuing a valid signature for the crafted records. This
issue has been assigned CVE-2017-15090.

PowerDNS Recursor from 4.0.0 up to and including 4.0.6 are affected.

For those unable to upgrade to a new version, a minimal patch is
available: https://downloads.powerdns.com/patches/2017-03

We would like to thank Kees Monshouwer for finding and subsequently
reporting this issue.

PowerDNS Security Advisory 2017-04: Missing check on API operations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  CVE: CVE-2017-15091
-  Date: November 27th 2017
-  Credit: everyman
-  Affects: PowerDNS Authoritative up to and including 4.0.4, 3.4.11
-  Not affected: PowerDNS Authoritative 4.0.5
-  Severity: Low
-  Impact:  Denial of service
-  Exploit: This problem can be triggered by an attacker with valid
   API credentials
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version

An issue has been found in the API component of PowerDNS Authoritative,
where some operations that have an impact on the state of the server
are still allowed even though the API has been configured as read-only
via the `api-readonly` keyword.
This missing check allows an attacker with valid API credentials could
flush the cache, trigger a zone transfer or send a NOTIFY. This issue
has been assigned CVE-2017-15091.

PowerDNS Authoritative up to and including 4.0.4 and 3.4.11 are affected.

For those unable to upgrade to a new version, a minimal patch is
available: https://downloads.powerdns.com/patches/2017-04

We would like to thank everyman for finding and subsequently reporting
this issue.

PowerDNS Security Advisory 2017-05: Cross-Site Scripting in the web
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
interface
=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  CVE: CVE-2017-15092
-  Date: November 27th 2017
-  Credit: Nixu, Chris Navarrete of Fortinet's Fortiguard Labs
-  Affects: PowerDNS Recursor from 4.0.0 up to and including 4.0.6
-  Not affected: PowerDNS Recursor 4.0.7, 3.7.x
-  Severity: Medium
-  Impact: Alteration and denial of service of the web interface
-  Exploit: This problem can be triggered by an attacker sending DNS queries
   to the server
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version

An issue has been found in the web interface of PowerDNS Recursor, where
the qname of DNS queries was displayed without any escaping, allowing a
remote attacker to inject HTML and Javascript code into the web
interface, altering the content. This issue has been assigned
CVE-2017-15092.

PowerDNS Recursor from 4.0.0 up to and including 4.0.6 are affected.

For those unable to upgrade to a new version, a minimal patch is
available: https://downloads.powerdns.com/patches/2017-05

We would like to thank Nixu and Chris Navarrete of Fortinet's Fortiguard
Labs for independently finding and reporting this issue.

PowerDNS Security Advisory 2017-06: Configuration file injection in the
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D API
=3D=3D=3D

-  CVE: CVE-2017-15093
-  Date: November 27th 2017
-  Credit: Nixu
-  Affects: PowerDNS Recursor up to and including 4.0.6, 3.7.4
-  Not affected: PowerDNS Recursor 4.0.7
-  Severity: Medium
-  Impact: Alteration of configuration by an API user
-  Exploit: This problem can be triggered by an attacker with valid API
   credentials
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version
-  Workaround: Disable the ability to alter the configuration via the
API by setting `api-config-dir` to an empty value (default), or set the
API read-only via the `api-readonly` setting.

An issue has been found in the API of PowerDNS Recursor during a source
code audit by Nixu. When `api-config-dir` is set to a non-empty value,
which is not the case by default, the API allows an authorized user to
update the Recursor's ACL by adding and removing netmasks, and to
configure forward zones. It was discovered that the new netmask and IP
addresses of forwarded zones were not sufficiently validated, allowing
an authenticated user to inject new configuration directives into the
Recursor's configuration. This issue has been assigned CVE-2017-15093.

PowerDNS Recursor up to and including 4.0.6 and 3.7.4 are affected.

For those unable to upgrade to a new version, a minimal patch is
available: https://downloads.powerdns.com/patches/2017-06

We would like to thank Nixu for finding and subsequently reporting this
issue.

PowerDNS Security Advisory 2017-07: Memory leak in DNSSEC parsing
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-  CVE: CVE-2017-15094
-  Date: November 27th 2017
-  Credit: Nixu
-  Affects: PowerDNS Recursor from 4.0.0 up to and including 4.0.6
-  Not affected: PowerDNS Recursor 4.0.7
-  Severity: Medium
-  Impact:  Denial of service
-  Exploit: This problem can be triggered by an authoritative server
   sending crafted ECDSA DNSSEC keys to the Recursor.
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version
-  Workaround: Disable DNSSEC validation by setting the `dnssec`
parameter to `off` or `process-no-validate` (default).

An issue has been found in the DNSSEC parsing code of PowerDNS Recursor
during a code audit by Nixu, leading to a memory leak when parsing
specially crafted DNSSEC ECDSA keys. These keys are only parsed when
validation is enabled by setting `dnssec` to a value other than `off` or
`process-no-validate` (default).
This issue has been assigned CVE-2017-15094.

PowerDNS Recursor from 4.0.0 up to and including 4.0.6 are affected.

For those unable to upgrade to a new version, a minimal patch is
available: https://downloads.powerdns.com/patches/2017-07

We would like to thank Nixu for finding and subsequently reporting
this issue.

--=20
Remi and the PowerDNS team


--ftXwKcDAWEdhSEJWKlRhOptSgwStogOfX--

--b9g6i2uruvSNhqcbsb4vWDEdMcmQ7pJNj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE1jAMq8v0abvjkuUDogjtT4r1hEYFAlocPh4ACgkQogjtT4r1
hEYl6wf/WcinEvZap5K2ERM1iEfHU6BufSFhYt4M84OaMouURZfl1gv7WLviqMWT
PiOwj/sqFA25XosDdxwXlsCCb4BT0SbEhbPQPOJtfwBxmHBOmP/SRd+5rFZPNHid
HWGT/GhJsxrQTEDM0u1/LVZU4Q0HlnvCfBLaGZEG0cKh8xtYxK5jFtW2uFkL5TUy
duo4UDySp3D5dkLyxqFwPD1OmLlQB1zgPjE7SO4yRYJbBjPIu3Q+TLwI+0PrC9e/
uoughCQodmB1WD0celbF4B9UydFAp+LysFGEMQCL4spTa/pQDWls/WqBI5Expn5h
iBQAhzsYUduCLCkS873XsXT2PT0m8A==
=90ZO
-----END PGP SIGNATURE-----

--b9g6i2uruvSNhqcbsb4vWDEdMcmQ7pJNj--
