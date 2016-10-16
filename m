X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3221" "Saturday" "15" "October" "2016" "23:04:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016030402.059446C0D7D@smtpvmsrv1.mitre.org>" "90" "[oss-security] Re: potrace: multiple crashes" nil nil nil "10" "2016101603:04:02" "[oss-security] Re: potrace: multiple crashes" (number mark "U       cve-assign@m Oct 15   90/3221  " thread-indent "\"[oss-security] Re: potrace: multiple crashes\"\n") "<73591310.lZD5iXrPXu@willoughby>" ("<73591310.lZD5iXrPXu@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20378 invoked by uid 550); 16 Oct 2016 03:04:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20349 invoked from network); 16 Oct 2016 03:04:13 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <73591310.lZD5iXrPXu@willoughby>
Message-Id: <20161016030402.059446C0D7D@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 23:04:02 -0400 (EDT)
Subject: [oss-security] Re: potrace: multiple crashes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/08/08/potrace-multiple-three-null-pointer-dereference-in-bm_readbody_bmp-bitmap_io-c/

> AddressSanitizer: SEGV on unknown address
> 0x4f027b in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:717:4

Use CVE-2016-8694.


> AddressSanitizer: SEGV on unknown address
> 0x4f0957 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:744:4

Use CVE-2016-8695.


> AddressSanitizer: SEGV on unknown address
> 0x4f10b7 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:651:11

Use CVE-2016-8696.


> https://blogs.gentoo.org/ago/2016/08/08/potrace-divide-by-zero-in-bm_new-bitmap-h/

> AddressSanitizer: FPE on unknown address
> 0x508d51 in bm_new /tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap.h:63:24

Use CVE-2016-8697.


> https://blogs.gentoo.org/ago/2016/08/08/potrace-multiplesix-heap-based-buffer-overflow-in-bm_readbody_bmp-bitmap_io-c/

> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f3709 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:717:4

Use CVE-2016-8698.


> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f3728 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:651:11

Use CVE-2016-8699.


> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f37a8 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:652:11

Use CVE-2016-8700.


> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f3829 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:690:4

Use CVE-2016-8701.


> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f38d4 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:744:4

Use CVE-2016-8702.


> AddressSanitizer: heap-buffer-overflow ... READ of size 4
> 0x4f3947 in bm_readbody_bmp /var/tmp/portage/media-gfx/potrace-1.12/work/potrace-1.12/src/bitmap_io.c:601:2

Use CVE-2016-8703.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAueMAAoJEHb/MwWLVhi2FLUQAIQfsa5xZPZvWE5y4yTcOu3U
m03UQx9odWYGvpUgdADOSKwQ1+GFPSJpi+OvaLQmDfss/BdWUKHg+3U69gz5xw7t
QQ2DeV/Ei80uQr86hV212NHXHRd3e0debRecETnZQfZTBIuCfU9AMKo7NhPmFX6x
0nnhfoDh1mFA4OYnoBachWW3LtxI2wyELYXEQsL+wEKNXZCzlcuPdbahcg7dY/G2
pqdd44JsNZvTlGOD1izHWrHCLprr2pvxNkgHKyJO9BnA+1n1aSXGsydO8P9xjdyB
p01Ro73so2ThiTq98R6KkPD1aPSdZK1pm0ivj4BiXk2Qn4ay1HifwyV5F+0rJwv6
xRcfLbcFErELio36DocC7F+8mot1cVIliNUgzOrW9+PBu7q+ns9cBmvDhgaszRp+
1IF5J4HyCJzDg5Db9qUQbk9+XindKjDSPlWYCh4sYFryHZBAz5YG+YaDzYTSxqzq
YUWeCjNFnmOqc0IBeoE15DDB4mWLdqGTxfWdFIP5jy9ivZH38V+G2s/TMrxqDRy4
xt0JCLAK1UAPWIrTVgXzKSm0QUJJRh/5pd5/oJbHtLPy+Bhmc+AcbfMsMbbvYWML
STn0lvtUfFXfRQUambTGirq2/4Z0sdcUD6RzR8mFVKjSVLdgo3Q0zymyUbGovX7Q
JL23K3iztdYCJxzUs4fS
=zR6v
-----END PGP SIGNATURE-----
