X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3481" "Monday" "20" "June" "2016" "13:10:32" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7kM6n0Qzy6DkV+8y1SvzWYmp_S=bL6MekkLMEVcCP6dQ@mail.gmail.com>" "86" "[oss-security] CVE-2016-3189: bzip2 use-after-free on bzip2recover" nil nil nil "6" "2016062011:10:32" "[oss-security] CVE-2016-3189: bzip2 use-after-free on bzip2recover" (number mark "U       cbuissar@red Jun 20   86/3481  " thread-indent "\"[oss-security] CVE-2016-3189: bzip2 use-after-free on bzip2recover\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30393 invoked by uid 550); 20 Jun 2016 11:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30337 invoked from network); 20 Jun 2016 11:10:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=FIAWM6tvPEk9J//wFdscUbpBAyqAyG4kxervI9t9pns=;
        b=Ii6KKR1IX31j/h8AzysjfiShoUt+tsoQynVB5dZg4WEAV1Jgbjezsc30zR/4dwEnl1
         oypSomcsasP4UaTv4vzYhGPRFZpWrhttlS9bctT395SB7ieDJHjCR1uoj94AubYSQajq
         IAcdiAfcLA5b9bmeU1RUZN4QVHzLTjT5IFSdu66iQCaw3gA1IJgysWUufkod4G5u5TBb
         1P8cJZt6vOAkfQOp0TWGS0o53M/2xxHIavdSsN5SwUC0zjuVNJpoOa/pcp8n2Al/tXkP
         aM9ctEOBYncyud5SARPhYTRDa51sJq6LPtBuphu4C3UVk61QiklWpDeTAW7Fy1ddcrdA
         5AGA==
X-Gm-Message-State: ALyK8tJ2CejGGKjo79FP+pA3O5nx8EQSZeG5F4tWzv69Z69bGKXSBZv/wkaMZvvJ9uSpycWscOQH4Am7Gjnw3vZe
MIME-Version: 1.0
X-Received: by 10.66.25.133 with SMTP id c5mr21391514pag.103.1466421032891;
 Mon, 20 Jun 2016 04:10:32 -0700 (PDT)
Date: Mon, 20 Jun 2016 13:10:32 +0200
Message-ID: <CAKG8Do7kM6n0Qzy6DkV+8y1SvzWYmp_S=bL6MekkLMEVcCP6dQ@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=bcaec52bed09c1d0fa0535b3c084
Subject: [oss-security] CVE-2016-3189: bzip2 use-after-free on bzip2recover

--bcaec52bed09c1d0fa0535b3c084
Content-Type: text/plain; charset=UTF-8

Hi all,

This is to report CVE-2016-3189: bzip2 use-after-free on bzip2recover

A heap use after free vulnerability was reported in bzip2recover.
A maliciously crafted file could cause the application to crash.

Originally reported by Aladdin Mubaied

For additional information & proposed patch:
https://bugzilla.redhat.com/show_bug.cgi?id=1319648

== ASAN output & backtrace ==
bzip2recover 1.0.6: extracts blocks from damaged .bz2 files.
/opt/bzip-asan/bin/bzip2recover: searching for block boundaries ...
   block 1 runs from 176 to 175
   block 2 runs from 224 to 871
   block 3 runs from 920 to 919
   block 4 runs from 968 to 1024 (incomplete)
bzip2recover: splitting into blocks
   writing block 2 to `crasherfile1' ...
Program received signal SIGSEGV, Segmentation fault.
=================================================================
==8476== ERROR: AddressSanitizer: heap-use-after-free on address
0x60060000ef8c at pc 0x40277c bp 0x7fff7f1afe90 sp 0x7fff7f1afe80
READ of size 4 at 0x60060000ef8c thread T0
    #0 0x40277b (/opt/bzip-asan/bin/bzip2recover+0x40277b)
    #1 0x401f35 (/opt/bzip-asan/bin/bzip2recover+0x401f35)
    #2 0x7f10fcae2af4 (/usr/lib64/libc-2.17.so+0x21af4)
    #3 0x4020e4 (/opt/bzip-asan/bin/bzip2recover+0x4020e4)
0x60060000ef8c is located 12 bytes inside of 24-byte region
[0x60060000ef80,0x60060000ef98)
freed by thread T0 here:
    #0 0x7f10fce98009 (/usr/lib64/libasan.so.0.0.0+0x16009)
    #1 0x40205c (/opt/bzip-asan/bin/bzip2recover+0x40205c)
previously allocated by thread T0 here:
    #0 0x7f10fce98129 (/usr/lib64/libasan.so.0.0.0+0x16129)
    #1 0x40175f (/opt/bzip-asan/bin/bzip2recover+0x40175f)
Shadow bytes around the buggy address:
  0x0c013fff9da0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9db0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9dc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9dd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9de0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c013fff9df0: fd[fd]fd fa fa fa 00 00 00 fa fa fa fd fd fd fa
  0x0c013fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9e10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9e20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9e30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c013fff9e40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:     fa
  Heap righ redzone:     fb
  Freed Heap region:     fd
  Stack left redzone:    f1
  Stack mid redzone:     f2
  Stack right redzone:   f3
  Stack partial redzone: f4
  Stack after return:    f5
  Stack use after scope: f8
  Global redzone:        f9
  Global init order:     f6
  Poisoned by user:      f7
  ASan internal:         fe

bt
#0  0x00007ffff7a8fa11 in putc () from /lib64/libc.so.6
#1  0x00000000004046ad in bsPutBit (bit=0x0, bs=<optimized out>) at
bzip2recover.c:183
#2  bsPutUChar (c=<optimized out>, bs=<optimized out>) at bzip2recover.c:246
#3  main (argc=<optimized out>, argv=<optimized out>) at bzip2recover.c:455
#4  0x00007ffff7a3caf5 in __libc_start_main () from /lib64/libc.so.6
#5  0x0000000000405bd9 in _start ()

Regards,

-- 
Cedric Buissart,
Product Security

--bcaec52bed09c1d0fa0535b3c084--
