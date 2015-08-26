X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4249" "Wednesday" "26" "August" "2015" "23:01:28" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTXNGv3CMY6zWws_7GLPoC2Ep5RO0ogdc9PZOsxuxEmXg@mail.gmail.com>" "103" "[oss-security] Multiple memory corruptions caused by uninitialized values in JasPer 1.900" nil nil nil "8" "2015082621:01:28" "[oss-security] Multiple memory corruptions caused by uninitialized values in JasPer 1.900" (number mark "U       gustavo.grie Aug 26  103/4249  " thread-indent "\"[oss-security] Multiple memory corruptions caused by uninitialized values in JasPer 1.900\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17493 invoked by uid 550); 26 Aug 2015 21:01:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17446 invoked from network); 26 Aug 2015 21:01:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=wtga6kyDmffrEmDHeTv3R/yEhbbTiG5idusLeqdZoSU=;
        b=TvpD5mSBSWWrQw32WMX4NzRtjj3k97OXAQD7y6OfxVVMFapCMFDSQZqoDL6UhZUMkW
         wCwfvB9pmNRiZC1gEBUwPgCRkxLuEE/p/H+QUFJNvZkjGruwirg20Lbdx70WJAfIMmVb
         yQ76KWiRFdjCKSx5f71Si6eHRzLbMhN2IG5XAxy6q5rBmqHax5ArvRIC0hdb89rA+vAp
         FkZuivxMeuusqnA0HbN17vJkO+NhCHKvex6PRxx9omuA9CE1f8Jl/kBHPovZUi1AG8lD
         dnh1LLKriJdIZ6lRG1/uECVRCsWMFyLSXxJW16ZPGoGH58LgG2jiGBe4dCqJ/pkdcN0o
         LUOw==
MIME-Version: 1.0
X-Received: by 10.112.235.130 with SMTP id um2mr469497lbc.72.1440622888207;
 Wed, 26 Aug 2015 14:01:28 -0700 (PDT)
Date: Wed, 26 Aug 2015 23:01:28 +0200
Message-ID: <CACn5sdTXNGv3CMY6zWws_7GLPoC2Ep5RO0ogdc9PZOsxuxEmXg@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c3170a81cb6a051e3d27d5
Subject: [oss-security] Multiple memory corruptions caused by uninitialized values in JasPer 1.900

--001a11c3170a81cb6a051e3d27d5
Content-Type: text/plain; charset=UTF-8

Hi,

Following Raphael's advice, i found some memory corruptions in JasPer 1.900
after a quick round of fuzzing of the regression tests of Openjpeg. A few
interesting test cases are available here:

https://zimbra.imag.fr/home/gustavo.grieco@imag.fr/Briefcase/Public/cases.tar.gz

They are compressed to avoid easily crash programs like Nautilus and
Firefox. All them can be verified using:

jasper --input $filename --output-format pnm

(tested in Ubuntu 14.04, 32-bit but it should work in other configurations)

Additionally. sigsegv.jp2 crashes most of the programs using gdk-pixbuf
like Firefox and Chrome (!). I report them this issue a few days ago and
advise them to disable preview of jpeg images since Jasper is unmaintained
and vulnerable. Mozilla developers are working hard trying to find a
workaround to avoid use vulnerable code.
On the other hand, Chromium developers dismissed this issue saying that
they will wait the "upstream fix".

I think the cause of such memory corruptions is uninitialized values, taken
from the heap, as valgrind reports:


==15417== Memcheck, a memory error detector
==15417== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==15417== Using Valgrind-3.10.0.SVN and LibVEX; rerun with -h for copyright
info
==15417== Command: jasper --input sigsegv.jp2 --output-format pnm
==15417==
==15417== Conditional jump or move depends on uninitialised value(s)
==15417==    at 0x405EE3F: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405F110: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405E6FC: jpc_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4057805: jp2_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x404BDAB: jas_image_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x8048D78: ??? (in /usr/bin/jasper)
==15417==    by 0x40B1A82: (below main) (libc-start.c:287)
==15417==  Uninitialised value was created by a heap allocation
==15417==    at 0x402A17C: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==15417==    by 0x405127A: jas_malloc (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4051323: jas_alloc2 (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405C926: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405E6FC: jpc_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4057805: jp2_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x404BDAB: jas_image_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x8048D78: ??? (in /usr/bin/jasper)
==15417==    by 0x40B1A82: (below main) (libc-start.c:287)
==15417==
==15417== Conditional jump or move depends on uninitialised value(s)
==15417==    at 0x405F06C: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405F110: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405E6FC: jpc_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4057805: jp2_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x404BDAB: jas_image_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x8048D78: ??? (in /usr/bin/jasper)
==15417==    by 0x40B1A82: (below main) (libc-start.c:287)
==15417==  Uninitialised value was created by a heap allocation
==15417==    at 0x402A17C: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==15417==    by 0x405127A: jas_malloc (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4051323: jas_alloc2 (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405C826: ??? (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x405E6FC: jpc_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x4057805: jp2_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x404BDAB: jas_image_decode (in
/usr/lib/i386-linux-gnu/libjasper.so.1.0.0)
==15417==    by 0x8048D78: ??? (in /usr/bin/jasper)
==15417==    by 0x40B1A82: (below main) (libc-start.c:287)
==15417==

Regards,
Gustavo.

--001a11c3170a81cb6a051e3d27d5--
