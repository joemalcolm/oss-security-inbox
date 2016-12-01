X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5054" "Thursday" "1" "December" "2016" "14:30:33" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2421787.A5MWpBLn5b@arcadia>" "212" "[oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer" nil nil nil "12" "2016120113:30:33" "[oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer" (number mark "U       ago@gentoo.o Dec  1  212/5054  " thread-indent "\"[oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25678 invoked by uid 550); 1 Dec 2016 13:29:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25646 invoked from network); 1 Dec 2016 13:29:32 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 01 Dec 2016 14:30:33 +0100
Message-ID: <2421787.A5MWpBLn5b@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer

If suitable for a CVE please assign one. Thanks.

Description:
Libav is an open source set of tools for audio and video processing.

A fuzzing on an updated stable releases with the Undefined Behavior Sanitiz=
er=20
enabled, revealed multiple crashes. At the date I=E2=80=99m releasing this =
post,=20
upstream didn=E2=80=99t give a response/feedback about.

All issues are reproducible with:

avconv -i $FILE -f null -

More details about:

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo.c:2381:65: runtime=20
error: left shift of negative value -1
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo.c:2382:65: runtime=20
error: left shift of negative value -1
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo.c:2383:65: runtime=20
error: left shift of negative value -1
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00036-libav-leftshift-mpegvideo

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo_motion.c:323:47: runt=
ime=20
error: left shift of negative value -1
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo_motion.c:331:55: runt=
ime=20
error: left shift of negative value -1
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo_motion.c:336:55: runt=
ime=20
error: left shift of negative value -1
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00036-libav-leftshift-mpegvideo

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpegvideo_parser.c:91:65: runti=
me=20
error: signed integer overflow: 28573696 * 400 cannot be represented in typ=
e=20
=E2=80=98int=E2=80=99
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00037-libav-signedintoverflow-m=
pegvideo_parser

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/mpeg12dec.c:1401:41: runtime=20
error: signed integer overflow: 28573696 * 400 cannot be represented in typ=
e=20
=E2=80=98int=E2=80=99
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00037-libav-signedintoverflow-m=
pegvideo_parser

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/x86/mpegvideo.c:53:18: runtime=
=20
error: index -1 out of bounds for type =E2=80=98uint8_t [64]=E2=80=99
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00038-libav-uint8_t64-outofboun=
ds-mpegvideo

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libswscale/x86/swscale.c:189:64: runtime=20
error: signed integer overflow: 65463 * 65537 cannot be represented in type=
=20
=E2=80=98int=E2=80=99
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00039-libav-signedintoverflow-s=
wscale_c

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-video/libav-11.8/work/libav-11.8/libswscale/utils.c:340:=
30:=20
runtime error: left shift of negative value -1
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00040-libav-leftshift-utils_c

######################################

Affected version / Tested on:
11.8
Output/failure:

Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00041-libav-leftshift-ituh263de=
c_c

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/ituh263dec.c:645:34: runtime=20
error: left shift of negative value -16
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00041-libav-leftshift-ituh263de=
c_c

######################################

Affected version / Tested on:
11.8
Output/failure:
/tmp/portage/media-
video/libav-11.8/work/libav-11.8/libavcodec/get_bits.h:530:5: runtime error=
:=20
load of null pointer of type =E2=80=98int16_t=E2=80=99 (aka =E2=80=98short=
=E2=80=99)
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00042-libav-loadnullptr-get_bit=
s_h

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2016-11-08: bug discovered and reported to upstream
2016-12-01: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/12/01/libav-multiple-crashes-from-the-und=
efined-behavior-sanitizer

--=20
Agostino Sarubbo
Gentoo Linux Developer
