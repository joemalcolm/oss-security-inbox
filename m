X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3294" "Saturday" "1" "October" "2016" "14:22:41" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriJzamt=OwzB6HkD4a2jp3aCvQpNkwsCNoxvXwZKrcHQwQ@mail.gmail.com>" "87" "[oss-security] imagemagick mogrify global buffer overflow" nil nil nil "10" "2016100106:22:41" "[oss-security] imagemagick mogrify global buffer overflow" (number mark "U       marco.gra@gm Oct  1   87/3294  " thread-indent "\"[oss-security] imagemagick mogrify global buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28367 invoked by uid 550); 1 Oct 2016 06:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28348 invoked from network); 1 Oct 2016 06:22:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=//X8tEG9O/86HBjBwSlccbRmEkdeKbcohbycFYHJGXc=;
        b=uqV/2JDkm8Z/B8DJvqCWcYUNzn2mmlh/P8691gFfVwla3H1i9m227V9PqL1VrGiIMo
         Cfa7hqmJceKDRf0U0Ijb5LEsIfN+gLlcFiCgGBrzcXavPZx4vUVlHjiyps3z9EAvc8KW
         cr0rdgvEjV6cPlGsOR/ZEM50uzFZ+8X8jUJxnyIIjALMWdZDmz6LVp7uLRGTQ1AKDfKh
         AedL8LuO7d+abEEspl0W1pvjnP6gzfKuet6RO1GnYfH/dObfQcTfCpGX6nPoe3CkyFq9
         w7L8dhGlDFwhTH32PiEa4RuFQTesWK1kYMUwitJQJT29EABqDIL2zG6sFcV1zFUW1vGb
         UDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=//X8tEG9O/86HBjBwSlccbRmEkdeKbcohbycFYHJGXc=;
        b=dP7wcTg4RmRwNa1j9qvOodfsXyJUFnKpkbfcNUSq9rNk8/qqV4gDr+R/Ho11fQSS1i
         IfB3mhaxeKRzm/0zRED4zfSAnbmJn5ktK59tiVTHDMzqb/lKH6PdcWlimyuJ5iFz+2MX
         X5dvslCPNvPuSgtERbgM3rk3RA6ze/Sg0UmTV2lL0QHd/TZJAHM18AiAbBf8dkE1sOYs
         mt4Du+4rDbfMypINXARtnhN/J/ow+o8130uqnEyEewiduwSvNO/kVTiUH/TvsyLbQVbi
         DC5k9N+7rkL4BvAV1NXR9PlkALhCjcjMUn/4xXe9jt810+Efwg6XCrQ3iRSulZTXh0Ad
         jByw==
X-Gm-Message-State: AA6/9Rl0SYqIbe/WQtJo6VNLRVlcVsmjRrvt0VRD7uOuJHeH+WO+4PpkeMEUFuEgorU5H5Jb4VVNF/lcI5HKaw==
X-Received: by 10.107.8.169 with SMTP id h41mr12357866ioi.204.1475302961917;
 Fri, 30 Sep 2016 23:22:41 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Sat, 1 Oct 2016 14:22:41 +0800
Message-ID: <CAFkTriJzamt=OwzB6HkD4a2jp3aCvQpNkwsCNoxvXwZKrcHQwQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a113f9af0fb4894053dc7bcc8
Subject: [oss-security] imagemagick mogrify global buffer overflow

--001a113f9af0fb4894053dc7bcc8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

imagemagick identify suffers of a global buffer overflow issue, which I
reported and has been patched, you can find a reproducer in the github bug
tracker issue link

issue: https://github.com/ImageMagick/ImageMagick/issues/280
patch:
https://github.com/ImageMagick/ImageMagick/commit/a7bb158b7bedd1449a34432fe=
b3a67c8f1873bfa

Thanks,

Marco Grassi (@marcograss) of Tencent's Keen Lab

=E2=9E=9C utilities git:(master) =E2=9C=97 ./magick mogrify
../../ImageMagick_bugs/mogrify_gbof~~

=3D=3D26125=3D=3DERROR: AddressSanitizer: global-buffer-overflow on address
0x0000037a74fc at pc 0x00000077c9ba bp 0x7ffdffbaac70 sp 0x7ffdffbaac68
READ of size 4 at 0x0000037a74fc thread T0
#0 0x77c9b9
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x77c9b9)
#1 0x78024f
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x78024f)
#2 0x18bed91
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x18bed91)
#3 0x18c2594
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x18c2594)
#4 0x2ff1c7f
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x2ff1c7f)
#5 0x2f8cead
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x2f8cead)
#6 0x4f5da9
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x4f5da9)
#7 0x7f3717a6b82f (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)
#8 0x422428
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x422428)

0x0000037a74fc is located 4 bytes to the left of global variable
'format_bytes' defined in 'MagickCore/profile.c:1945:5' (0x37a7500) of size
52
0x0000037a74fc is located 34 bytes to the right of global variable ''
defined in 'MagickCore/profile.c:1306:38' (0x37a74c0) of size 26
'' is ascii string 'ResetImageProfileIterator'
SUMMARY: AddressSanitizer: global-buffer-overflow
(/home/bob/VulnResearch/misc/ImageMagick/utilities/magick+0x77c9b9)
Shadow bytes around the buggy address:
0x0000806ece40: f9 f9 f9 f9 00 00 f9 f9 f9 f9 f9 f9 02 f9 f9 f9
0x0000806ece50: f9 f9 f9 f9 00 00 00 03 f9 f9 f9 f9 05 f9 f9 f9
0x0000806ece60: f9 f9 f9 f9 00 00 00 00 01 f9 f9 f9 f9 f9 f9 f9
0x0000806ece70: 00 04 f9 f9 f9 f9 f9 f9 00 00 00 00 00 00 06 f9
0x0000806ece80: f9 f9 f9 f9 00 00 03 f9 f9 f9 f9 f9 00 00 00 00
=3D>0x0000806ece90: 00 06 f9 f9 f9 f9 f9 f9 00 00 00 02 f9 f9 f9[f9]
0x0000806ecea0: 00 00 00 00 00 00 04 f9 f9 f9 f9 f9 05 f9 f9 f9
0x0000806eceb0: f9 f9 f9 f9 05 f9 f9 f9 f9 f9 f9 f9 00 00 00 00
0x0000806ecec0: 00 00 00 00 f9 f9 f9 f9 05 f9 f9 f9 f9 f9 f9 f9
0x0000806eced0: 04 f9 f9 f9 f9 f9 f9 f9 05 f9 f9 f9 f9 f9 f9 f9
0x0000806ecee0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07
Shadow byte legend (one shadow byte represents 8 application bytes):
Addressable: 00
Partially addressable: 01 02 03 04 05 06 07
Heap left redzone: fa
Heap right redzone: fb
Freed heap region: fd
Stack left redzone: f1
Stack mid redzone: f2
Stack right redzone: f3
Stack partial redzone: f4
Stack after return: f5
Stack use after scope: f8
Global redzone: f9
Global init order: f6
Poisoned by user: f7
Container overflow: fc
Array cookie: ac
Intra object redzone: bb
ASan internal: fe
Left alloca redzone: ca
Right alloca redzone: cb
=3D=3D26125=3D=3DABORTING

--001a113f9af0fb4894053dc7bcc8--
