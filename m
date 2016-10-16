X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Saturday" "15" "October" "2016" "22:49:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024912.B0B4442E02B@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c)" nil nil nil "10" "2016101602:49:12" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c)" (number mark "U       cve-assign@m Oct 15   34/1474  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c)\"\n") "<2323220.oXSkLC07fN@arcadia>" ("<2323220.oXSkLC07fN@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3638 invoked by uid 550); 16 Oct 2016 02:49:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3581 invoked from network); 16 Oct 2016 02:49:24 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2323220.oXSkLC07fN@arcadia>
Message-Id: <20161016024912.B0B4442E02B@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:49:12 -0400 (EDT)
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/04/libdwarf-heap-based-buffer-overflow-in-_dwarf_get_abbrev_for_code-dwarf_util-c/

> AddressSanitizer: heap-buffer-overflow ... READ of size 1
> libdwarf/dwarf_util.c:624:43 in _dwarf_get_abbrev_for_code

> https://sourceforge.net/p/libdwarf/code/ci/268c1f18d1d28612af3b72d7c670076b1b88e51c/tree/libdwarf/dwarf_util.c?diff=0b28b923c3bd9827d1d904feed2abadde4fa5de2

Use CVE-2016-8680.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudXAAoJEHb/MwWLVhi2ohsP/1Cco5DxH5s7xrI2OQ5S3npL
a4i0ykWBel0oObYzllOxCErUKsIRwgHuL59kMcKyYfiMf4StxpRRoCKXN0UJUPjG
jzyvJCrDwv3/yPfioei4oixSqoonDPnnMso/5+mTJEE5Swo+iLIpH8JRUBQhmPNs
JUl/NutBuTxlLqw9dXbo1Cb6JDrB1bRdlVXVonqqZ+ymk+RE3EtozsEA0ePKqnBK
41BMl/uwO8Ue1pCbdIFGbhuQieFJbYKASWJV6gK6zyx8J+W6pRjT9b8yWvDVfejO
kLLR0NyZni5powlZ8w+2Eyeb/zaLJlSQus+4vwEhTbbIMJkqtxCiFj46ksS2ty0Y
1x6fbW1/fHd5251NQp8uTl+1u3mhHpat5D9UABq5tPutLDRsASGvzkPIDi3GLHbi
M0I6lajCrptz3b6YgqyPOprAMlSUPS06T/9rcTC7I3GfGL/WN8klBgwmolrVdifj
RjlvQxWFnVi1JDKSodj9hbxcz3g6IFOSKyACuvdXph+943c6yYm3ZFb6GVQtZbsI
Zl9CvCmpM7rhE/Yc02EQeqPN73myVtdJHZiU3EAlxD9+ShlzmXoSkXrZoNucBb6x
LaA3v+xv1hePJkxsC3Ut/S99F5R/A6s0XGLuDSIQlSCr/Qs9vyzr7GNygVHmTYFd
jc7kJQ4SsHC12NUfqejb
=cKdI
-----END PGP SIGNATURE-----
