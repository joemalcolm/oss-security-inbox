X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4816" "Thursday" "10" "November" "2016" "15:07:51" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>" "108" "[oss-security] CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" nil nil nil "11" "2016111018:07:51" "[oss-security] CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" (number mark "U       gustavo.grie Nov 10  108/4816  " thread-indent "\"[oss-security] CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24275 invoked by uid 550); 10 Nov 2016 18:08:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24242 invoked from network); 10 Nov 2016 18:08:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=/1WlD3z7AFAmXRmhOFYBgKY2H1xEvjJ96ktx3LYrpJc=;
        b=XxBmO4lrfBLyQ/4Y24gZCg76qOxw99y5mGeACYc1TLr4eelsQjPqc1YPD5+ITU/vfQ
         07rrTfuIMX6UIxdaf8nZXw6KvcKGxaRcGF+cMqIpEZbl7kaP+UW1GEMGUJ5jcQzzzBB4
         8qpybM45qZR3XDpUnIMmvIckzw0+NA1UFyj1Nbrx2036074y5SxAm+rCumlTg5TjqwKF
         mZ/03ypC3wWQosS7zrclXl1xvNv9Gavs6fqanY5F5YQiu1ofClA7vX6wy8PdxOScZOCJ
         8DjLCYRG5AjG5kUMoR5MR15Bj57EWo6eTqWuK6+3vwQzHw90qjP9LOYqArOpAXQd9A9g
         zx3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/1WlD3z7AFAmXRmhOFYBgKY2H1xEvjJ96ktx3LYrpJc=;
        b=YJZY3aRrgeB+rWraF41sOag3Uwqyn/FfK91ziBUyMx3fSMaxwOH/J4ELCAFPrEW2w8
         QJA2e2ox20OU/hDuqvHkK8B3LvqXM1eDRFpyN8G0fNmTa1QF4O5msoXaJsejfJyLrNFI
         yH40MXgMkGfQt/6Emz3w8aTwU0JSSU5E2NI7VOj15HKI+1BUC5nPP3Gmi+f/rsaqN2kW
         2YWSQSYgs7FS0nP39tz4pXQqJKso8W1yNPsb3eNnvqYkS7vFUFVJPkuqNyoO/J0E5I84
         pi6NhQmPL2IDR//WqGosHPnLhcZoq1VdCsDk7Ba7PC6BZFTkSv8hGeOcXrAe0uFJgrv0
         w8EA==
X-Gm-Message-State: ABUngvc+3yjKbrAPkgFMybunOVbla0BYcWhML+voEUP6pPhvh3dF+eeq3v4rSdZxDD9E4KL9NmdfJxNHWJi/wQ==
X-Received: by 10.107.55.136 with SMTP id e130mr7202723ioa.76.1478801272516;
 Thu, 10 Nov 2016 10:07:52 -0800 (PST)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Thu, 10 Nov 2016 15:07:51 -0300
Message-ID: <CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114ac2808ab63c0540f64046
Subject: [oss-security] CVE request: Heap read out-of-bounds parsing a Javascript file with
 the last revision of JavaScript Core

--001a114ac2808ab63c0540f64046
Content-Type: text/plain; charset=UTF-8

Hi,

We recently found a read out-of-bounds parsing JavaScript code in the last
revision of WebKit (
https://github.com/WebKit/webkit/commit/fcf81f3ad83cd910727c7a1824e50377a474c8f4).
I tested this issue in ArchLinux (x86_64) but other configurations could be
affected. To reproduce:

1. Recompile jsc with ASAN support.
2. Execute:

$ ./jsc red.-4050783292692436029.nkpzevdpie.js
...
=================================================================
==24637==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x603000014fc8 at pc 0x7ffff67f04b0 bp 0x7fffaccf8820 sp 0x7fffaccf8810
READ of size 16 at 0x603000014fc8 thread T2
==24637==AddressSanitizer: while reporting a bug found another one.
Ignoring.
    #0 0x7ffff67f04af in WTF::(anonymous namespace)::lockHashtable()
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20cc4af)
    #1 0x7ffff67f1b6c in WTF::ParkingLot::parkConditionallyImpl(void
const*, WTF::ScopedLambda<bool ()> const&, WTF::ScopedLambda<void ()>
const&, std::chrono::time_point<std::chrono::_V2::steady_clock,
std::chrono::duration<long, std::ratio<1l, 1000000000l> > >)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20cdb6c)
    #2 0x7ffff67cc1cb in std::_Function_handler<void (),
WTF::AutomaticThread::start(WTF::Locker<WTF::LockBase>
const&)::{lambda()#1}>::_M_invoke(std::_Any_data const&)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20a81cb)
    #3 0x7ffff67f7da5 in WTF::threadEntryPoint(void*)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20d3da5)
    #4 0x7ffff685a530 in WTF::wtfThreadEntryPoint(void*)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x2136530)
    #5 0x7ffff1df1453 in start_thread (/usr/lib/libpthread.so.0+0x7453)
    #6 0x7ffff0c017de in __GI___clone (/usr/lib/libc.so.6+0xe87de)

0x603000014fd0 is located 0 bytes to the right of 32-byte region
[0x603000014fb0,0x603000014fd0)
allocated by thread T2 here:
    #0 0x7ffff6efee60 in __interceptor_malloc
/build/gcc-multilib/src/gcc/libsanitizer/asan/asan_malloc_linux.cc:62
    #1 0x7ffff686792f in bmalloc::Allocator::allocateSlowCase(unsigned
long)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x214392f)

Thread T2 created by T0 here:
    #0 0x7ffff6e69498 in __interceptor_pthread_create
/build/gcc-multilib/src/gcc/libsanitizer/asan/asan_interceptors.cc:236
    #1 0x7ffff685b983 in WTF::createThreadInternal(void (*)(void*), void*,
char const*)
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x2137983)

SUMMARY: AddressSanitizer: heap-buffer-overflow
(/home/g/Work/Code/webkit-master/WebKitBuild/Release/lib/libjavascriptcoregtk-4.0.so.18+0x20cc4af)
in WTF::(anonymous namespace)::lockHashtable()
Shadow bytes around the buggy address:
  0x0c067fffa9a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffa9b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffa9c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffa9d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffa9e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c067fffa9f0: fa fa fa fa fa fa 00 00 00[00]fa fa fd fd fd fd
  0x0c067fffaa00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffaa10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffaa20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffaa30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c067fffaa40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==24637==ABORTING

I'm forwarding this issue since i receive no answer from the Webkit
developers in more than 3 weeks. The original bug report (private) is here:

https://bugs.webkit.org/show_bug.cgi?id=164000

The reproducer are available upon request. Please assign a CVE if
necessary.

This issue was found using QuickFuzz.

Regards,
Gustavo.

--001a114ac2808ab63c0540f64046--
