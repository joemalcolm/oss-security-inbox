X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2952" "Saturday" "2" "April" "2016" "10:22:03" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<56FEE67B.70507@treenet.co.nz>" "79" "[oss-security] CVE Request: Squid HTTP Proxy" nil nil nil "4" "2016040121:22:03" "[oss-security] CVE Request: Squid HTTP Proxy" (number mark "U       squid3@treen Apr  2   79/2952  " thread-indent "\"[oss-security] CVE Request: Squid HTTP Proxy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9401 invoked by uid 550); 1 Apr 2016 21:23:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9378 invoked from network); 1 Apr 2016 21:23:14 -0000
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <56FEE67B.70507@treenet.co.nz>
Date: Sat, 2 Apr 2016 10:22:03 +1300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="5IaOioJXiKT8QW2J84NwK8N0EmDiVM0Ee"
Subject: [oss-security] CVE Request: Squid HTTP Proxy

--5IaOioJXiKT8QW2J84NwK8N0EmDiVM0Ee
Content-Type: multipart/mixed; boundary="lM743KI5DjGCSEaQfoqOEdmVWTdODfOFq"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com
Message-ID: <56FEE67B.70507@treenet.co.nz>
Subject: CVE Request: Squid HTTP Proxy

--lM743KI5DjGCSEaQfoqOEdmVWTdODfOFq
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

1) A buffer overrun (on write(2)) has been found in Squid proxy 'pinger'
process that allows an attacker to craft ICMPv6 messages that will
either crash the child process (if the OS prootects against over-write)
or alter heap contents allowing the attacker to bypass CVE-2014-7142
protection and leak arbitrary heap data into the Squid log files. The
pinger is setuid root (though it does drop those privileges prior to
this attack being possible).
 This was reported by Yuriy M. Kaminskiy.

Patch for this issue is available at:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14015.patc=
h>

The upstream advisory will be at this URL:
<http://www.squid-cache.org/Advisories/SQUID-2016_3.txt>


2) A secondary issue with the same Denial of Service effects as
CVE-2016-2569 has been found that is not covered by the existing fix.
All Squid-3.x versions up to and including 3.5.15, and 4.0.x versions up
to and including 4.0.7 are vulnerable to this issue independent of the
fix for CVE-2016-2569.
 This was reported by Santiago R. Rinc=C3=B3n of Debian.

Patch for this is available at:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14016.patc=
h>

The upstream advisory will be at this URL:
<http://www.squid-cache.org/Advisories/SQUID-2016_4.txt>


Both of these issues are resolved in the 4.0.8 and 3.5.16 packages which
will be available within 24hrs.


Amos Jeffries
Squid Software Foundation


--lM743KI5DjGCSEaQfoqOEdmVWTdODfOFq--

--5IaOioJXiKT8QW2J84NwK8N0EmDiVM0Ee
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJW/uaiAAoJEGvSOzfXE+nL/2oQAI0lPYkclCv/6CxED3vh/Xoi
JefDYsMDi3pyCekGKgwBtOhjLCKZ/kuvp0qUWubDwICyRSRritnzvw0KiAiZh9Wx
Fncm2sZ/2+5YCLmVIpngiXsnRawDVmNv6cPM1vk6GJjiy0on4IjmVqR2qzRl9izW
i1J/A6VtIjrA06Ce9wYZEPEZ/AQjn+RyoyCHG3hoM3abFCQ8DLFSHwZQcy7J4qNT
F0UBMeUsvN+s5EItxNjN1XxQlXy4Y5wrgV4CSzCwxNZ8azTELeUzG0IX0exD35s9
788K7zHZQbKgRQukSrB0AR1t2aLBaYMj5gC+Wgh6qk2zYzfqFyZhe/47EVM1S4Pd
jBxfB13Q9QRizdTqZHocvdxlH8Y8sxNh2HexSW4ezvQKAzIBlkhlHH6vxdXks/vX
J8IbfS/mrrh98MfVml/ikz/Vg6ZNrAj0ceZPPGFlIEY8KrqsScihEboyW70WLebu
4In0wAySc9U/ZTqBP+TpN1SHejueGVYGdiJRYl96fc8AQqMhWHllZxC7COtpU0iH
tVg0FRDg7101iJBccnKNtEFEX7/8lZ0Z9IRdJAlBINOk2g1WRvdfVmfmibYqFvzG
X6/TVnaCXJT7zRoE5FlaWdBm9s+4xAfBR5uYSUPF3aHsK7EMLhU2z/CYkub/DPTc
2f20vxWs8nEDs6SSewRF
=g4Io
-----END PGP SIGNATURE-----

--5IaOioJXiKT8QW2J84NwK8N0EmDiVM0Ee--
