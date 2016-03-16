X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1254" "Wednesday" "16" "March" "2016" "15:46:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316194617.64E2142E018@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in sycc422_to_rgb function" nil nil nil "3" "2016031619:46:17" "[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in sycc422_to_rgb function" (number mark "U       cve-assign@m Mar 16   33/1254  " thread-indent "\"[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in sycc422_to_rgb function\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7064F698E@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7064F698E@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19843 invoked by uid 550); 16 Mar 2016 19:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19821 invoked from network); 16 Mar 2016 19:46:28 -0000
From: cve-assign@mitre.org
To: winsonliu@tencent.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7064F698E@EXMBX-TJ002.tencent.com>
Message-Id: <20160316194617.64E2142E018@smtpvbsrv1.mitre.org>
Date: Wed, 16 Mar 2016 15:46:17 -0400 (EDT)
Subject: [oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in sycc422_to_rgb function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A specially crafted JPEG2000 image file can force Out-Of-Bounds Read

> opj_decompress -o image.pgm -i oob_sycc422_to_rgb.j2k

> Program received signal SIGSEGV, Segmentation fault.

Use CVE-2016-3183.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6bbPAAoJEL54rhJi8gl5ZG0QAMvFedBeok1d3Y5AzP83yCMW
moXc10NZwmWICRH+GWTFXr5dnKuPkK6Ia0DRQmptKBnQgBUfMJEH3ARp0b94W1GN
FPPbegyZaHNRba5i/UX1T9020v55rYxVjs0997QJWSnXWSbO+G900IbkXgIaU+cs
wv07+21oh9iwmVCgd5pkgOPD4Z2QHA30JfAZe4OVT4NwgdryVnEGr8vHvXeJU1P9
MG8ouU8RXyMmbr/mklhbHmuaL/iGq8b7q5YrdW2AELBnsVf5XNmH9S4X9bss0Zge
eOuPN9o3KYQcUnxFF2iQncw7zoQHlh/vZEZY+6E3II/QqbUUGM7l9j1xOAQCKPrf
S6xP4r5xgoHyy9a8USTLkQhMqjn84oHStEohmqHgF1NfD2il4lJpK97irkZn33pY
Y5uin3hM70h8DCZBfG02BfjrL0mMCwbIXpWHX0lsmPRl5MNIsfoyqdwNF4hLM2J2
vrAjFxV1eZV696EaH1BhNeIjc6h2hufISWFpqkTP6d1/XHp08cej90BQaAJ9rTCQ
ozg9qJ/eeeACYwVbtD8z24a71wWqwqEa68XhO2wzQ/4KhUWcf1f90rt1SpcMo4jV
TmC6R53XqH9SbpkwLFsxmABvaS3scFjEylWlm6evQWGynzpKqp5ecn9wAu7cxy9F
4+FZb84Nk+ai1gcGtuyx
=laRf
-----END PGP SIGNATURE-----
