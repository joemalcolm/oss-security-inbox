X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4031" "Saturday" "8" "October" "2016" "22:05:12" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3959521.p6bvcEHnKb@arcadia>" "105" "[oss-security] libav: null pointer dereference in get_vlc2 (get_bits.h)" nil nil nil "10" "2016100820:05:12" "[oss-security] libav: null pointer dereference in get_vlc2 (get_bits.h)" (number mark "U       ago@gentoo.o Oct  8  105/4031  " thread-indent "\"[oss-security] libav: null pointer dereference in get_vlc2 (get_bits.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29744 invoked by uid 550); 8 Oct 2016 20:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29712 invoked from network); 8 Oct 2016 20:05:04 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 08 Oct 2016 22:05:12 +0200
Message-ID: <3959521.p6bvcEHnKb@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart24198550.dXEckqPAcX"
Content-Transfer-Encoding: 7Bit
Subject: [oss-security] libav: null pointer dereference in get_vlc2 (get_bits.h)

--nextPart24198550.dXEckqPAcX
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Description:
Libav is an open source set of tools for audio and video processing.

A crafted file causes a NULL pointer access.

This issue was discovered the past year, but I didn=E2=80=99t make the repo=
rt and I=20
didn=E2=80=99t follow the state because of a lack of time.
Since I saw that the issue does not happen anymore on the git head, I=20
asked to a libav developer (Luca Barbato) about. He said that the commit=20
e5b019725f53b79159931d3a7317107cbbfd0860 make the issue not=20
anymore reachable through the provided testcase, but the issue is still=20
here (maybe another round of fuzzing will re-discover it on master)

The complete ASan output:

# avconv -i $FILE -f null -
ASAN:SIGSEGV
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D20876=3D=3DERROR: AddressSanitizer: SEGV on unknown address=20
0x0000000000fc (pc 0x7f5273202c6c bp 0x7ffc8442a690 sp=20
0x7ffc8442a520 T0)
    #0 0x7f5273202c6b in get_vlc2 /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/get_bits.h:530:5
    #1 0x7f5273202c6b in mpeg4_decode_sprite_trajectory=20
/var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/mpeg4videodec.c:182
    #2 0x7f527322cbd8 in decode_vop_header /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/mpeg4videodec.c:2232:13
    #3 0x7f527322cbd8 in ff_mpeg4_decode_picture_header=20
/var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/mpeg4videodec.c:2491
    #4 0x7f52731fa9ae in mpeg4_decode_header /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/mpeg4video_parser.c:92:11
    #5 0x7f52731fa9ae in mpeg4video_parse /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/mpeg4video_parser.c:132
    #6 0x7f52735c88e6 in av_parser_parse2 /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/parser.c:157:13
    #7 0x7f52754f84dd in parse_packet /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavformat/utils.c:794:15
    #8 0x7f52754d5e64 in read_frame_internal /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavformat/utils.c:960:24
    #9 0x7f52754e3783 in avformat_find_stream_info=20
/var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavformat/utils.c:2156:15
    #10 0x4f62f6 in open_input_file /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/avconv_opt.c:726:11
    #11 0x4f474f in open_files /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/avconv_opt.c:2127:15
    #12 0x4f3f62 in avconv_parse_options /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/avconv_opt.c:2164:11
    #13 0x528727 in main /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/avconv.c:2629:11
    #14 0x7f527027eaa4 in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.20-r2/work/glibc-2.20/csu/libc-start.c:289
    #15 0x43a5d6 in _start (/usr/bin/avconv+0x43a5d6)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-
video/libav-11.3/work/libav-11.3/libavcodec/get_bits.h:530 get_vlc2
=3D=3D20876=3D=3DABORTING

Affected version:
11.3 (and maybe past versions) to 11.7

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2015-07-27: bug discovered
2016-09-14: bug reported to upstream
2016-09-24: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
This bug does not affect ffmpeg.
The stacktrace is about 11.3 but as said before, the issue is present on=20
11.7 too.

Permalink:
https://blogs.gentoo.org/ago/2016/09/07/libav-null-pointer-dereference-in-g=
et_vlc2_get_bits_h/[1]=20


--------
[1] https://blogs.gentoo.org/ago/2016/09/07/libav-null-pointer-dereference-=
in-get_vlc2_get_bits_h/

--nextPart24198550.dXEckqPAcX--

