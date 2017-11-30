X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3503" "Thursday" "30" "November" "2017" "19:41:03" "+0900" "=?utf-8?B?67Cx7KCV7Jq0?=" "jeongun.baek@gmail.com" "<EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>" "82" "[oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)" nil nil nil "11" "2017113010:41:03" "[oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)" (number mark "U       jeongun.baek Nov 30   82/3503  " thread-indent "\"[oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5330 invoked by uid 550); 30 Nov 2017 11:45:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7431 invoked from network); 30 Nov 2017 10:41:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=eChPJWnG+is0rlSkf9UtB8vOW1mGAwcBNKWivmbfPiI=;
        b=cQV/3Fpr/uGphVltSsVZrxiDN1rNAy7aZ+L2JuDJkUSAGXkDoopqmkp8gICa8CtVgy
         llT7SqDSiJaE5Qnxy7h44Z+bOgLhkIjPCVwL8G1INPc47Kzy9mTN+4rx5uCTBT/fr+4M
         0MzJH6tKj6RZCnuxghSYynKGt9cVrhG6vu5twqoTjW9YgfZDiPfhK0uR8nY+nxwKuFhV
         Lz9Im69SmtyY+QWT4O/AI25UGjRvtpO2hUBiRO6zZ/12gCycR8cEqnPzEf6swLAw8VYb
         xVRG+6FCHV0DIo5IPegUibaijH0mjwQcb+jLNwQPvrcuwO5SP4K37bRwzcpkS/ZLoR1I
         GtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=eChPJWnG+is0rlSkf9UtB8vOW1mGAwcBNKWivmbfPiI=;
        b=aYjxejiDsrQyU3hbd/giFF9tR3mreQybjr1PsqGd5N0d5GT71RqVmstfUJRoSV7LXN
         o9/EQIztUV/P0JVYytsRsE1E2+CmaYphEvZ8yEj8BbIG3ubEING+Qo6NC0TXeEyNeMzK
         kl4vRWUb6BHODz54A0I+bD+h18kFdqJoUeD1KGlyMSUTwCDALWCrKRQvinwU7RmtT4PW
         7gFUXpmJNLHX96NE4aGYrWfmbMYZRssiUILzw8CqqFTtuC5uU+032xxkLwqTlp/tr73V
         q6SyWyh2JLjpd4QaZ1j7c4gk/TkCrslQ4jtUGzUq6T48+kn9eXBTlUDeRGL+A2/Mm48C
         BxwA==
X-Gm-Message-State: AJaThX7pVMwD4lbMi+Dn/McUSU/wJnyAHJRWK1pzGJrkhYouWOYsJeye
	aV0TJK5QrSCpLI28bRf2wXrElgDY
X-Google-Smtp-Source: AGs4zMYqODH3yN1Fdvx6HgJ9i1jSczcnvb58PF6JspgUzQCAexSlyF0kJLkaSg9J1+uyvrE7S51Ekw==
X-Received: by 10.84.171.195 with SMTP id l61mr2170625plb.129.1512038467915;
        Thu, 30 Nov 2017 02:41:07 -0800 (PST)
From: =?utf-8?B?67Cx7KCV7Jq0?= <jeongun.baek@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7620453B-9F1A-4CEE-87EB-8189296147D1"
Mime-Version: 1.0 (Mac OS X Mail 11.1 \(3445.4.7\))
Message-Id: <EC646F2B-8F97-4B77-AE45-9462445D1B6F@gmail.com>
Date: Thu, 30 Nov 2017 19:41:03 +0900
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.4.7)
Subject: [oss-security] libtiff: Heap-based buffer overflow bug in pal2rgb(pal2rgb.c)

--Apple-Mail=_7620453B-9F1A-4CEE-87EB-8189296147D1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi all,

A heap-based buffer overflow flaw was found in pal2rgb. A malicious user ca=
n manipulate the heap memory of a process using COLORMAP, Image Width, and =
Image Length value of a TIFF document.

http://bugzilla.maptools.org/show_bug.cgi?id=3D2750 <http://bugzilla.maptoo=
ls.org/show_bug.cgi?id=3D2750>

The ASAN debug information is below:
/tools/pal2rgb poc.tiff /dev/null

TIFFFetchNormalTag: Warning, IO error during reading of "XResolution"; tag
ignored.
TIFFFetchNormalTag: Warning, IO error during reading of "YResolution"; tag
ignored.
sample.tiff: JPEG compression support is not configured.
TIFFSetField: /dev/null: Unknown pseudo-tag 65537.
TIFFSetField: /dev/null: Unknown pseudo-tag 65538.
sample.tiff: JPEG compression support is not configured.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D29649=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
0x611000009fe1 at pc 0x0000004f3109 bp 0x7fff697434d0 sp 0x7fff697434c8
WRITE of size 1 at 0x611000009fe1 thread T0
    #0 0x4f3108  (/home/vagrant/targets/asan/tt/tools/pal2rgb+0x4f3108)
    #1 0x7f678dc0cf44  (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
    #2 0x419ba5  (/home/vagrant/targets/asan/tt/tools/pal2rgb+0x419ba5)

0x611000009fe1 is located 0 bytes to the right of 225-byte region
[0x611000009f00,0x611000009fe1)
allocated by thread T0 here:
    #0 0x4c3f08  (/home/vagrant/targets/asan/tt/tools/pal2rgb+0x4c3f08)
    #1 0x4f2748  (/home/vagrant/targets/asan/tt/tools/pal2rgb+0x4f2748)
    #2 0x7f678dc0cf44  (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)

SUMMARY: AddressSanitizer: heap-buffer-overflow
(/home/vagrant/targets/asan/tt/tools/pal2rgb+0x4f3108)
Shadow bytes around the buggy address:
  0x0c227fff93a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff93b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff93c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff93d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff93e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=3D>0x0c227fff93f0: 00 00 00 00 00 00 00 00 00 00 00 00[01]fa fa fa
  0x0c227fff9400: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff9410: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff9420: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff9430: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff9440: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
=3D=3D29649=3D=3DABORTING
Affected version:
4.0.9=

--Apple-Mail=_7620453B-9F1A-4CEE-87EB-8189296147D1--
