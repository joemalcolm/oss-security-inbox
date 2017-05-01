X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2433" "Monday" "1" "May" "2017" "11:26:02" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<521982.786801772-sendEmail@localhost>" "63" "[oss-security] libsndfile: invalid memory read in flac_buffer_copy (flac.c)" nil nil nil "5" "2017050111:26:02" "[oss-security] libsndfile: invalid memory read in flac_buffer_copy (flac.c)" (number mark "U       ago@gentoo.o May  1   63/2433  " thread-indent "\"[oss-security] libsndfile: invalid memory read in flac_buffer_copy (flac.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25800 invoked by uid 550); 1 May 2017 11:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25650 invoked from network); 1 May 2017 11:26:20 -0000
Message-ID: <521982.786801772-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 1 May 2017 11:26:02 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-949599.148080782"
Subject: [oss-security] libsndfile: invalid memory read in flac_buffer_copy (flac.c)

------MIME delimiter for sendEmail-949599.148080782
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libsndfile is a C library for reading and writing files containing sampled sound.

The complete ASan output of the issue:

# sndfile-resample -to 24000 -c 1 $FILE out
==19624==ERROR: AddressSanitizer: SEGV on unknown address 0x000000004000 (pc 0x7fe14fe3f2b3 bp 0x000000004000 sp 0x7ffcb49c4d50 T0)    
==19624==The signal is caused by a READ memory access. 
    #0 0x7fe14fe3f2b2 in flac_buffer_copy /tmp/portage/media-libs/libsndfile-1.0.28/work/libsndfile-1.0.28/src/flac.c:287    
    #1 0x7fe14fe403d7 in flac_read_loop /tmp/portage/media-libs/libsndfile-1.0.28/work/libsndfile-1.0.28/src/flac.c:928 
    #2 0x7fe14fe404d4 in flac_read_flac2f /tmp/portage/media-libs/libsndfile-1.0.28/work/libsndfile-1.0.28/src/flac.c:999    
    #3 0x7fe14fe34925 in sf_readf_float /tmp/portage/media-libs/libsndfile-1.0.28/work/libsndfile-1.0.28/src/sndfile.c:1945  
    #4 0x50a525 in sample_rate_convert /tmp/portage/media-libs/libsamplerate-0.1.9/work/libsamplerate-0.1.9/examples/sndfile-resample.c:206:29   
    #5 0x50a525 in main /tmp/portage/media-libs/libsamplerate-0.1.9/work/libsamplerate-0.1.9/examples/sndfile-resample.c:156 
    #6 0x7fe14ef70680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289   
    #7 0x419fa8 in _init (/usr/bin/sndfile-resample+0x419fa8)    

AddressSanitizer can not provide additional info. 
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-libs/libsndfile-1.0.28/work/libsndfile-1.0.28/src/flac.c:287 in flac_buffer_copy    
==19624==ABORTING

Affected version:
1.0.28

Fixed version:
N/A

Commit fix:
https://github.com/erikd/libsndfile/commit/ef1dbb2df1c0e741486646de40bd638a9c4cd808

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8362

Reproducer:
https://github.com/asarubbo/poc/blob/master/00264-libsndfile-invalidread-flac_buffer_copy

Timeline:
2017-04-12: bug discovered and reported to upstream
2017-04-14: upstream released a patch
2017-04-29: blog post about the issue
2017-04-30: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/29/libsndfile-invalid-memory-read-in-flac_buffer_copy-flac-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-949599.148080782--

