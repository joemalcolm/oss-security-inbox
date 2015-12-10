X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Thursday" "10" "December" "2015" "01:16:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151210061616.87FBA8BC232@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: CVE request - a out of bound read bug is found in libdwarf" nil nil nil "12" "2015121006:16:16" "[oss-security] Re: CVE request - a out of bound read bug is found in libdwarf" (number mark "U       cve-assign@m Dec 10   33/1278  " thread-indent "\"[oss-security] Re: CVE request - a out of bound read bug is found in libdwarf\"\n") "<7e08d39e.3024.15189735e32.Coremail.xiaoqixue_1@163.com>" ("<7e08d39e.3024.15189735e32.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21841 invoked by uid 550); 10 Dec 2015 06:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21823 invoked from network); 10 Dec 2015 06:16:27 -0000
From: cve-assign@mitre.org
To: xiaoqixue_1@163.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <7e08d39e.3024.15189735e32.Coremail.xiaoqixue_1@163.com>
Message-Id: <20151210061616.87FBA8BC232@smtpvmsrv1.mitre.org>
Date: Thu, 10 Dec 2015 01:16:16 -0500 (EST)
Subject: [oss-security] Re: CVE request - a out of bound read bug is found in libdwarf

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1289385

> if an elf file is passed to dwarfdump, a SIGSEGV will occur in libdwarf/dwarf_leb.c

> The actual problem is this seemingly corrupt abbreviation entry:

Use CVE-2015-8538.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWaRhNAAoJEL54rhJi8gl5zsMQAJTvBRQAkohxJslPhvlqAY1X
FIwHDq7SE92ETTjdzIIx0fYl08B1IeypEDHU9jXFWV82HTKod+B+AKZdSr7AK3/d
xG/U+3c5ZCqc9eh37H+Qsjnu1+ep5YeP3suCGcVc3y0Rg/7NwYopJf0u8dp97LdN
P0VEpe9wpW4YXjIzx3kglYEo50T+dCq0ogQu2qbdJ5e/GERyF8r+uVaQt3N3BGOw
KaR9iG6dHni4pQngQwyTZ1L8u+zZZN3HQYi39QAU4duIizCZ64eO+WZfBT/SZZSR
2Y9oBE3ofIZzPtmUhkl2AJBnVzbcIeQ5AgpQelygdXhEEf/f3qAeGx3WP3260klp
JfRIwIaoAsUh26AGBoS4wLDN3eQWtDs0nW/pS7oOkui5SgNezNpHk4GWfwjBN8wN
9j5oD2QCMI96FN1U7l03rkQqo1tu7kofyIRYbrNNiGrDHS+06Ms7Dk3eZR94+luK
Kli9QP9D0RWI/B1kGWswtmjzW371arETtcnW8SyfEMxlw6pdRRR3XW9Ju3LYH+lA
YOU9Y10bRqPDdZlBbQ+MR7tPpGENZ0YunF+M42xkwrThmlThr1yRkQfC6Ycj7z91
1OZuvF/JkC7wNsgRCxWvkwphNdCzGyZMADP+denGtRRvXS4QbyhNEs/qvf3VPmuV
vM5pS7axMWA6nnbII5Q3
=G32C
-----END PGP SIGNATURE-----
