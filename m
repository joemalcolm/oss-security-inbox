X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4027" "Monday" "10" "July" "2017" "09:13:07" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<801547.452199401-sendEmail@localhost>" "95" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" nil nil nil "7" "2017071009:13:07" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "U       ago@gentoo.o Jul 10   95/4027  " thread-indent "\"[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20173 invoked by uid 550); 10 Jul 2017 09:13:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20069 invoked from network); 10 Jul 2017 09:13:23 -0000
Message-ID: <801547.452199401-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Jul 2017 09:13:07 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-358478.399067284"
Subject: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)

------MIME delimiter for sendEmail-358478.399067284
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
mpg123 is a fast console MPEG Audio Player and decoder library.

The complete ASan output of the issue:

# mpg123-mpg123 -t $FILE
==10588==ERROR: AddressSanitizer: global-buffer-overflow on address 0x7f01025c5cbc at pc 0x7f010229bfe3 bp 0x7ffc988ac5b0 sp 0x7ffc988ac5a8
READ of size 4 at 0x7f01025c5cbc thread T0
    #0 0x7f010229bfe2 in III_i_stereo /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/layer3.c:1343:10
    #1 0x7f010229bfe2 in INT123_do_layer3 /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/layer3.c:2013
    #2 0x7f01021d3708 in decode_the_frame /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/libmpg123.c:710:14
    #3 0x7f01021dc61d in mpg123_decode_frame /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/libmpg123.c:849:4
    #4 0x535783 in play_frame /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/mpg123.c:739:7
    #5 0x53a3a7 in main /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/mpg123.c:1363:8
    #6 0x7f0100f1d680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #7 0x41bec8 in mpg123_seek_frame (/usr/bin/mpg123-mpg123+0x41bec8)

0x7f01025c5cbc is located 4 bytes to the left of global variable 'pow2_1' defined in '/var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/layer3.c:50:27' (0x7f01025c5cc0) of size 
128
0x7f01025c5cbc is located 28 bytes to the right of global variable 'pow1_1' defined in '/var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/layer3.c:50:13' (0x7f01025c5c20) of 
size 128
SUMMARY: AddressSanitizer: global-buffer-overflow /var/tmp/portage/media-sound/mpg123-1.25.0/work/mpg123-1.25.0/src/libmpg123/layer3.c:1343:10 in III_i_stereo
Shadow bytes around the buggy address:
  0x0fe0a04b0b40: f9 f9 f9 f9 00 04 f9 f9 f9 f9 f9 f9 00 04 f9 f9
  0x0fe0a04b0b50: f9 f9 f9 f9 00 00 00 00 00 00 00 00 f9 f9 f9 f9
  0x0fe0a04b0b60: 00 00 00 00 00 00 00 00 f9 f9 f9 f9 00 00 00 00
  0x0fe0a04b0b70: 00 00 00 00 f9 f9 f9 f9 00 00 00 00 00 00 00 00
  0x0fe0a04b0b80: f9 f9 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0fe0a04b0b90: 00 00 00 00 f9 f9 f9[f9]00 00 00 00 00 00 00 00
  0x0fe0a04b0ba0: 00 00 00 00 00 00 00 00 f9 f9 f9 f9 00 00 00 00
  0x0fe0a04b0bb0: 00 00 00 00 00 00 00 00 00 00 00 00 f9 f9 f9 f9
  0x0fe0a04b0bc0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe0a04b0bd0: f9 f9 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe0a04b0be0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==10588==ABORTING
Affected version:
1.25.0

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-11126

Reproducer:
https://github.com/asarubbo/poc/blob/master/00300-mpg123-globaloverflow-III_i_stereo

Timeline:
2017-06-30: bug discovered and reported to upstream
2017-07-03: blog post about the issue
2017-07-10: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/07/03/mpg123-global-buffer-overflow-in-iii_i_stereo-layer3-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-358478.399067284--

