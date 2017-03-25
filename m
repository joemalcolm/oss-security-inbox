X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Saturday" "25" "March" "2017" "14:57:07" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<6627125.qZ1aFFj61H@arcadia>" "24" "Re: [oss-security] libtiff: multiple divide-by-zero" "^Date:" nil nil "3" "2017032513:57:07" "[oss-security] libtiff: multiple divide-by-zero" (number mark "U       ago@gentoo.o Mar 25   24/818   " thread-indent "\"Re: [oss-security] libtiff: multiple divide-by-zero\"\n") "<1875168.fojZKPVITU@arcadia>" ("<1875168.fojZKPVITU@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13600 invoked by uid 550); 25 Mar 2017 13:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13574 invoked from network); 25 Mar 2017 13:57:24 -0000
Message-ID: <6627125.qZ1aFFj61H@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <1875168.fojZKPVITU@arcadia>
References: <1875168.fojZKPVITU@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Sat, 25 Mar 2017 14:57:07 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libtiff: multiple divide-by-zero
To: oss-security@lists.openwall.com

On Sunday 01 January 2017 16:46:12 Agostino Sarubbo wrote:
> Permalink:
> https://blogs.gentoo.org/ago/2017/01/01/libtiff-multiple-divide-by-zero

> # tiffcp $FILE /tmp/foo
> ==12079==ERROR: AddressSanitizer: FPE on unknown address 0x7fd319436251 (pc
> 0x7fd319436251 bp 0x7fff851e3d80 sp 0x7fff851e3d30 T0)
>     #0 0x7fd319436250 in TIFFReadEncodedStrip /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_read.c:351:22

This is CVE-2016-10266
 

> # tiffmedia $FILE /tmp/foo
> ==28106==ERROR: AddressSanitizer: FPE on unknown address 0x7faeae7f744e (pc
> 0x7faeae7f744e bp 0x7ffceab45e40 sp 0x7ffceab45ce0 T0)
>     #0 0x7faeae7f744d in OJPEGDecodeRaw /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_ojpeg.c:816:8

This is CVE-2016-10267

-- 
Agostino Sarubbo
Gentoo Linux Developer
