X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3358" "Monday" "6" "June" "2016" "20:48:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160607004834.1C15252E001@smtpvbsrv1.mitre.org>" "84" "[oss-security] Re: 3 bugs refer to buffer overflow in in libtiff 4.0.6" nil nil nil "6" "2016060700:48:34" "[oss-security] Re: 3 bugs refer to buffer overflow in in libtiff 4.0.6" (number mark "U       cve-assign@m Jun  6   84/3358  " thread-indent "\"[oss-security] Re: 3 bugs refer to buffer overflow in in libtiff 4.0.6\"\n") "<tencent_62222EFF74B667984E9F8E5B@qq.com>" ("<tencent_62222EFF74B667984E9F8E5B@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30418 invoked by uid 550); 7 Jun 2016 00:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30392 invoked from network); 7 Jun 2016 00:48:48 -0000
From: cve-assign@mitre.org
To: 271193918@qq.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <tencent_62222EFF74B667984E9F8E5B@qq.com>
Message-Id: <20160607004834.1C15252E001@smtpvbsrv1.mitre.org>
Date: Mon,  6 Jun 2016 20:48:34 -0400 (EDT)
Subject: [oss-security] Re: 3 bugs refer to buffer overflow in in libtiff 4.0.6

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> #####################################
> 1) stack buffer overflow in thumbnail 
> #####################################
> 
> 
> Memory corruption bugs can be triggered when thumbnail function _TIFFVGetField handling maliciously crafted tiff file, 
> it will cause the target application to crash.
> 
> AddressSanitizer: stack-buffer-overflow ...
> WRITE of size 4

Use CVE-2016-5318.


> ####################################
> 2) heap buffer overflow in bmp2tiff
> ####################################
> 
> 
> Memory corruption bugs can be triggered when bmp2tiff handling maliciously crafted bmp file, it will cause the target 
> application to crash.
> 
> bmp2tiff.c:line 752 deals with comprbuf and does not check the length of Image width.
> 
> AddressSanitizer: heap-buffer-overflow ...
> READ of size 1 ...
>     #0 0x403b66 in main /root/Desktop/AFL/tiff-4.0.6-Asan/tools/bmp2tiff.c:745

We do not feel that a CVE ID is required for this issue. This is a
crash issue in the bmp2tiff command-line program, not an issue within
the libtiff library. Accordingly, it only affects use of the bmp2tiff
program, not other programs that a user may build with the library. If
the user accesses a crafted BMP file and observes a crash in
bmp2tiff, with the reported "READ" outside the bounds of a buffer,
then a complete solution may be for the user to avoid accessing that
specific BMP file again. As far as we can tell, this "READ of size 1"
does not affect the flow of control and is not exploitable for code
execution.


> ####################################
> 3) heap buffer overflow in bmp2tiff
> ####################################
> 
> Memory corruption bugs can be triggered when bmp2tiff handling maliciously crafted bmp file, it will cause the target 
> application to crash.
> 
> PackBitsEncode.c:line 85 does not check the length of bp passed through buf.

(the filename is actually tif_packbits.c not PackBitsEncode.c)

> AddressSanitizer: heap-buffer-overflow ...
> READ of size 1 ...
>     #0 0x48709f in PackBitsEncode /root/Desktop/AFL/tiff-4.0.6/libtiff/tif_packbits.c:85
>     #1 0x458563 in TIFFWriteScanline /root/Desktop/AFL/tiff-4.0.6/libtiff/tif_write.c:173
>     #2 0x403f83 in main /root/Desktop/AFL/tiff-4.0.6/tools/bmp2tiff.c:775

Use CVE-2016-5319 for this PackBitsEncode issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXVg3mAAoJEHb/MwWLVhi22NIQALAzwueERmQaSsyOZkCiy7y3
2V7gEeiDH+nH8g6Qnf9iqHYY+uU6aRRG3RnhzLitDRj9N32UD4+UhnVC9J0kSL9+
Q/H0Q3H0erBQl0S/l6z7CVzpmHdDqGmE5Al7PVltTigCY5wpQCnnS/R9kmXJwStf
ZlYyqDNSrFHwtpv8Dmhf0mpdh7yQYWw77Xf/F7iZ9/VLlIPggwjqc4kUdiX7mrvX
QQUobtPzNZ/ATear95CpZxa8D5lFVi8RkSiTP8BW74Me3xLao16fezKSjR/hR+0L
ZNYBo6uHQmQsHMDur26ENGoonmiVKXMKtDnAtCLtJoOtG0d/b0QxdoEfUnele/xL
clcBqRmJYdI33cE7eA7nISzcuRJ5Jo2soSB4JvrqTZPiFoH8LGnQRtWGPUyxYWT+
Q86XvYFKdBE+Wv1s5dRKFVboXgfsTH8UUqbnzcPvKcBcFvdOyNIUIt3RVyncb6TE
6f7/Ffr18nksdd6oG9bB7Ke095Rhe+t0zXhRbT/2MpCUV93OCfxkFsZczCdR6EQQ
xWYHoaQLxbFICcX0Cq+UtstR7GZG8Ue1nOLbbkTC9/LBt10seXHAFxeI/s4kj4yH
7va4b2kv4borlBr5w1D9iLD+cbzrLvpOEKSIHzk40dWbJc71dbCRd+CGVCxq2UYU
WbQOieCXn2W3mw6MktxM
=OWHh
-----END PGP SIGNATURE-----
