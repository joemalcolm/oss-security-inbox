X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7831" "Friday" "30" "June" "2017" "10:34:34" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170630103434.7d6093c9@pc1>" "186" "[oss-security] exiv2: multiple memory safety issues" "^Date:" nil nil "6" "2017063008:34:34" "[oss-security] exiv2: multiple memory safety issues" (number mark "        hanno@hboeck Jun 30  186/7831  " thread-indent "\"[oss-security] exiv2: multiple memory safety issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29873 invoked by uid 550); 30 Jun 2017 08:34:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29835 invoked from network); 30 Jun 2017 08:34:47 -0000
Message-ID: <20170630103434.7d6093c9@pc1>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/diUpcYDbU2gWyQVbLJ2+ofQ"
Date: Fri, 30 Jun 2017 10:34:34 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] exiv2: multiple memory safety issues
To:
  "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--MP_/diUpcYDbU2gWyQVbLJ2+ofQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

I'm reporting three issues here in exiv2, a parser libary for image
metadata. These are only examples, exiv2 is full of memory safety bugs
that can trivially be found by running afl with asan for a few hours.

Minified sample files for all three example bugs attached.

I have not reported thoses issues upstream. When I previously tried to
report bugs in exiv2 found via fuzzing the upstream author made it
clear to me that he has little interest in fixing those issues and
doesn't consider his software suitable to parse defect files (which
basically means it's unsuitable for untrusted input). The discussion
can be read here [1]. (the page is sometimes not available, searching
for it in the google cache usually works though)

exiv2 is to my knowledge used by the major Linux Desktops GNOME and
KDE. I'll also inform their security teams. I leave it up to Linux
distros how to handle this, but it certainly is problematic that a
crucial parser used by major desktop applications is not interested in
fixing potential security issues.

[1] http://dev.exiv2.org/issues/1248


----------------

Heap overflow (write) in tiff parser

A malformed tiff file can cause a one byte heap overflow in exiv2.

Stack trace:

=3D=3D22873=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0=
x602000000df1 at pc 0x000000842091 bp 0x7fff51b3ee70 sp 0x7fff51b3ee68
WRITE of size 1 at 0x602000000df1 thread T0
    #0 0x842090 in Exiv2::ul2Data(unsigned char*, unsigned int, Exiv2::Byte=
Order) /f/exiv2-trunk/src/types.cpp:362:20
    #1 0x68beac in long Exiv2::toData<unsigned int>(unsigned char*, unsigne=
d int, Exiv2::ByteOrder) /f/exiv2-trunk/src/../include/exiv2/value.hpp:1459=
:16
    #2 0x68beac in Exiv2::ValueType<unsigned int>::copy(unsigned char*, Exi=
v2::ByteOrder) const /f/exiv2-trunk/src/../include/exiv2/value.hpp:1612
    #3 0x6742b2 in Exiv2::Exifdatum::copy(unsigned char*, Exiv2::ByteOrder)=
 const /f/exiv2-trunk/src/exif.cpp:362:48
    #4 0x7f794d in Exiv2::TiffImage::readMetadata() /f/exiv2-trunk/src/tiff=
image.cpp:204:18
    #5 0x59786a in Action::Print::printSummary() /f/exiv2-trunk/src/actions=
.cpp:289:16
    #6 0x596ef8 in Action::Print::run(std::__cxx11::basic_string<char, std:=
:char_traits<char>, std::allocator<char> > const&) /f/exiv2-trunk/src/actio=
ns.cpp:244:44
    #7 0x55fb3f in main /f/exiv2-trunk/src/exiv2.cpp:170:25
    #8 0x7f91c1e571d0 in __libc_start_main /var/tmp/portage/sys-libs/glibc-=
2.24-r2/work/glibc-2.24/csu/../csu/libc-start.c:289
    #9 0x468979 in _start (/r/exiv2/exiv2+0x468979)

0x602000000df1 is located 0 bytes to the right of 1-byte region [0x60200000=
0df0,0x602000000df1)
allocated by thread T0 here:
    #0 0x55af00 in operator new[](unsigned long) (/r/exiv2/exiv2+0x55af00)
    #1 0x83fadf in Exiv2::DataBuf::alloc(long) /f/exiv2-trunk/src/types.cpp=
:158:22

----------------

Heap out of bounds read in jp2 / JPEG2000 parser

A malformed jpeg2000 file causes a (large) out of bounds read.

Stack trace:

=3D=3D32038=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0=
x7f5e099e6838 at pc 0x00000050f22c bp 0x7ffdf7f3dcd0 sp 0x7ffdf7f3d480
READ of size 808464432 at 0x7f5e099e6838 thread T0
    #0 0x50f22b in __asan_memcpy (/r/exiv2/exiv2+0x50f22b)
    #1 0x6e82bc in Exiv2::Jp2Image::readMetadata() /f/exiv2-trunk/src/jp2im=
age.cpp:277:29
    #2 0x59786a in Action::Print::printSummary() /f/exiv2-trunk/src/actions=
.cpp:289:16
    #3 0x596ef8 in Action::Print::run(std::__cxx11::basic_string<char, std:=
:char_traits<char>, std::allocator<char> > const&) /f/exiv2-trunk/src/actio=
ns.cpp:244:44
    #4 0x55fb3f in main /f/exiv2-trunk/src/exiv2.cpp:170:25
    #5 0x7f5e130a71d0 in __libc_start_main /var/tmp/portage/sys-libs/glibc-=
2.24-r2/work/glibc-2.24/csu/../csu/libc-start.c:289
    #6 0x468979 in _start (/r/exiv2/exiv2+0x468979)

0x7f5e099e6838 is located 0 bytes to the right of 808452152-byte region [0x=
7f5dd96e6800,0x7f5e099e6838)
allocated by thread T0 here:
    #0 0x55af00 in operator new[](unsigned long) (/r/exiv2/exiv2+0x55af00)
    #1 0x6e8176 in Exiv2::DataBuf::DataBuf(long) /f/exiv2-trunk/src/../incl=
ude/exiv2/types.hpp:204:46
    #2 0x6e8176 in Exiv2::Jp2Image::readMetadata() /f/exiv2-trunk/src/jp2im=
age.cpp:273
    #3 0x59786a in Action::Print::printSummary() /f/exiv2-trunk/src/actions=
.cpp:289:16
    #4 0x596ef8 in Action::Print::run(std::__cxx11::basic_string<char, std:=
:char_traits<char>, std::allocator<char> > const&) /f/exiv2-trunk/src/actio=
ns.cpp:244:44
    #5 0x7f5e130a71d0 in
    __libc_start_main /var/tmp/portage/sys-libs/glibc-2.24-r2/work/glibc-2.=
24/csu/../csu/libc-start.c:289

----------------

Stack out of bounds read in webp parser

A malformed webp file causes a six bytes stack out of bounds read.

Stack trace:

=3D=3D598=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on address 0x=
7ffcc12aa054 at pc 0x0000004fe311 bp 0x7ffcc12a9f90 sp 0x7ffcc12a9740
READ of size 6 at 0x7ffcc12aa054 thread T0
    #0 0x4fe310 in __interceptor_memcmp.part.76 (/r/exiv2/exiv2+0x4fe310)
    #1 0x8889d0 in Exiv2::WebPImage::getHeaderOffset(unsigned char*, long, =
unsigned char*, long) /f/exiv2-trunk/src/webpimage.cpp:798:17
    #2 0x8889d0 in Exiv2::WebPImage::decodeChunks(unsigned long) /f/exiv2-t=
runk/src/webpimage.cpp:601
    #3 0x884ff2 in Exiv2::WebPImage::readMetadata() /f/exiv2-trunk/src/webp=
image.cpp:496:20
    #4 0x59786a in Action::Print::printSummary() /f/exiv2-trunk/src/actions=
.cpp:289:16
    #5 0x596ef8 in Action::Print::run(std::__cxx11::basic_string<char, std:=
:char_traits<char>, std::allocator<char> > const&) /f/exiv2-trunk/src/actio=
ns.cpp:244:44
    #6 0x55fb3f in main /f/exiv2-trunk/src/exiv2.cpp:170:25
    #7 0x7f7f9cc9f1d0 in __libc_start_main /var/tmp/portage/sys-libs/glibc-=
2.24-r2/work/glibc-2.24/csu/../csu/libc-start.c:289
    #8 0x468979 in _start (/r/exiv2/exiv2+0x468979)

Address 0x7ffcc12aa054 is located in stack of thread T0 at offset 180 in fr=
ame
    #0 0x885a0f in Exiv2::WebPImage::decodeChunks(unsigned long) /f/exiv2-t=
runk/src/webpimage.cpp:501

  This frame has 13 object(s):
    [32, 36) 'size_buff' (line 503)
    [48, 64) 'payload' (line 516)
    [80, 84) 'size_buf' (line 520)
    [96, 100) 'size_buf48' (line 536)
    [112, 114) 'size_buf_w' (line 551)
    [128, 131) 'size_buf_h' (line 552)
    [144, 148) 'size_buf112' (line 568)
    [160, 162) 'size_buff152' (line 587)
    [176, 180) 'exifLongHeader295' (line 588) <=3D=3D Memory access at offs=
et 180 overflows this variable
    [192, 196) 'exifTiffBEHeader297' (line 591)
    [208, 272) 'xmpData' (line 650)
    [304, 688) 'temp.lvalue'
    [752, 1136) 'temp.lvalue232'
HINT: this may be a false positive if your program uses some custom stack u=
nwind mechanism or swapcontext
      (longjmp and C++ exceptions *are* supported)

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/diUpcYDbU2gWyQVbLJ2+ofQ
Content-Type: application/gzip
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=exiv2-poc.tar.gz

H4sIAPEMVlkAA+3Wz0oCQRwH8Jndilj6a2agBUuHkCCZ2X8FXSJICBLEDkG3
1VbUwpXVsnNBPkAQPURvUA/QQ3Tq1qVn6LfTWktKQqgh/D7gzJf5L+6oJceu
bbhufsNz7JNUpaaR/mPAMgy/5psmC9cC1zjhOtdMg1m6DuO4zixOVDaAs3Q4
rzdsT1VJya5W3V/G9eofXVOVrKpOKy0FcpR1AU9FCfpi3foIK7hnXrgBjZJS
+/43vXLDSTXKxWLf9+h1/w3L+nn/TRPv/1BkMmQdqkmSoITIkCh5hoIG+QoK
SeQxSDkqB+0wmE4EWYJiRpS38Dqms34mEUKkdzonsuIvTef9NfyZyVcaCa2z
GGR/h1ho36VgPL3boXEy/jlXVmjiK0focmidZOg8XOy7AmPiVBM5CnmLbou8
CvmA5kJzD9vvUa5KT37Lggn54vpRnOENvvweWvX2+dfuh/f5DBo8/YXT7z8A
TSdf6/seve4/6/z9N7mG938Ycvvp9M2LRI72drPOZbmo/PeBEEIIIYQQQggh
hBBCCCGEEEII/ckHsrcY3QAoAAA=

--MP_/diUpcYDbU2gWyQVbLJ2+ofQ--
