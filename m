X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Friday" "16" "September" "2016" "21:49:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160917014919.76934B2E003@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)" nil nil nil "9" "2016091701:49:19" "[oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)" (number mark "U       cve-assign@m Sep 16   46/1694  " thread-indent "\"[oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)\"\n") "<1954849.FvxM1m0O36@arcadia>" ("<1954849.FvxM1m0O36@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31979 invoked by uid 550); 17 Sep 2016 01:49:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31947 invoked from network); 17 Sep 2016 01:49:31 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1954849.FvxM1m0O36@arcadia>
Message-Id: <20160917014919.76934B2E003@smtpvbsrv1.mitre.org>
Date: Fri, 16 Sep 2016 21:49:19 -0400 (EDT)
Subject: [oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/17/libav-null-pointer-dereference-in-put_no_rnd_pixels8_xy2_mmx-rnd_template-c/
> 
> A fuzzing, with an mp3 file as input, discovered a null pointer access in
> put_no_rnd_pixels8_xy2_mmx.
> 
> Input #0, h263, from '9.crashes'
> 
> AddressSanitizer: SEGV on unknown address
> 
> put_no_rnd_pixels8_xy2_mmx libav-11.7/libavcodec/x86/rnd_template.c:37:5
> 
> https://git.libav.org/?p=libav.git;a=commit;h=136f55207521f0b03194ef5b55ba70f1635d6aee

>> mpegvideo_motion: Handle edge emulation even without unrestricted_mv
>> 
>> Fix out of bounds read.
>> 
>> libavcodec/mpegvideo_motion.c

Use CVE-2016-7424.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3KC3AAoJEHb/MwWLVhi22mgQAIBJvVTNLEjK2nah32PovlaX
Ttm/nelFwY1rclJ0omateDF2UVID2ha/pI7V14mLiEcf1YfrLa+fh4AsCHOPFcSw
sMxzP79oyiSi5H5zwj4O1RAYD5zi3t4sWyM18cig+Sd10iMhTI6JShcBOtrbL344
o1d/x4DLUoBQIUDx+LVOwIXq5QreSM48mrJANIKhIBu1tzEu41yceD+lr2l05etH
63GgxmF5WOP3vPB7pEr4b21HdfonAKjOjZpevVUhHfzzjP5ccYHDd5bMbwUXwEi8
WO1UhmZPekY3zWTOSSLAaZL8DjtqJg2FIacpHrZk+czjbet4ybOualFfGOyE2Vvh
AMCo5XIR63z73A4e9QbkN/UvxjGnjbY8/lz9poWGvzVfEj2FCaItgXWW1QOgqc/V
Xasq9ZRsrZ25RILLRVA65w4RTEssHN+A6meyvU6Vub/R+M5jbZLqOq1JHvE9C8PO
yjJv1Gdc6evvHM+54QURCjnDIU7XNczvy2ALpfYRC+5S3ILSKuvQ0pbvebXIHofU
XVvAToc04+Bn5wJXQ68H8ZERrKgwS0Od9RFcWNs3tYSXU+P7/A806OiBbxdw8riX
jrxDBGftqSlptgA2tcuyA0pcQFF6yTMLverW9CQdzE1Lsv6+WDh3Nv5iztJQIHrC
3CA42JEkSvBTLCKzrG8z
=OD1P
-----END PGP SIGNATURE-----
