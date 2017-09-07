X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5049" "Thursday" "7" "September" "2017" "15:32:58" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<821859.070656018-sendEmail@localhost>" "77" "[oss-security] aacplusenc: NULL pointer dereference in DeleteBitBuffer (bitbuffer.c)" nil nil nil "9" "2017090715:32:58" "[oss-security] aacplusenc: NULL pointer dereference in DeleteBitBuffer (bitbuffer.c)" (number mark "U       ago@gentoo.o Sep  7   77/5049  " thread-indent "\"[oss-security] aacplusenc: NULL pointer dereference in DeleteBitBuffer (bitbuffer.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32084 invoked by uid 550); 7 Sep 2017 15:33:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32039 invoked from network); 7 Sep 2017 15:33:14 -0000
Message-ID: <821859.070656018-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 7 Sep 2017 15:32:58 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-401998.875037865"
Subject: [oss-security] aacplusenc: NULL pointer dereference in DeleteBitBuffer (bitbuffer.c)

------MIME delimiter for sendEmail-401998.875037865
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
aacplusenc is an High-Efficiency AAC (AAC+) Encoder.

The complete ASan output of the issue:

# aacplusenc $FILE out.aac 32
                                                                                                                                                                                                                  
*************************************************************                                                                                                                                                     
* Enhanced aacPlus Encoder                                                                                                                                                                                        
* Build Aug 30 2017, 14:40:49                                                                                                                                                                                     
* Matteo Croce                                                                                                                                                                                
*************************************************************                                                                                                                                                     
                                                                                                                                                                                                                  
input file 101.crashes.wav:                                                                                                                                                                                       
sr = 48000, nc = 1                                                                                                                                                                                                
                                                                                                                                                                                                                  
output file out.aac:                                                                                                                                                                                              
br = 32000 sr-OUT = 48000  nc-OUT = 1                                                                                                                                                                             
                                                                                                                                                                                                                  
                                                                                                                                                                                                                  
ASAN:DEADLYSIGNAL
=================================================================
==21496==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000030 (pc 0x000000562e2f bp 0x7ffc2ec32430 sp 0x7ffc2ec32430 T0)
==21496==The signal is caused by a WRITE memory access.
==21496==Hint: address points to the zero page.
    #0 0x562e2e in DeleteBitBuffer /var/tmp/portage/media-sound/aacplusenc-0.17.5/work/aacplusenc/libbitbuf/bitbuffer.c:97:23
    #1 0x50d909 in AacEncClose /var/tmp/portage/media-sound/aacplusenc-0.17.5/work/aacplusenc/libaacenc/aacenc.c:469:5
    #2 0x50c0df in main /var/tmp/portage/media-sound/aacplusenc-0.17.5/work/aacplusenc/aacplusenc.c:536:2
    #3 0x7f0e4c21b680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x419e78 in _init (/usr/bin/aacplusenc+0x419e78)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-sound/aacplusenc-0.17.5/work/aacplusenc/libbitbuf/bitbuffer.c:97:23 in DeleteBitBuffer
==21496==ABORTING

Affected version:
0.17.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14181

Reproducer:
https://github.com/asarubbo/poc/blob/master/00332-aacplusenc-NULLptr-DeleteBitBuffer

Timeline:
2017-08-31: bug discovered and reported to upstream
2017-09-07: blog post about the issue
2017-09-07: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/07/aacplusenc-null-pointer-dereference-in-deletebitbuffer-bitbuffer-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-401998.875037865--

