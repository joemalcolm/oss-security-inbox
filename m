X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1497" "Friday" "11" "November" "2016" "12:45:32" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<bf7ce36abd284e80b01f6beff3a9f75e@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libdwarf: heap-based buffer overflow in dwarf_get_aranges_list (dwarf_arange.c)" nil nil nil "11" "2016111117:45:32" "[oss-security] Re: libdwarf: heap-based buffer overflow in dwarf_get_aranges_list (dwarf_arange.c)" (number mark "U       cve-assign@m Nov 11   35/1497  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in dwarf_get_aranges_list (dwarf_arange.c)\"\n") "<5253979.W8Yu5ZOxEb@blackgate>" ("<5253979.W8Yu5ZOxEb@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1792 invoked by uid 550); 11 Nov 2016 17:45:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1774 invoked from network); 11 Nov 2016 17:45:44 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <5253979.W8Yu5ZOxEb@blackgate>
Message-ID: <bf7ce36abd284e80b01f6beff3a9f75e@imshyb02.MITRE.ORG>
Date: Fri, 11 Nov 2016 12:45:32 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in dwarf_get_aranges_list (dwarf_arange.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/07/libdwarf-heap-based-buffer-overflow-in-dwarf_get_aranges_list-dwarf_arange-c
> https://sourceforge.net/p/libdwarf/code/ci/583f8834083b5ef834c497f5b47797e16101a9a6/
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 2

Use CVE-2016-9276 for this buffer over-read. Although the commit is
the same as for CVE-2016-9275, fixing CVE-2016-9276 apparently
requires the dwarf_arange.c part of the commit.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJgKbAAoJEHb/MwWLVhi28eMP/01xy9Xb5cx1Nekg36i2fkrn
rqfRioDonkNhjjB2hHszRn7TJkXKAMzxWdPJhuMTsYlo8R9jwBy0jyZmSNXi+5gL
1ms14sa2pZnOo6PdO/FfyPSDjBqVR/2tj0E3mrVXtvQWhwZj7F8723y7dEWQJ6FS
u8RKcqYep/YC+sCNgF2cnSHmHdzOL7DgIBOmDCshfWMx2aAtbKuvysGTfM4Sj7xU
28ZLvI7EzKyxB0BMfTnl/cNzmOdcVXxUwd8uw1u5U0xKqSqXHcTqpxjZt7Jl+4Jk
xy3qbyN+O2yrZJVsDhiR+lt0iRmodQov4m4bpHTnET8wglV3Vv6Amtkax79AzxCn
QKGNy02tL8RiMBLscxETJa5MUm8MNrsASPpKQvhodcOtMCapCb6NctuvNbxII5XQ
AIeDxn/5ElfNgKaJst4ou9nwuZYfSe91XS97bWX7d3IJnLECFrcDB6NC3LWqgBv9
Y534JH13OhruCrEuSr1cNUu3k1kLsNUyRHzMpUU+q6A0Q8ni5Kq1cL20BI3zku/f
ioKxPBUFaO3VGmnVPAOQdF70yokgrelUMxsr0rEbPwz2+R6AgAW2ICF/v2k/EP7D
sd80M5oB0j/5fUnbhC1mcT/sFVOl4ggi+BXtsF4QRXZ0vt5/rga2F3fy493yRdLw
NUJoJIaWp3qUr6VViDeP
=IOf0
-----END PGP SIGNATURE-----
