X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4226" "Sunday" "26" "February" "2017" "11:55:03" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<794245.981236116-sendEmail@localhost>" "64" "[oss-security] audiofile: divide-by-zero in BlockCodec::reset1 (BlockCodec.cpp)" "^Date:" nil nil "2" "2017022611:55:03" "[oss-security] audiofile: divide-by-zero in BlockCodec::reset1 (BlockCodec.cpp)" (number mark "U       ago@gentoo.o Feb 26   64/4226  " thread-indent "\"[oss-security] audiofile: divide-by-zero in BlockCodec::reset1 (BlockCodec.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12042 invoked by uid 550); 26 Feb 2017 11:56:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5413 invoked from network); 26 Feb 2017 11:55:20 -0000
Message-ID: <794245.981236116-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-391205.706008808"
Date: Sun, 26 Feb 2017 11:55:03 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] audiofile: divide-by-zero in BlockCodec::reset1 (BlockCodec.cpp)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-391205.706008808
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit



Description:
audiofile is a C-based library for reading and writing audio files in many common formats.

A fuzz on it discovered a division by zero.

The complete ASan output:

# sfconvert @@ out.mp3 format aiff
==3538==ERROR: AddressSanitizer: FPE on unknown address 0x7f86a8cffe14 (pc 0x7f86a8cffe14 bp 0x7ffe41d2ae00 sp 0x7ffe41d2adf0 T0)                                                                                                                                              
    #0 0x7f86a8cffe13 in BlockCodec::reset1() /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/BlockCodec.cpp:74:61                                                                                                                        
    #1 0x7f86a8d0b794 in ModuleState::reset(_AFfilehandle*, Track*) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/ModuleState.cpp:218:9                                                                                                 
    #2 0x7f86a8d0b794 in ModuleState::setup(_AFfilehandle*, Track*) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/ModuleState.cpp:190                                                                                                   
    #3 0x7f86a8ced43c in afGetFrameCount /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/format.cpp:205:41                                                                                                                                        
    #4 0x50bb5c in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:329:29                                                                                                                                                 
    #5 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17                                                                                                                                                          
    #6 0x7f86a7dbe78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                                                                                     
    #7 0x419f48 in _init (/usr/bin/sfconvert+0x419f48)                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                               
AddressSanitizer can not provide additional info.                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: FPE /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/BlockCodec.cpp:74:61 in BlockCodec::reset1()                                                                                                               
==3538==ABORTING

Affected version:
0.3.6

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00189-audiofile-fpe-BlockCodec-reset1

Timeline:
2017-02-20: bug discovered and reported to upstream
2017-02-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/20/audiofile-divide-by-zero-in-blockcodecreset1-blockcodec-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-391205.706008808--

