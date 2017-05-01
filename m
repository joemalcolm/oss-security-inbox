X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2669" "Monday" "1" "May" "2017" "11:41:10" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<528854.035164358-sendEmail@localhost>" "66" "[oss-security] libmad: heap-based buffer overflow in mad_bit_skip (bit.c)" nil nil nil "5" "2017050111:41:10" "[oss-security] libmad: heap-based buffer overflow in mad_bit_skip (bit.c)" (number mark "U       ago@gentoo.o May  1   66/2669  " thread-indent "\"[oss-security] libmad: heap-based buffer overflow in mad_bit_skip (bit.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3821 invoked by uid 550); 1 May 2017 11:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3736 invoked from network); 1 May 2017 11:41:28 -0000
Message-ID: <528854.035164358-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 1 May 2017 11:41:10 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-869439.675546349"
Subject: [oss-security] libmad: heap-based buffer overflow in mad_bit_skip (bit.c)

------MIME delimiter for sendEmail-869439.675546349
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libmad stays for “M”peg “A”udio “D”ecoder library.

There is an heap overflow discovered through madplay.

The complete ASan output:

# madplay -v -i -o raw:out $FILE
==12603==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61200000c09f at pc 0x7f72d6aa05c0 bp 0x7fff03e32040 sp 0x7fff03e32038
READ of size 1 at 0x61200000c09f thread T0
    #0 0x7f72d6aa05bf in mad_bit_skip /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/bit.c:130:21
    #1 0x7f72d6b032ad in III_huffdecode /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/layer3.c:953:3
    #2 0x7f72d6b032ad in III_decode /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/layer3.c:2403
    #3 0x7f72d6af1a8e in mad_layer_III /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/layer3.c:2648:13
    #4 0x7f72d6ab584d in mad_frame_decode /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/frame.c:453:7
    #5 0x7f72d6ada4e4 in run_sync /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/decoder.c:404:11
    #6 0x7f72d6ad8c59 in mad_decoder_run /tmp/portage/media-libs/libmad-0.15.1b-r8/work/libmad-0.15.1b/decoder.c:557:12
    #7 0x5277a1 in decode /tmp/portage/media-sound/madplay-0.15.2b-r1/work/madplay-0.15.2b/player.c:1862:12
    #8 0x5277a1 in play_one /tmp/portage/media-sound/madplay-0.15.2b-r1/work/madplay-0.15.2b/player.c:1951
    #9 0x5277a1 in play_all /tmp/portage/media-sound/madplay-0.15.2b-r1/work/madplay-0.15.2b/player.c:2041
    #10 0x5215a2 in player_run /tmp/portage/media-sound/madplay-0.15.2b-r1/work/madplay-0.15.2b/player.c:2768:14
    #11 0x50c46c in main /tmp/portage/media-sound/madplay-0.15.2b-r1/work/madplay-0.15.2b/madplay.c:816:7
    #12 0x7f72d599d78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #13 0x41aa78 in _init (/usr/bin/madplay+0x41aa78)

Affected version:
0.15.1b

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8374

Reproducer:
https://github.com/asarubbo/poc/blob/master/00211-libmad-heapoverflow-mad_bit_skip

Timeline:
2017-01-01: bug discovered and reported to upstream
2017-04-30: blog post about the issue
2017-05-01: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/30/libmad-heap-based-buffer-overflow-in-mad_bit_skip-bit-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-869439.675546349--

