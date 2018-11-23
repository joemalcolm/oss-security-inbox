X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4733" "Friday" "23" "November" "2018" "09:22:17" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181123092217.7e4a0f84@computer>" "111" "[oss-security] Crashes and memory safety bugs in dcraw" "^Date:" nil nil "11" "2018112308:22:17" "[oss-security] Crashes and memory safety bugs in dcraw" (number mark "        hanno@hboeck Nov 23  111/4733  " thread-indent "\"[oss-security] Crashes and memory safety bugs in dcraw\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8071 invoked by uid 550); 23 Nov 2018 08:22:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8039 invoked from network); 23 Nov 2018 08:22:22 -0000
Message-ID: <20181123092217.7e4a0f84@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 23 Nov 2018 09:22:17 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Crashes and memory safety bugs in dcraw
To: oss-security@lists.openwall.com

Hi,

dcraw is a tool to process raw images from digital cameras.
It easily crashes with various issues (tested version 9.28.0). This was
very shallow testing (afl fuzzing with random inputs, not starting with
valid images), I assume there's much more. I reported those a long time
ago to its author, he didn't seem interested in fixing such issues.

Some applications use dcraw automatically to parse images (gthumb,
kphotoalbum, kde thumbnailers, gwenview).

Input samples are base64.


Segfault / memory read on invalid address in crop_masked_pixels
---------------------------------------------------------------

TU0wMIEwMDAAMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMIX/MDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMLTCMDAw
MDAwAAAAMDAwMDAwMDAwMDAwMMaN

=3D=3D6511=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x7fa0aa2a=
d79e (pc 0x0000005992fe bp 0x7ffdd236bb50 sp 0x7ffdd236b9e0 T0)
=3D=3D6511=3D=3DThe signal is caused by a READ memory access.
    #0 0x5992fd in crop_masked_pixels /mnt/ram/dcraw/dcraw.c:3775:20
    #1 0x668a33 in main /mnt/ram/dcraw/dcraw.c:10406:7
    #2 0x7fa05f3264ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #3 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)


Heap out of bounds read in parse_tiff_ifd
-----------------------------------------

TU0wMIAwMDAAMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMMUWMDAAAAA=3D


=3D=3D6729=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0x=
61100000013f at pc 0x00000043690d bp 0x7ffeaaba2270 sp 0x7ffeaaba1a18
READ of size 256 at 0x61100000013f thread T0
    #0 0x43690c in __interceptor_index (/mnt/ram/dcraw/a.out+0x43690c)
    #1 0x5ec1d1 in parse_tiff_ifd /mnt/ram/dcraw/dcraw.c:6014:46
    #2 0x60cc64 in parse_tiff /mnt/ram/dcraw/dcraw.c:6193:9
    #3 0x63d0d6 in identify /mnt/ram/dcraw/dcraw.c:8674:16
    #4 0x666eab in main /mnt/ram/dcraw/dcraw.c:10252:15
    #5 0x7f1ec0bfc4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #6 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)

0x61100000013f is located 0 bytes to the right of 255-byte region [0x611000=
000040,0x61100000013f)
allocated by thread T0 here:
    #0 0x4c6b23 in malloc (/mnt/ram/dcraw/a.out+0x4c6b23)
    #1 0x5ec070 in parse_tiff_ifd /mnt/ram/dcraw/dcraw.c:6012:24
    #2 0x60cc64 in parse_tiff /mnt/ram/dcraw/dcraw.c:6193:9
    #3 0x63d0d6 in identify /mnt/ram/dcraw/dcraw.c:8674:16
    #4 0x666eab in main /mnt/ram/dcraw/dcraw.c:10252:15
    #5 0x7f1ec0bfc4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)


Invalid memory read in crop_masked_pixels
-----------------------------------------

TU0wMIEwMDAAMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMIX/MDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMLTCMDAw
MDAwAAAAMDAwMDAwMDAwMDAwMMaN

=3D=3D6893=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x7f5514da=
d79e (pc 0x0000005992fe bp 0x7ffc83994ad0 sp 0x7ffc83994960 T0)
=3D=3D6893=3D=3DThe signal is caused by a READ memory access.
    #0 0x5992fd in crop_masked_pixels /mnt/ram/dcraw/dcraw.c:3775:20
    #1 0x668a33 in main /mnt/ram/dcraw/dcraw.c:10406:7
    #2 0x7f54c9df64ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #3 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)


floating point exception / segfault in parse_tiff_ifd
-----------------------------------------------------

TU0wMIAwMDAAMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMP0JMDAAAAAA

=3D=3D6910=3D=3DERROR: AddressSanitizer: FPE on unknown address 0x0000005f7=
0ee (pc 0x0000005f70ee bp 0x7ffc259155f0 sp 0x7ffc259142a0 T0)
    #0 0x5f70ed in parse_tiff_ifd /mnt/ram/dcraw/dcraw.c:6055:43
    #1 0x60cc64 in parse_tiff /mnt/ram/dcraw/dcraw.c:6193:9
    #2 0x63d0d6 in identify /mnt/ram/dcraw/dcraw.c:8674:16
    #3 0x666eab in main /mnt/ram/dcraw/dcraw.c:10252:15
    #4 0x7fc98bd024ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #5 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)


floating point exception in kodac_radc_load_raw
-----------------------------------------------

UFhOAA=3D=3D

=3D=3D6919=3D=3DERROR: AddressSanitizer: FPE on unknown address 0x00000054e=
85e (pc 0x00000054e85e bp 0x7fffc0b15150 sp 0x7fffc0b10be0 T0)
    #0 0x54e85d in kodak_radc_load_raw /mnt/ram/dcraw/dcraw.c:2272:34
    #1 0x6687ad in main /mnt/ram/dcraw/dcraw.c:10395:10
    #2 0x7f8f61ecf4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #3 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)



--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
