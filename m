X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4345" "Thursday" "13" "April" "2017" "07:11:21" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<376842.773377092-sendEmail@localhost>" "93" "[oss-security] libsndfile: invalid memory READ and invalid memory WRITE in flac_buffer_copy (flac.c)" "^Date:" nil nil "4" "2017041307:11:21" "[oss-security] libsndfile: invalid memory READ and invalid memory WRITE in flac_buffer_copy (flac.c)" (number mark "        ago@gentoo.o Apr 13   93/4345  " thread-indent "\"[oss-security] libsndfile: invalid memory READ and invalid memory WRITE in flac_buffer_copy (flac.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3177 invoked by uid 550); 13 Apr 2017 07:11:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3148 invoked from network); 13 Apr 2017 07:11:39 -0000
Message-ID: <376842.773377092-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-110056.884194822"
Date: Thu, 13 Apr 2017 07:11:21 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libsndfile: invalid memory READ and invalid memory WRITE in flac_buffer_copy (flac.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-110056.884194822
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libsndfile is a C library for reading and writing files containing sampled sound.

A fuzz via the sndfile-resample command-line tool of libsamplerate, discovered and invalid memory read and an invalid memory write. The upstream author Erik de Castro Lopo (erikd) said that they was 
fixed in the recent commit 60b234301adf258786d8b90be5c1d437fc8799e0 which addresses CVE-2017-7585. As usual I’m providing the stacktrace and the reproducer so that all release distros can test and check 
if their version is affected or not.

The complete ASan output:

# sndfile-resample -to 24000 -c 1 $FILE out
==959==ERROR: AddressSanitizer: SEGV on unknown address 0x0000013cc000 (pc 0x7fc1ba91251c bp 0x60e000000040 sp 0x7fff95597f70 T0)
==959==The signal is caused by a WRITE memory access.
    #0 0x7fc1ba91251b in flac_buffer_copy /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:264
    #1 0x7fc1ba913404 in flac_read_loop /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:884
    #2 0x7fc1ba913505 in flac_read_flac2f /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:949
    #3 0x7fc1ba907a49 in sf_readf_float /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/sndfile.c:1870
    #4 0x5135c5 in sample_rate_convert /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:213:29
    #5 0x5135c5 in main /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:163
    #6 0x7fc1b9a4178f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #7 0x419f88 in _init (/usr/bin/sndfile-resample+0x419f88)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:264 in flac_buffer_copy
==959==ABORTING

Reproducer:
https://github.com/asarubbo/poc/blob/master/00261-libsndfile-invalidwrite-flac_buffer_copy

CVE:
CVE-2017-7741

#################

# sndfile-resample -to 24000 -c 1 $FILE out
==32533==ERROR: AddressSanitizer: SEGV on unknown address 0x000000004000 (pc 0x7f576a5e8512 bp 0x60e000000040 sp 0x7ffeab4e66d0 T0)
==32533==The signal is caused by a READ memory access.
    #0 0x7f576a5e8511 in flac_buffer_copy /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:263
    #1 0x7f576a5e9404 in flac_read_loop /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:884
    #2 0x7f576a5e9505 in flac_read_flac2f /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:949
    #3 0x7f576a5dda49 in sf_readf_float /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/sndfile.c:1870
    #4 0x5135c5 in sample_rate_convert /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:213:29
    #5 0x5135c5 in main /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:163
    #6 0x7f576971778f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #7 0x419f88 in _init (/usr/bin/sndfile-resample+0x419f88)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-libs/libsndfile-1.0.27-r1/work/libsndfile-1.0.27/src/flac.c:263 in flac_buffer_copy
==32533==ABORTING

Reproducer:
https://github.com/asarubbo/poc/blob/master/00260-libsndfile-invalidread-flac_buffer_copy

CVE:
CVE-2017-7742

Affected version:
1.0.27

Fixed version:
1.0.28

Commit fix:
https://github.com/erikd/libsndfile/commit/60b234301adf258786d8b90be5c1d437fc8799e0

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:

Reproducer:

Timeline:
2017-04-11: bug discovered and reported to upstream
2017-04-11: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/11/libsndfile-invalid-memory-read-and-invalid-memory-write-in

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-110056.884194822--

