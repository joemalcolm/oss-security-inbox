X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4094" "Sunday" "2" "October" "2016" "13:30:21" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriKAFZKb2_5V8xtyJJQ-DaaY4XimBkZvneRD3wXYMxjnmA@mail.gmail.com>" "96" "[oss-security] imagemagick mogrify use after free" nil nil nil "10" "2016100205:30:21" "[oss-security] imagemagick mogrify use after free" (number mark "U       marco.gra@gm Oct  2   96/4094  " thread-indent "\"[oss-security] imagemagick mogrify use after free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7799 invoked by uid 550); 2 Oct 2016 05:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7770 invoked from network); 2 Oct 2016 05:30:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=wtpExYOqJhGPfuxcNo7RXdvVHKl9LI9dQZQDzzhyCZs=;
        b=ux+sfoZdugmgPSUQD8Y1OmookLcFubtO9o5DR7i1AI1gBW8UZn5PoVqGwCnOp1AOsQ
         PqoYoASeJXXiwdYyxg2AhuWS4Avt4SjidK6JEV1M5kxJ/xE+fktA5saxZ7Ltv8kqvHtb
         aJZKkEonUlrI6BwVIIaXWVzfmLteQizbXUUvTna7AhaComLEu99GVgtvZbjhuoglQ3C/
         obBzkyHzuS7L+U2Ci8zlriKWH3RMm+bWfljjVltE5sHZran844NzxqHu9SlpsoPKSiYG
         MpN02dafBB/9LfcWC839KdaH7Jk4upiwd2XH1uPDkItQ1RUWIoYP9KoOQqlMdIPtE495
         52rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=wtpExYOqJhGPfuxcNo7RXdvVHKl9LI9dQZQDzzhyCZs=;
        b=IeC2yOgLLG/WWQAwVcUPZ8Ry9Zd9hRe2Lk6eQJM/J2N6P1tsaL45G9W3GJCo4Sw4xF
         vsfP6T37iU+o5uxp47RAnHEWaGVvlVfVI+C52Q9J1Mwd8rHb+AaiLO4PaJzS5BLk5kIR
         fWXP140OMz9/plkhFNIoQ/esY7mdR6R+9BaqWAwAzo2tGFCGAtJwDM/U4qe3kBMnNnVN
         qKOzDY27wB6CqteyjWxVhF15UN1iSd+jftNem1+/lKpj0dU38YlYDw7jIxgSSAkNfmU7
         Js3B2aosqlB5+BqpPmypH/ab+NZRZ5Rz4rb+5tEf0uOnsVxh3S2h7Mk4XD/OJio/6dAA
         wrSw==
X-Gm-Message-State: AA6/9Rmg2tfDawhOAAQGLydRgDSRp2Q7xd7PjCHB5fzp+2Q+AqW/I3JW24oLnHMxorNdaBZGH8edIJj43QI8SQ==
X-Received: by 10.107.57.139 with SMTP id g133mr18347266ioa.176.1475386222145;
 Sat, 01 Oct 2016 22:30:22 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Sun, 2 Oct 2016 13:30:21 +0800
Message-ID: <CAFkTriKAFZKb2_5V8xtyJJQ-DaaY4XimBkZvneRD3wXYMxjnmA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a114ac88aad76ea053ddb1fe4
Subject: [oss-security] imagemagick mogrify use after free

--001a114ac88aad76ea053ddb1fe4
Content-Type: text/plain; charset=UTF-8

Hi,

imagemagick identify suffers of a use after free issue, which I reported
and has been patched, you can find a reproducer in the github bug tracker
issue link

issue: *https://github.com/ImageMagick/ImageMagick/issues/281
<https://github.com/ImageMagick/ImageMagick/issues/281>*
patch: *https://github.com/ImageMagick/ImageMagick/commit/d63a3c5729df59f183e9e110d5d8385d17caaad0
<https://github.com/ImageMagick/ImageMagick/commit/d63a3c5729df59f183e9e110d5d8385d17caaad0>*

Thanks,

Marco Grassi (@marcograss) of Tencent's Keen Lab

=================================================================
==5303==ERROR: AddressSanitizer: heap-use-after-free on address
0x60600003c628 at pc 0x0000016cfeba bp 0x7ffeb3910f50 sp 0x7ffeb3910f48
READ of size 4 at 0x60600003c628 thread T0
    #0 0x16cfeb9 in SetImageDepth
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/attribute.c:1040:43
    #1 0x16383cf in WriteTIFFImage
/home/bob/VulnResearch/misc/ImageMagick/coders/tiff.c:3212:16
    #2 0x18bfcfc in WriteImage
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/constitute.c:1100:14
    #3 0x18c2594 in WriteImages
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/constitute.c:1319:13
    #4 0x2ff1c7f in MogrifyImageCommand
/home/bob/VulnResearch/misc/ImageMagick/MagickWand/mogrify.c:3974:17
    #5 0x2f8cead in MagickCommandGenesis
/home/bob/VulnResearch/misc/ImageMagick/MagickWand/mogrify.c:183:14
    #6 0x4f5da9 in MagickMain
/home/bob/VulnResearch/misc/ImageMagick/utilities/magick.c:145:10
    #7 0x4f5da9 in main
/home/bob/VulnResearch/misc/ImageMagick/utilities/magick.c:176
    #8 0x7fc9edea082f in __libc_start_main
/build/glibc-GKVZIf/glibc-2.23/csu/../csu/libc-start.c:291
    #9 0x422428 in _start
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x422428)

0x60600003c628 is located 8 bytes inside of 56-byte region
[0x60600003c620,0x60600003c658)
freed by thread T0 here:
    #0 0x4c23d0 in __interceptor_cfree.localalias.0
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x4c23d0)
    #1 0x5ac708 in RelinquishMagickMemory
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/memory.c:1002:3

previously allocated by thread T0 here:
    #0 0x4c2558 in __interceptor_malloc
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x4c2558)
    #1 0x55c149 in NewLinkedList
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/linked-list.c:717:32

SUMMARY: AddressSanitizer: heap-use-after-free
/home/bob/VulnResearch/misc/ImageMagick/MagickCore/attribute.c:1040:43 in
SetImageDepth
Shadow bytes around the buggy address:
  0x0c0c7ffff870: fd fd fd fd fd fd fd fa fa fa fa fa fd fd fd fd
  0x0c0c7ffff880: fd fd fd fa fa fa fa fa fd fd fd fd fd fd fd fa
  0x0c0c7ffff890: fa fa fa fa fd fd fd fd fd fd fd fa fa fa fa fa
  0x0c0c7ffff8a0: fd fd fd fd fd fd fd fa fa fa fa fa fd fd fd fd
  0x0c0c7ffff8b0: fd fd fd fa fa fa fa fa 00 00 00 00 00 00 00 00
=>0x0c0c7ffff8c0: fa fa fa fa fd[fd]fd fd fd fd fd fa fa fa fa fa
  0x0c0c7ffff8d0: fd fd fd fd fd fd fd fa fa fa fa fa fd fd fd fd
  0x0c0c7ffff8e0: fd fd fd fa fa fa fa fa fd fd fd fd fd fd fd fa
  0x0c0c7ffff8f0: fa fa fa fa fd fd fd fd fd fd fd fa fa fa fa fa
  0x0c0c7ffff900: fd fd fd fd fd fd fd fa fa fa fa fa fd fd fd fd
  0x0c0c7ffff910: fd fd fd fa fa fa fa fa fd fd fd fd fd fd fd fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
==5303==ABORTING

--001a114ac88aad76ea053ddb1fe4--
