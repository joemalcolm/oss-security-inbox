X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Saturday" "15" "October" "2016" "22:41:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024107.656D242E008@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: mupdf: use-after-free in pdf_to_num (pdf-object.c)" "^Cc:" nil nil "10" "2016101602:41:07" "[oss-security] Re: mupdf: use-after-free in pdf_to_num (pdf-object.c)" (number mark "U       cve-assign@m Oct 15   40/1622  " thread-indent "\"[oss-security] Re: mupdf: use-after-free in pdf_to_num (pdf-object.c)\"\n") "<1840743.uk7qesaqqd@willoughby>" ("<1840743.uk7qesaqqd@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10179 invoked by uid 550); 16 Oct 2016 02:55:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10065 invoked from network); 16 Oct 2016 02:55:53 -0000
In-Reply-To: <1840743.uk7qesaqqd@willoughby>
Message-Id: <20161016024107.656D242E008@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 15 Oct 2016 22:41:07 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mupdf: use-after-free in pdf_to_num (pdf-object.c)
To: ago@gentoo.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/22/mupdf-use-after-free-in-pdf_to_num-pdf-object-c

> fuzzing through mutool
> 
> AddressSanitizer: heap-use-after-free ... READ of size 1
> 
> 0x7fbc4c3824e4 in pdf_to_num ... mupdf-1.9a/work/mupdf-1.9a/source/pdf/pdf-object.c:375:35

> http://git.ghostscript.com/?p=mupdf.git;h=1e03c06456d997435019fb3526fa2d4be7dbc6ec
> http://bugs.ghostscript.com/show_bug.cgi?id=697015
> http://bugs.ghostscript.com/show_bug.cgi?id=697019

Use CVE-2016-8674 for all of 1e03c06456d997435019fb3526fa2d4be7dbc6ec,
including both 697015 and 697019.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAuc6AAoJEHb/MwWLVhi2Yq4P/iMeQIU5r6VsYn7jm1727NJ0
VH49R7zD4YX5sjAqQSNMUj6zN7N1w/ExjY4ctwQwk83mB3o4w4uXVkL3r2+7jwVC
GpiOXZLg7GoFAXnhisqBxLRhOvMh2O+t/5AOezQus+cZ+wST+pvx/rUTMMmUAecL
ikuVsJkm5DZkTJ1vKPtZadtIzn8dz/UsbroiN8pYt4IGf+mlW7zhAV65Tkn7U/VI
CjQZwMRW7K5MHMwjYJKyrITHRzWOPQwywYh0z6JuxaeQjdnjgiP0AIldapmcCFpZ
poWLGG9I6o1D2pCPwYXxckKQa9qoW3fBb8qUiSQ4jhgndC/7bpYUsyubyE/bGwW2
Cg3ygkasV97IyV6VyvjuuCiaXtuaIll3SFIpivo0JasdgKvrctVmSJPGIie01syk
L1V4KbomGtAKf6fx5a0ur28nFcfuDZrg2iEZSHDXHdDjsaA1mjSByaqCRZW8nEOa
C5F/UnfssQWywv0ex7A28Edw3605KKbMJwY2bqEOojGCz2VId4DwmPWwBWoxxpPQ
Z+auozZlMCoWWTpaYYy3WxCXfjEZBcFHBbbn0XW4Ulp3V48XvWGX2Oqh1ItCqxuJ
HzEgJoChNKX4UWZMoo0EWbjR+cDBa04sZ2Gd2KSh++1lv94YoL2F5QwWv0hlEMZ/
KeqSQtvtdyZOjXL+cA1G
=Zekw
-----END PGP SIGNATURE-----
