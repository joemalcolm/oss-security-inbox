X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3067" "Saturday" "6" "February" "2016" "14:42:36" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>" "73" "[oss-security] CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" nil nil nil "2" "2016020613:42:36" "[oss-security] CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" (number mark "U       gustavo.grie Feb  6   73/3067  " thread-indent "\"[oss-security] CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3114 invoked by uid 550); 6 Feb 2016 13:42:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3092 invoked from network); 6 Feb 2016 13:42:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=cJOxccMH37Ze7++sfZmyn1KbWDWueXjswN6RuLcTF/E=;
        b=eTqWxmigJBBani5Ah401YplLH2udr/pGDWTZ45S7pjXn3Q1/Z/v1fTb5DtsQFmN0wE
         bymWbYvQemEa4tHPrOItetnld66Ou3zgfO370NUt4I2pF7ONVWJYWDut4rpoiepafMEY
         TwzKrMklfR1ACxq+rc+Q6ASf6SXtLFMbT6aHkmL3K0i5k8/OsKqdqrPw10FXdG5acaGx
         mRveubP7FxZGQjDipkiGcoZKLYqtRzYlL1HU8tRSbXnOaQ3faEkjNad5LYcFjiPP8o+l
         +Wt990lZQ48IMq0gv6B2K1lkN/rDRJ3JdG+bXoeJD6WDN/sb/ZUHyqRxMOCySFcBjq0s
         tXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=cJOxccMH37Ze7++sfZmyn1KbWDWueXjswN6RuLcTF/E=;
        b=kGmA0dzE/ki7pekkL9Ku2RS+AebLAxH3HkCJegkk2iCwfS0VoJjTlMRcjccLRDGP7N
         VBw0LfdGN3Vvu/l1Y5yvIpbsLdzD6P9neDf+K3qP9K7QngXTAzC+xIYheSL4BUYZFdfL
         aCuXkOHoU0gfVcFTnA7E0Hv0edGPlfqO+R8eZEnlZyUsEphFWHNOJUfFGayPTQqqYJJe
         4BF2TvGQcvjK83BK1AOUKTieU6pWiB1CHJnbjSpz3YlvN9rfSmKAOhwXXcBW0jQTz+Mb
         055Ndu85aP+rk8b001ydLV8OXiU6y1m0IIPTO1c8yJEN5JuMFye07h9gObpe3VKwqqZ3
         7kFQ==
X-Gm-Message-State: AG10YOQ2D5IJ8JVPgNIUzWyg5Lz0kMhdJjtejTnAOX902YOl58yEUhfNqdoP8ildIG9sAK/BtZ2IwXXeQ3lTIQ==
MIME-Version: 1.0
X-Received: by 10.112.184.133 with SMTP id eu5mr6627415lbc.99.1454766156334;
 Sat, 06 Feb 2016 05:42:36 -0800 (PST)
Date: Sat, 6 Feb 2016 14:42:36 +0100
Message-ID: <CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c3cb34faceec052b1a2320
Subject: [oss-security] CVE request: Out-of-bound read in the parsing of gif files using
 GraphicsMagick 1.3.18

--001a11c3cb34faceec052b1a2320
Content-Type: text/plain; charset=UTF-8

Hi,

We found a read out-of-bound in the parsing of gif files using
GraphicsMagick. This issue was tested in Ubuntu 14.04 (x86_64) using
GraphicsMagick 1.3.18. Find attached a specially crafted file to reproduce
this issue. The AddressSanitizer report showing the faulty code is here:

$ ./gm identify overflow.gif
=================================================================
==3173==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x6210000037be at pc 0x0000007e5f56 bp 0x7fffffffa940 sp 0x7fffffffa938
READ of size 1 at 0x6210000037be thread T0
    #0 0x7e5f55 in DecodeImage coders/gif.c:276
    #1 0x7ebdac in ReadGIFImage coders/gif.c:1075
    #2 0x490fc6 in ReadImage magick/constitute.c:1600
    #3 0x48fcd0 in PingImage magick/constitute.c:1363
    #4 0x43fc25 in IdentifyImageCommand magick/command.c:8350
    #5 0x4427b9 in MagickCommand magick/command.c:8840
    #6 0x47c4d6 in GMCommandSingle magick/command.c:17253
    #7 0x47c79c in GMCommand magick/command.c:17306
    #8 0x40c8c5 in main utilities/gm.c:61
    #9 0x7ffff3739ec4 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #10 0x40c7d8
(/home/vagrant/repos/graphicsmagick-1.3.18/utilities/gm+0x40c7d8)
AddressSanitizer can not describe address in more detail (wild memory
access suspected).
SUMMARY: AddressSanitizer: heap-buffer-overflow coders/gif.c:276 DecodeImage
Shadow bytes around the buggy address:
  0x0c427fff86a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff86b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff86c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff86d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff86e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c427fff86f0: fa fa fa fa fa fa fa[fa]fa fa fa fa fa fa fa fa
  0x0c427fff8700: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff8710: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff8720: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff8730: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c427fff8740: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==3173==ABORTING

This issue is caused by the use of unintialized memory in DecodeImage and
fortunately it was fixed here:

http://marc.info/?l=graphicsmagick-commit&m=142283721604323&w=2

Regards,
Gus.

--001a11c3cb34faceec052b1a2320--
