X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2588" "Monday" "21" "August" "2017" "15:37:42" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2694019.X3JYPNZand@wanheda>" "62" "[oss-security] libmirage: NULL pointer dereference in mirage_stream_get_filename (stream.c)" nil nil nil "8" "2017082113:37:42" "[oss-security] libmirage: NULL pointer dereference in mirage_stream_get_filename (stream.c)" (number mark "U       ago@gentoo.o Aug 21   62/2588  " thread-indent "\"[oss-security] libmirage: NULL pointer dereference in mirage_stream_get_filename (stream.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9658 invoked by uid 550); 21 Aug 2017 13:37:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9602 invoked from network); 21 Aug 2017 13:37:56 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 21 Aug 2017 15:37:42 +0200
Message-ID: <2694019.X3JYPNZand@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.34-gentoo; KDE/4.14.32; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libmirage: NULL pointer dereference in mirage_stream_get_filename (stream.c)

There is a NULL pointer dereference in libmirage when handling .dmg/.isz fi=
le.
The bug was found via mirage2iso (https://github.com/mgorny/mirage2iso) whi=
ch=20
uses limirage to convert various CD/DVD image formats into .iso
The bug was initially spotted by Micha=C5=82 G=C3=B3rny so the credit goes =
to him.

I hitted the bug too and I'm pointing out the security implication. The=20
complete asan output of the issue:

# mirage2iso $FILE out.iso
=3D=3D22879=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x0000000=
00000 (pc=20
0x7f9c67f5dde9 bp 0x7f9c5e533e26 sp 0x7ffeb47ffe20 T0)
=3D=3D22879=3D=3DThe signal is caused by a READ memory access.
=3D=3D22879=3D=3DHint: address points to the zero page.
    #0 0x7f9c67f5dde8 in mirage_stream_get_filename /var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/mirage/stream.c:61
    #1 0x7f9c5e5306c8 in mirage_filter_stream_dmg_open_streams=20
/var/tmp/portage/dev-libs/libmirage-3.0.4/work/libmirage-3.0.4/filters/filt=
er-
dmg/filter-stream.c:603
    #2 0x7f9c5e5306c8 in mirage_filter_stream_dmg_open /var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/filters/filter-dmg/filter-
stream.c:719
    #3 0x7f9c67f5726c in mirage_filter_stream_open /var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/mirage/filter-stream.c:209
    #4 0x7f9c67f53aa5 in mirage_context_create_input_stream=20
/var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/mirage/context.c:471
    #5 0x7f9c67f53bea in mirage_context_load_image /var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/mirage/context.c:359
    #6 0x50d6ca in miragewrap_open /var/tmp/portage/app-
cdr/mirage2iso-0.4.2/work/mirage2iso-0.4.2/src/mirage-wrapper.c:87:9
    #7 0x50a3cb in main /var/tmp/portage/app-
cdr/mirage2iso-0.4.2/work/mirage2iso-0.4.2/src/mirage2iso.c:281:7
    #8 0x7f9c66e38680 in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #9 0x41ab98 in _start (/usr/bin/mirage2iso+0x41ab98)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/dev-
libs/libmirage-3.0.4/work/libmirage-3.0.4/mirage/stream.c:61 in=20
mirage_stream_get_filename
=3D=3D22879=3D=3DABORTING

Testcase:
https://github.com/mgorny/mirage2iso/blob/master/tests/21_hdiutil_ulfo.dmg

Upstream bug report:
https://sourceforge.net/p/cdemu/bugs/105/

Upstream commit:
https://sourceforge.net/p/cdemu/code/ci/d874b3b1bc86b94b1f323d7df9e665279fb=
966cb/

A CVE request was not requested.

--=20
Agostino Sarubbo
Gentoo Linux Developer
