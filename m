X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3086" "Wednesday" "16" "January" "2019" "09:26:24" "+0400" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>" "77" "[oss-security] Heap based buffer overflow in wolfSSL" nil nil nil "1" "2019011605:26:24" "[oss-security] Heap based buffer overflow in wolfSSL" (number mark "U       mishra.dhira Jan 16   77/3086  " thread-indent "\"[oss-security] Heap based buffer overflow in wolfSSL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17582 invoked by uid 550); 16 Jan 2019 11:42:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9865 invoked from network); 16 Jan 2019 05:26:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=dm3bt0yDIJb10yiaY881f5QXCLuQGcfNo14rOUu9+bA=;
        b=FTLgdazTyi/BnXYCcWcK3WPLUnbCVjHetpLJhHl7l0DcEz/Gm97AQXA3ilpbVEFP0M
         8YPQUTTsXWu+gfYe9szqg2doULVpWAU2NhUT2squ3MCHXCO7ymBzi7cu7nvTXaUlM5tG
         GfItHemj8Ii5F2VzeDkrH+2bjnPZzcljLSiAGDp3VTy1Aqi1y2yBIyPyFQIbe6lKf+OH
         HV3+vsmGs76fmzXpTusbX6Q9Az4EUCsoNcCnIJGr0V8A9EBFCvXIvj+rl4Wfcz8N7Ri9
         +2/Lxn6XWfp9LPTTUcdyKNh1PShY1illOeJ+aHTxZhPzOrvM3VC6tEki9s+nayqBFfJo
         Vg+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dm3bt0yDIJb10yiaY881f5QXCLuQGcfNo14rOUu9+bA=;
        b=lgiDc77m2dTGJJX78NDS/LEbZ+FLAXQgHU9zTphYHrUGjss4z0yOGY+7TPcgm6SiHL
         dMXdfaMroTSyoyZSJgp5V6h+hTS7QFv2cWiSEQNpmgHlo1Zpdc6nt2RAtJddNkhBQpiO
         izmDU8Og20E0qXK6bdBcQbPJo+VbAekDiAe1awUVwu9U9uUVTpWC9t1imQwJ4bANZLca
         9VITmRqMCBMVUGAlrJXTW+QbjmxDnkl0nsRt2/WfZhXc63pffRw98UCceRNR34U0kjew
         /tJGVgeSE9hZiYX2PIEdQzg3QQ54E1yhgOQItkHv0OO3Ny61Vxl3/EPtiFJL/UdIHtkF
         hnlg==
X-Gm-Message-State: AJcUukfMe0UseesVsfRyAg4pF41oKavBiNrnjCP+/zgvcp3or9JUD+71
	hvetZ999b1TCRtwdDQOVyJkupxsjH4W2FD+qdbVL7IiLmnQ=
X-Google-Smtp-Source: ALg8bN7RyMIrFoSFGnyNAr3GdWqklwM0cp/83d6EgOmGAUouDRst2h7IbNNdLXOqc0rCmjy4zCHTWfOESMLGaXyrrk4=
X-Received: by 2002:a63:ff16:: with SMTP id k22mr7231071pgi.244.1547616395265;
 Tue, 15 Jan 2019 21:26:35 -0800 (PST)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Wed, 16 Jan 2019 09:26:24 +0400
Message-ID: <CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007d0e29057f8c8567"
Subject: [oss-security] Heap based buffer overflow in wolfSSL

--0000000000007d0e29057f8c8567
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
wolfSSL is an C-language-based SSL/TLS library targeted at IoT, embedded,
and RTOS environments a heap-based-buffer overflow was observed in
tls_bench.c which is a benchmark tool in wolfSSL.

## ASAN
==4088==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x619000000480 at pc 0x00000050ff16 bp 0x7fef206fdbf0 sp 0x7fef206fdbe8
WRITE of size 1 at 0x619000000480 thread T2
    #0 0x50ff15  (/wolfssl/examples/benchmark/tls_bench+0x50ff15)
    #1 0x4dfa52  (/wolfssl/examples/benchmark/tls_bench+0x4dfa52)
    #2 0x7fef243ac6da  (/lib/x86_64-linux-gnu/libpthread.so.0+0x76da)
    #3 0x7fef23ab188e  (/lib/x86_64-linux-gnu/libc.so.6+0x12188e)

0x619000000480 is located 0 bytes to the right of 1024-byte region
[0x619000000080,0x619000000480)
allocated by thread T2 here:
    #0 0x4d1fa0  (/wolfssl/examples/benchmark/tls_bench+0x4d1fa0)
    #1 0x50f277  (/wolfssl/examples/benchmark/tls_bench+0x50f277)
    #2 0x4dfa52  (/wolfssl/examples/benchmark/tls_bench+0x4dfa52)

Thread T2 created by T0 here:
    #0 0x435490  (/wolfssl/examples/benchmark/tls_bench+0x435490)
    #1 0x50cbf5  (/wolfssl/examples/benchmark/tls_bench+0x50cbf5)
    #2 0x5101d0  (/wolfssl/examples/benchmark/tls_bench+0x5101d0)
    #3 0x7fef239b1b96  (/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

SUMMARY: AddressSanitizer: heap-buffer-overflow
(/wolfssl/examples/benchmark/tls_bench+0x50ff15)
Shadow bytes around the buggy address:
  0x0c327fff8040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c327fff8050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c327fff8060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c327fff8070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c327fff8080: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0c327fff8090:[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c327fff80a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c327fff80b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c327fff80c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c327fff80d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c327fff80e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
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
==4088==ABORTING

References:
https://github.com/wolfSSL/wolfssl
https://github.com/wolfSSL/wolfssl/issues/2032
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-6439


Thank you
@mishradhiraj_

--0000000000007d0e29057f8c8567--
