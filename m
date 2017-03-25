X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2026" "Saturday" "25" "March" "2017" "15:11:02" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<7168532.Ox717MafC3@arcadia>" "51" "Re: [oss-security] libtiff: multiple heap-based buffer overflow" nil nil nil "3" "2017032514:11:02" "[oss-security] libtiff: multiple heap-based buffer overflow" (number mark "U       ago@gentoo.o Mar 25   51/2026  " thread-indent "\"Re: [oss-security] libtiff: multiple heap-based buffer overflow\"\n") "<5357154.SVZ41LeQyt@arcadia>" ("<5357154.SVZ41LeQyt@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32175 invoked by uid 550); 25 Mar 2017 14:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32154 invoked from network); 25 Mar 2017 14:11:19 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 25 Mar 2017 15:11:02 +0100
Message-ID: <7168532.Ox717MafC3@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <5357154.SVZ41LeQyt@arcadia>
References: <5357154.SVZ41LeQyt@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] libtiff: multiple heap-based buffer overflow

On Sunday 01 January 2017 16:48:02 Agostino Sarubbo wrote:
> Permalink:
> https://blogs.gentoo.org/ago/2017/01/01/libtiff-multiple-heap-based-buffer-o
> verflow

> # tiffcp -i $FILE /tmp/foo
> ==16440==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x62500000e861 at pc 0x0000004531de bp 0x7ffd2aba5c30 sp 0x7ffd2aba53e0
> READ of size 78490 at 0x62500000e861 thread T0
>     #1 0x7f280456d37b in _tiffWriteProc /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_unix.c:115:23
This is CVE-2016-10268


> #tiffcp -i $FILE /tmp/foo
> ==10398==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x60200000eef4 at pc 0x0000004bc235 bp 0x7fff3ebfa700 sp 0x7fff3ebf9eb0
> READ of size 512 at 0x60200000eef4 thread T0
>      #1 0x7fcaf590cf0d in _TIFFmemcpy /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_unix.c:340:2
This is CVE-2016-10269

> # tiffcp -i $FILE /tmp/foo
> ==15106==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x60200000edd8 at pc 0x7f33918c5de3 bp 0x7ffc5abe6ba0 sp 0x7ffc5abe6b98
> READ of size 8 at 0x60200000edd8 thread T0
>     #0 0x7f33918c5de2 in TIFFFillStrip /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_read.c:523:22
This is CVE-2016-10270

> # tiffcrop -i $FILE /tmp/foo
> ==9181==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x7fd3b2e277f8 at pc 0x7fd3b7a762cc bp 0x7ffffd6e2550 sp 0x7ffffd6e2548
> READ of size 1 at 0x7fd3b2e277f8 thread T0
>     #0 0x7fd3b7a762cb in _TIFFFax3fillruns /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_fax3.c:413:13
This is CVE-2016-10271

> # tiffcrop -i $FILE /tmp/foo
> ==29649==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x62d00000a3fc at pc 0x0000004bc48c bp 0x7ffd6f23c680 sp 0x7ffd6f23be30
> WRITE of size 2048 at 0x62d00000a3fc thread T0
>       #1 0x7fcac5ac0033 in NeXTDecode /tmp/portage/media-
> libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_next.c:64:9
This is CVE-2016-10272



-- 
Agostino Sarubbo
Gentoo Linux Developer
