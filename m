X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13192" "Sunday" "1" "January" "2017" "19:32:45" "-0600" "Brandon Perry" "bperry.volatile@gmail.com" "<68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>" "202" "[oss-security] Multiple issues in OpenH264 1.5.1" nil nil nil "1" "2017010201:32:45" "[oss-security] Multiple issues in OpenH264 1.5.1" (number mark "U       bperry.volat Jan  1  202/13192 " thread-indent "\"[oss-security] Multiple issues in OpenH264 1.5.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9392 invoked by uid 550); 2 Jan 2017 01:33:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9360 invoked from network); 2 Jan 2017 01:33:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=pEvzCrlTCBBqMCPVDIWSQ0YPx5EAFzOHZHDLWJleMoo=;
        b=IcAzQLuqoaAF0Q5bvKSFhbI1oC7xx3n8QJVYPcgrK56teEaq+J5fHwh3Caq55SYtdt
         rwba6r/LCzoWAMcghNEguJFZPqf5UZQd/WR90d4OiAocqd33jkEuOdUarklDVWeuVWG0
         0T170zH0auN21XHh6wgSXjMOZi3T4RlbbD8DkDJCP1qkYJc7haWqAcMxN/5Uo0xpKmBe
         qUhj2TPL2r9hefY/xsuakktI40+VflQ78bjIsrK8Dd27ZbTXHHZHlW5n4LgIF9RtINBM
         6uXaS/L7UCAPX9ZkhtXIuAuIU4vNw7vMp4qhSFcuVUpPQnEhswrq8B9xZwqTaDKThfgL
         Nrfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=pEvzCrlTCBBqMCPVDIWSQ0YPx5EAFzOHZHDLWJleMoo=;
        b=so5poRxmBV1Jrsq7+BH//tyVokkLny7RK8W2uCD/Y3o260BeD8M4BzcrfIEbHtlhSZ
         E8oVhSM+UaqZteNWIuquvpvyCjOHKapwEKhH3O9Nzvz2qVQW7dwkYgpSAgQa89uF0hL9
         zyGA1AGnBw35FZqI04vwbMWnIINjMlft0ywkcSCarKsnwZV89O6f3g336m5WI963czjT
         LaJc164/sMYCTcQ1d4DiFx4gF7DetO9+ZLHgja3WoBJ9hXoO1thSPfXNHNj5694Ypym8
         lDRKN9HORsrgHkbjvdd3yPBxvywUlYuF3l7ohoa5cMLk9pcaBmzhXgWHJac86az+wceS
         ZO1Q==
X-Gm-Message-State: AIkVDXIBpI/7i6y9aHWaiNICUEK3AX269brC6/8nbzXj731Pju3hlo3U7+/GIxHV5mARwA==
X-Received: by 10.157.62.163 with SMTP id b32mr30050851otc.242.1483320769609;
        Sun, 01 Jan 2017 17:32:49 -0800 (PST)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_6830529E-EE24-4EEA-AFA4-5DB4870E49BE"
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Message-Id: <68CFC008-17E9-46A4-BF96-19FD7F7DC056@gmail.com>
Date: Sun, 1 Jan 2017 19:32:45 -0600
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3259)
Subject: [oss-security] Multiple issues in OpenH264 1.5.1

--Apple-Mail=_6830529E-EE24-4EEA-AFA4-5DB4870E49BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Recently, Firefox updated their OpenH264 plugin to 1.6. Earlier this year, =
I reported multiple crashes I had found while fuzzing version 1.5.1 of the =
decoder (which was what was shipped at the time).

While these issues have been resolved on the 1.6 branch of the openh264 cod=
ebase for some time (a year?), it doesn=E2=80=99t seem like Firefox got the=
 update until recently (correct me if I=E2=80=99m wrong), which is why I am=
 releasing my fuzz results. I initially reported these to Mozilla, but coll=
ided with Tyler Smith, one of their security engineers who had also been fu=
zzing the decoder. I am not sure if these issues got CVEs or not, but I don=
=E2=80=99t see any.

https://raw.githubusercontent.com/brandonprry/openh264-fuzz/ <https://raw.g=
ithubusercontent.com/brandonprry/openh264-fuzz/>

Attached is the README for the linked GitHub repo, which shows the three di=
stinct bugs and their stack traces. There might be another bug or two that =
I missed during triage. None of the crashes work on 1.6, which is now shipp=
ed with up-to-date Firefox installs.

Happy New Year!


--Apple-Mail=_6830529E-EE24-4EEA-AFA4-5DB4870E49BE
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_C4C01906-4838-40DD-ADB8-C4837F87DD5C"


--Apple-Mail=_C4C01906-4838-40DD-ADB8-C4837F87DD5C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D"">Recently, Firefox =
updated their OpenH264 plugin to 1.6. Earlier this year, I reported multipl=
e crashes I had found while fuzzing version 1.5.1 of the decoder (which was=
 what was shipped at the time).<div class=3D""><br class=3D""></div><div cl=
ass=3D"">While these issues have been resolved on the 1.6 branch of the ope=
nh264 codebase for some time (a year?), it doesn=E2=80=99t seem like Firefo=
x got the update until recently (correct me if I=E2=80=99m wrong), which is=
 why I am releasing my fuzz results. I initially reported these to Mozilla,=
 but collided with Tyler Smith, one of their security engineers who had als=
o been fuzzing the decoder. I am not sure if these issues got CVEs or not, =
but I don=E2=80=99t see any.</div><div class=3D""><br class=3D""></div><div=
 class=3D""><a href=3D"https://raw.githubusercontent.com/brandonprry/openh2=
64-fuzz/" class=3D"">https://raw.githubusercontent.com/brandonprry/openh264=
-fuzz/</a></div><div class=3D""><br class=3D""></div><div class=3D"">Attach=
ed is the README for the linked GitHub repo, which shows the three distinct=
 bugs and their stack traces. There might be another bug or two that I miss=
ed during triage. None of the crashes work on 1.6, which is now shipped wit=
h up-to-date Firefox installs.</div><div class=3D""><br class=3D""></div><d=
iv class=3D"">Happy New Year!</div><div class=3D""><br class=3D""></div><di=
v class=3D""></div></body></html>=

--Apple-Mail=_C4C01906-4838-40DD-ADB8-C4837F87DD5C
Content-Disposition: attachment;
	filename=README.md
Content-Type: text/markdown;
	x-unix-mode=0644;
	name="README.md"
Content-Transfer-Encoding: 7bit

# openh264-fuzz
These were tested against OpenH264 1.5.1. These are fixed in 1.6.
Bug #1
--
```
=================================================================
==4637==ERROR: AddressSanitizer: heap-use-after-free on address 0x62f000092410 at pc 0x00000042fa6a bp 0x7ffeffda4c00 sp 0x7ffeffda4bf0
READ of size 1 at 0x62f000092410 thread T0
    #0 0x42fa69 in WelsDec::FmoNextMb(WelsDec::TagFmo*, short) (/root/asan/openh264/h264dec+0x42fa69)
    #1 0x471797 in WelsDec::WelsDecodeSlice(WelsDec::TagWelsDecoderContext*, bool, WelsDec::TagNalUnit*) (/root/asan/openh264/h264dec+0x471797)
    #2 0x424170 in WelsDec::DecodeCurrentAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x424170)
    #3 0x4275e8 in WelsDec::ConstructAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4275e8)
    #4 0x40db32 in WelsDecodeBs (/root/asan/openh264/h264dec+0x40db32)
    #5 0x4089b9 in WelsDec::CWelsDecoder::DecodeFrameNoDelay(unsigned char const*, int, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4089b9)
    #6 0x404995 in H264DecodeInstance(ISVCDecoder*, char const*, char const*, int&, int&, char const*, char const*) (/root/asan/openh264/h264dec+0x404995)
    #7 0x402be3 in main (/root/asan/openh264/h264dec+0x402be3)
    #8 0x7f4c8cec082f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)
    #9 0x403608 in _start (/root/asan/openh264/h264dec+0x403608)

0x62f000092410 is located 24592 bytes inside of 48147-byte region [0x62f00008c400,0x62f000098013)
freed by thread T0 here:
    #0 0x7f4c8dba22ca in __interceptor_free (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x982ca)
    #1 0x42f182 in WelsDec::InitFmo(WelsDec::TagFmo*, WelsDec::TagPps*, int, int, WelsCommon::CMemoryAlign*) (/root/asan/openh264/h264dec+0x42f182)
    #2 0x42f883 in WelsDec::FmoParamUpdate(WelsDec::TagFmo*, WelsDec::TagSps*, WelsDec::TagPps*, int*, WelsCommon::CMemoryAlign*) (/root/asan/openh264/h264dec+0x42f883)
    #3 0x423772 in WelsDec::DecodeCurrentAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x423772)
    #4 0x4275e8 in WelsDec::ConstructAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4275e8)
    #5 0x40e70f in WelsDecodeBs (/root/asan/openh264/h264dec+0x40e70f)
    #6 0x406ef9 in WelsDec::CWelsDecoder::DecodeFrame2(unsigned char const*, int, unsigned char**, TagBufferInfo*) [clone .part.3] [clone .constprop.6] (/root/asan/openh264/h264dec+0x406ef9)
    #7 0x408678 in WelsDec::CWelsDecoder::DecodeFrameNoDelay(unsigned char const*, int, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x408678)
    #8 0x404995 in H264DecodeInstance(ISVCDecoder*, char const*, char const*, int&, int&, char const*, char const*) (/root/asan/openh264/h264dec+0x404995)
    #9 0x402be3 in main (/root/asan/openh264/h264dec+0x402be3)
    #10 0x7f4c8cec082f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)

previously allocated by thread T0 here:
    #0 0x7f4c8dba2602 in malloc (/usr/lib/x86_64-linux-gnu/libasan.so.2+0x98602)
    #1 0x4b5a78 in WelsCommon::WelsMalloc(unsigned int, char const*, unsigned int) (/root/asan/openh264/h264dec+0x4b5a78)
    #2 0x4b5b64 in WelsCommon::CMemoryAlign::WelsMalloc(unsigned int, char const*) (/root/asan/openh264/h264dec+0x4b5b64)
    #3 0x4b5c0f in WelsCommon::CMemoryAlign::WelsMallocz(unsigned int, char const*) (/root/asan/openh264/h264dec+0x4b5c0f)
    #4 0x42f19a in WelsDec::InitFmo(WelsDec::TagFmo*, WelsDec::TagPps*, int, int, WelsCommon::CMemoryAlign*) (/root/asan/openh264/h264dec+0x42f19a)
    #5 0x42f883 in WelsDec::FmoParamUpdate(WelsDec::TagFmo*, WelsDec::TagSps*, WelsDec::TagPps*, int*, WelsCommon::CMemoryAlign*) (/root/asan/openh264/h264dec+0x42f883)
    #6 0x423772 in WelsDec::DecodeCurrentAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x423772)
    #7 0x4275e8 in WelsDec::ConstructAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4275e8)
    #8 0x40db32 in WelsDecodeBs (/root/asan/openh264/h264dec+0x40db32)
    #9 0x4089b9 in WelsDec::CWelsDecoder::DecodeFrameNoDelay(unsigned char const*, int, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4089b9)
    #10 0x404995 in H264DecodeInstance(ISVCDecoder*, char const*, char const*, int&, int&, char const*, char const*) (/root/asan/openh264/h264dec+0x404995)
    #11 0x402be3 in main (/root/asan/openh264/h264dec+0x402be3)
    #12 0x7f4c8cec082f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)

SUMMARY: AddressSanitizer: heap-use-after-free ??:0 WelsDec::FmoNextMb(WelsDec::TagFmo*, short)
Shadow bytes around the buggy address:
  0x0c5e8000a430: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a440: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a450: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a460: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a470: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
=>0x0c5e8000a480: fd fd[fd]fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a490: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a4a0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a4b0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a4c0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c5e8000a4d0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
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
==4637==ABORTING
```
Bug#2
--
```
ASAN:SIGSEGV
=================================================================
==23331==ERROR: AddressSanitizer: SEGV on unknown address 0x7ffbc5f0d810 (pc 0x0000004718b7 bp 0x7ffe5107f130 sp 0x7ffe5107f010 T0)
    #0 0x4718b6 in WelsDec::WelsDecodeSlice(WelsDec::TagWelsDecoderContext*, bool, WelsDec::TagNalUnit*) (/root/asan/openh264/h264dec+0x4718b6)
    #1 0x424170 in WelsDec::DecodeCurrentAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x424170)
    #2 0x4275e8 in WelsDec::ConstructAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4275e8)
    #3 0x40db32 in WelsDecodeBs (/root/asan/openh264/h264dec+0x40db32)
    #4 0x4089b9 in WelsDec::CWelsDecoder::DecodeFrameNoDelay(unsigned char const*, int, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4089b9)
    #5 0x404995 in H264DecodeInstance(ISVCDecoder*, char const*, char const*, int&, int&, char const*, char const*) (/root/asan/openh264/h264dec+0x404995)
    #6 0x402be3 in main (/root/asan/openh264/h264dec+0x402be3)
    #7 0x7ffbc872182f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)
    #8 0x403608 in _start (/root/asan/openh264/h264dec+0x403608)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV ??:0 WelsDec::WelsDecodeSlice(WelsDec::TagWelsDecoderContext*, bool, WelsDec::TagNalUnit*)
==23331==ABORTING
```
Bug #3
--
```
ASAN:SIGSEGV
=================================================================
==1153==ERROR: AddressSanitizer: SEGV on unknown address 0x631fffff0810 (pc 0x00000047b82c bp 0x7ffd652e7c60 sp 0x7ffd652e7b70 T0)
    #0 0x47b82b in WelsDec::WelsDecodeMbCavlcPSlice(WelsDec::TagWelsDecoderContext*, WelsDec::TagNalUnit*, unsigned int&) (/root/asan/openh264/h264dec+0x47b82b)
    #1 0x4718f1 in WelsDec::WelsDecodeSlice(WelsDec::TagWelsDecoderContext*, bool, WelsDec::TagNalUnit*) (/root/asan/openh264/h264dec+0x4718f1)
    #2 0x424170 in WelsDec::DecodeCurrentAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x424170)
    #3 0x4275e8 in WelsDec::ConstructAccessUnit(WelsDec::TagWelsDecoderContext*, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4275e8)
    #4 0x40db32 in WelsDecodeBs (/root/asan/openh264/h264dec+0x40db32)
    #5 0x4089b9 in WelsDec::CWelsDecoder::DecodeFrameNoDelay(unsigned char const*, int, unsigned char**, TagBufferInfo*) (/root/asan/openh264/h264dec+0x4089b9)
    #6 0x404995 in H264DecodeInstance(ISVCDecoder*, char const*, char const*, int&, int&, char const*, char const*) (/root/asan/openh264/h264dec+0x404995)
    #7 0x402be3 in main (/root/asan/openh264/h264dec+0x402be3)
    #8 0x7fe32ace282f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x2082f)
    #9 0x403608 in _start (/root/asan/openh264/h264dec+0x403608)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV ??:0 WelsDec::WelsDecodeMbCavlcPSlice(WelsDec::TagWelsDecoderContext*, WelsDec::TagNalUnit*, unsigned int&)
==1153==ABORTING
```

--Apple-Mail=_C4C01906-4838-40DD-ADB8-C4837F87DD5C
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><div class=""></div></body></html>
--Apple-Mail=_C4C01906-4838-40DD-ADB8-C4837F87DD5C--

--Apple-Mail=_6830529E-EE24-4EEA-AFA4-5DB4870E49BE--
