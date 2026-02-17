Received: (qmail 9565 invoked by uid 550); 17 Feb 2026 17:06:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23943 invoked from network); 17 Feb 2026 15:48:24 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
User-Agent: mu4e 1.12.15; emacs 31.0.50
Date: Tue, 17 Feb 2026 15:48:10 +0000
Message-ID: <87seazqslh.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] zlib security audit by 7asecurity

--=-=-=
Content-Type: text/plain

Hello,

Noticed in the (fresh) zlib-1.3.2 release notes [0] that an audit was
completed by 7asecurity [1].

It links to a (short) OSTIF blog post [2] about it as well as the full
report itself [3].

The report identifies the following as vulnerabilities:
* ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementation (High)
* ZLB-01-002 WP1: Infinite Loop via Arithmetic Shift in crc32_combine64 (Medium)
* ZLB-01-003 WP1: Heap Leak via Uninitialized Memory in inflateCopy (Low)
* ZLB-01-004 WP1: Persistent DoS via Race Condition in fixedtables (Medium)
* ZLB-01-010 WP1: Heap Leak via Uninitialized Memory in deflateCopy (Low)

... and these hardening recommendations:
* ZLB-01-005 WP2: Integer Overflow in Bound Calculations on LLP64 (Low)
* ZLB-01-006 WP2: Silent Data Truncation in Utility APIs on LLP64 (Low)
* ZLB-01-007 WP4: Missing Compiler and Linker Flags in zlib Build (Low)
* ZLB-01-008 WP1: Integer Overflow in Modern zcalloc implementation (Low)
* ZLB-01-009 WP2: Silent Buffer Overrun in inflateBack (Low)

I've not yet made my way through the report. Standard caveats on
severity apply, though.

[0] https://github.com/madler/zlib/releases/tag/v1.3.2
[1] https://7asecurity.com/blog/2026/02/zlib-7asecurity-audit/
[2] https://ostif.org/zlib-audit-complete/
[3] https://7asecurity.com/reports/pentest-report-zlib-RC1.1.pdf

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmmUjbobFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkNas
AQDQ+HpTMyrnteN/fprs7765bHVO0lR7Tt9LY9e3TONvLgEAs4BQ6Lzx72SxuIin
6F4y/V5C8DtIgyQvKs5JPOHwmwQ=
=bPCi
-----END PGP SIGNATURE-----
--=-=-=--
