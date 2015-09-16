X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13168" "Wednesday" "16" "September" "2015" "08:11:03" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>" "280" "[oss-security] CVE Request: Use-after-free in optipng 0.6.4" nil nil nil "9" "2015091611:11:03" "[oss-security] CVE Request: Use-after-free in optipng 0.6.4" (number mark "        gustavo.grie Sep 16  280/13168 " thread-indent "\"[oss-security] CVE Request: Use-after-free in optipng 0.6.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17663 invoked by uid 550); 16 Sep 2015 11:11:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17645 invoked from network); 16 Sep 2015 11:11:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=u+61saO0/fmj8U4nHhULnQ6MMZY1rTmd9217Fgc2kt0=;
        b=u9yZsVUlgmvw0lXS7A3DV0RaAjT2rCQfHdcgsVL1THWZ3dxHdCUb1q33LRDcIz5Bct
         2cHXtlRd80jkRZ33se4uRTMjPXDWpofwHlIyVOkcmmw0SYKdaOkyiy6B0VmR5HAmIigt
         /1ZzO5ltWDCaWgfX+Hft98W9odXreQShuprRKdT5X8FZlcosQElzluzBI+YcUR8XXXow
         zT/ZiKoWx6q/sPJ6Am849c1384bafPR6NufhPKe1RJzjJrdcX5+TLd/AATZkAq3yJV6n
         z/6Ce74Tp1G6fZlTXonUQOr8IekoOTbOiOXsvOpWQY+K1xl3DKRhS5Z4Vgsvfuv3Ri25
         xCVg==
MIME-Version: 1.0
X-Received: by 10.112.162.2 with SMTP id xw2mr28150998lbb.98.1442401863715;
 Wed, 16 Sep 2015 04:11:03 -0700 (PDT)
Message-ID: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
Content-Type: multipart/mixed; boundary=089e01182e26b6056c051fdb5af3
Date: Wed, 16 Sep 2015 08:11:03 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Use-after-free in optipng 0.6.4
To: oss-security@lists.openwall.com

--089e01182e26b6056c051fdb5af3
Content-Type: multipart/alternative; boundary=089e01182e26b60565051fdb5af1

--089e01182e26b60565051fdb5af1
Content-Type: text/plain; charset=UTF-8

We found a use-after-free causing an invalid/double free in optipng 0.6.4.
Upstream is working in fixing it but keep in mind that optipng 0.6.x is
officially unsupported. A CVE will be useful since such version is included
in distros like Debian and Ubuntu. Please find attached the test case to
trigger it. The valgrind report is here:

OptiPNG 0.6.4: Advanced PNG optimizer.
Copyright (C) 2001-2010 Cosmin Truta.

Processing: boom.png
Warning: pHYs: CRC error
Warning: gQMA: CRC error
1x2 pixels, 8 bits/pixel, 0 colors in palette
Error: Inconsistent data in libpng
==24844== Invalid read of size 4
==24844==    at 0x804DC68: opng_optimize (opngoptim.c:507)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==  Address 0x4281a08 is 0 bytes inside a block of size 8 free'd
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x407C073: png_free_default (pngmem.c:555)
==24844==    by 0x407C0C4: png_free (pngmem.c:539)
==24844==    by 0x406370D: png_free_data (png.c:594)
==24844==    by 0x4063A63: png_info_destroy (png.c:618)
==24844==    by 0x4071CF9: png_read_destroy (pngread.c:1208)
==24844==    by 0x4072153: png_destroy_read_struct (pngread.c:1147)
==24844==    by 0x804C593: opng_read_file (opngoptim.c:1145)
==24844==    by 0x804D77E: opng_optimize_impl (opngoptim.c:1580)
==24844==    by 0x804DD3B: opng_optimize (opngoptim.c:1890)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==
==24844== Invalid free() / delete / delete[] / realloc()
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x804DC8E: opng_optimize (opngoptim.c:507)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==  Address 0x4281a08 is 0 bytes inside a block of size 8 free'd
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x407C073: png_free_default (pngmem.c:555)
==24844==    by 0x407C0C4: png_free (pngmem.c:539)
==24844==    by 0x406370D: png_free_data (png.c:594)
==24844==    by 0x4063A63: png_info_destroy (png.c:618)
==24844==    by 0x4071CF9: png_read_destroy (pngread.c:1208)
==24844==    by 0x4072153: png_destroy_read_struct (pngread.c:1147)
==24844==    by 0x804C593: opng_read_file (opngoptim.c:1145)
==24844==    by 0x804D77E: opng_optimize_impl (opngoptim.c:1580)
==24844==    by 0x804DD3B: opng_optimize (opngoptim.c:1890)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==
==24844== Invalid free() / delete / delete[] / realloc()
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x804DC9B: opng_optimize (opngoptim.c:507)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==  Address 0x42816d8 is 0 bytes inside a block of size 768 free'd
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x407C073: png_free_default (pngmem.c:555)
==24844==    by 0x407C0C4: png_free (pngmem.c:539)
==24844==    by 0x4063282: png_zfree (png.c:204)
==24844==    by 0x4063788: png_free_data (png.c:569)
==24844==    by 0x4063A63: png_info_destroy (png.c:618)
==24844==    by 0x4071CF9: png_read_destroy (pngread.c:1208)
==24844==    by 0x4072153: png_destroy_read_struct (pngread.c:1147)
==24844==    by 0x804C593: opng_read_file (opngoptim.c:1145)
==24844==    by 0x804D77E: opng_optimize_impl (opngoptim.c:1580)
==24844==    by 0x804DD3B: opng_optimize (opngoptim.c:1890)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==
==24844== Invalid read of size 4
==24844==    at 0x804DCC8: opng_optimize (opngoptim.c:507)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==  Address 0x4281630 is 8 bytes inside a block of size 60 free'd
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x407C073: png_free_default (pngmem.c:555)
==24844==    by 0x407C0C4: png_free (pngmem.c:539)
==24844==    by 0x40639B4: png_free_data (png.c:537)
==24844==    by 0x4063A63: png_info_destroy (png.c:618)
==24844==    by 0x4071CF9: png_read_destroy (pngread.c:1208)
==24844==    by 0x4072153: png_destroy_read_struct (pngread.c:1147)
==24844==    by 0x804C593: opng_read_file (opngoptim.c:1145)
==24844==    by 0x804D77E: opng_optimize_impl (opngoptim.c:1580)
==24844==    by 0x804DD3B: opng_optimize (opngoptim.c:1890)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==
==24844== Invalid free() / delete / delete[] / realloc()
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x804DCEB: opng_optimize (opngoptim.c:507)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==  Address 0x4281628 is 0 bytes inside a block of size 60 free'd
==24844==    at 0x402B3D8: free (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==24844==    by 0x407C073: png_free_default (pngmem.c:555)
==24844==    by 0x407C0C4: png_free (pngmem.c:539)
==24844==    by 0x40639B4: png_free_data (png.c:537)
==24844==    by 0x4063A63: png_info_destroy (png.c:618)
==24844==    by 0x4071CF9: png_read_destroy (pngread.c:1208)
==24844==    by 0x4072153: png_destroy_read_struct (pngread.c:1147)
==24844==    by 0x804C593: opng_read_file (opngoptim.c:1145)
==24844==    by 0x804D77E: opng_optimize_impl (opngoptim.c:1580)
==24844==    by 0x804DD3B: opng_optimize (opngoptim.c:1890)
==24844==    by 0x804A02A: main (optipng.c:719)
==24844==


Regards,
Gustavo.

--089e01182e26b60565051fdb5af1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We found a use-after-free causing an invalid/double f=
ree in optipng 0.6.4. Upstream is working in fixing it but keep in mind tha=
t optipng 0.6.x is officially unsupported. A CVE will be useful since such =
version is included in distros like Debian and Ubuntu. Please find attached=
 the test case to trigger it. The valgrind report is here:<br>
<br>
OptiPNG 0.6.4: Advanced PNG optimizer.<br>
Copyright (C) 2001-2010 Cosmin Truta.<br>
<br>
Processing: boom.png<br>
Warning: pHYs: CRC error<br>
Warning: gQMA: CRC error<br>
1x2 pixels, 8 bits/pixel, 0 colors in palette<br>
Error: Inconsistent data in libpng<br>
=3D=3D24844=3D=3D Invalid read of size 4<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x804DC68: opng_optimize (opngoptim.c:507=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D=C2=A0 Address 0x4281a08 is 0 bytes inside a block of size=
 8 free&#39;d<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C073: png_free_default (pngmem.c:555=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C0C4: png_free (pngmem.c:539)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x406370D: png_free_data (png.c:594)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063A63: png_info_destroy (png.c:618)<b=
r>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4071CF9: png_read_destroy (pngread.c:12=
08)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4072153: png_destroy_read_struct (pngre=
ad.c:1147)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804C593: opng_read_file (opngoptim.c:11=
45)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804D77E: opng_optimize_impl (opngoptim.=
c:1580)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DD3B: opng_optimize (opngoptim.c:189=
0)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D<br>
=3D=3D24844=3D=3D Invalid free() / delete / delete[] / realloc()<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DC8E: opng_optimize (opngoptim.c:507=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D=C2=A0 Address 0x4281a08 is 0 bytes inside a block of size=
 8 free&#39;d<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C073: png_free_default (pngmem.c:555=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C0C4: png_free (pngmem.c:539)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x406370D: png_free_data (png.c:594)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063A63: png_info_destroy (png.c:618)<b=
r>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4071CF9: png_read_destroy (pngread.c:12=
08)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4072153: png_destroy_read_struct (pngre=
ad.c:1147)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804C593: opng_read_file (opngoptim.c:11=
45)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804D77E: opng_optimize_impl (opngoptim.=
c:1580)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DD3B: opng_optimize (opngoptim.c:189=
0)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D<br>
=3D=3D24844=3D=3D Invalid free() / delete / delete[] / realloc()<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DC9B: opng_optimize (opngoptim.c:507=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D=C2=A0 Address 0x42816d8 is 0 bytes inside a block of size=
 768 free&#39;d<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C073: png_free_default (pngmem.c:555=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C0C4: png_free (pngmem.c:539)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063282: png_zfree (png.c:204)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063788: png_free_data (png.c:569)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063A63: png_info_destroy (png.c:618)<b=
r>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4071CF9: png_read_destroy (pngread.c:12=
08)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4072153: png_destroy_read_struct (pngre=
ad.c:1147)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804C593: opng_read_file (opngoptim.c:11=
45)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804D77E: opng_optimize_impl (opngoptim.=
c:1580)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DD3B: opng_optimize (opngoptim.c:189=
0)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D<br>
=3D=3D24844=3D=3D Invalid read of size 4<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x804DCC8: opng_optimize (opngoptim.c:507=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D=C2=A0 Address 0x4281630 is 8 bytes inside a block of size=
 60 free&#39;d<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C073: png_free_default (pngmem.c:555=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C0C4: png_free (pngmem.c:539)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x40639B4: png_free_data (png.c:537)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063A63: png_info_destroy (png.c:618)<b=
r>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4071CF9: png_read_destroy (pngread.c:12=
08)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4072153: png_destroy_read_struct (pngre=
ad.c:1147)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804C593: opng_read_file (opngoptim.c:11=
45)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804D77E: opng_optimize_impl (opngoptim.=
c:1580)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DD3B: opng_optimize (opngoptim.c:189=
0)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D<br>
=3D=3D24844=3D=3D Invalid free() / delete / delete[] / realloc()<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DCEB: opng_optimize (opngoptim.c:507=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D=C2=A0 Address 0x4281628 is 0 bytes inside a block of size=
 60 free&#39;d<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 at 0x402B3D8: free (in /usr/lib/valgrind/vgp=
reload_memcheck-x86-linux.so)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C073: png_free_default (pngmem.c:555=
)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x407C0C4: png_free (pngmem.c:539)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x40639B4: png_free_data (png.c:537)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4063A63: png_info_destroy (png.c:618)<b=
r>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4071CF9: png_read_destroy (pngread.c:12=
08)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x4072153: png_destroy_read_struct (pngre=
ad.c:1147)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804C593: opng_read_file (opngoptim.c:11=
45)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804D77E: opng_optimize_impl (opngoptim.=
c:1580)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804DD3B: opng_optimize (opngoptim.c:189=
0)<br>
=3D=3D24844=3D=3D=C2=A0 =C2=A0 by 0x804A02A: main (optipng.c:719)<br>
=3D=3D24844=3D=3D<br>
<br>
<br>
Regards,<br>
Gustavo.<br></div></div>

--089e01182e26b60565051fdb5af1--

--089e01182e26b6056c051fdb5af3--
