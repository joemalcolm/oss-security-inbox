X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3976" "Monday" "28" "August" "2017" "14:29:32" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<1380.82969667153-sendEmail@localhost>" "62" "[oss-security] openjpeg: invalid memory write in tgatoimage (convert.c)" nil nil nil "8" "2017082814:29:32" "[oss-security] openjpeg: invalid memory write in tgatoimage (convert.c)" (number mark "U       ago@gentoo.o Aug 28   62/3976  " thread-indent "\"[oss-security] openjpeg: invalid memory write in tgatoimage (convert.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3588 invoked by uid 550); 28 Aug 2017 14:29:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3550 invoked from network); 28 Aug 2017 14:29:48 -0000
Message-ID: <1380.82969667153-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 28 Aug 2017 14:29:32 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-601006.632977263"
Subject: [oss-security] openjpeg: invalid memory write in tgatoimage (convert.c)

------MIME delimiter for sendEmail-601006.632977263
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
openjpeg is an open-source JPEG 2000 library.

The complete ASan output of the issue:

# opj_compress -r 20,10,1 -jpip -EPH -SOP -cinema2K 24 -n 1 -i $FILE -o null.j2k
ASAN:DEADLYSIGNAL                                                                                                                                                                                                 
=================================================================                                                                                                                                                 
==13239==ERROR: AddressSanitizer: SEGV on unknown address 0x7f4f2e9b4800 (pc 0x00000052264a bp 0x7ffff176def0 sp 0x7ffff176dde0 T0)                                                                               
==13239==The signal is caused by a WRITE memory access.                                                                                                                                                           
    #0 0x522649 in tgatoimage /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/convert.c:928:45                                                                                           
    #1 0x50b4e6 in main /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/opj_compress.c:1881:21                                                                                           
    #2 0x7f5de2316680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                    
    #3 0x41bc18 in _start (/usr/bin/opj_compress+0x41bc18)                                                                                                                                                        
                                                                                                                                                                                                                  
AddressSanitizer can not provide additional info.                                                                                                                                                                 
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-libs/openjpeg-9999/work/openjpeg-9999/src/bin/jp2/convert.c:928:45 in tgatoimage                                                                           
==13239==ABORTING                                                                                                                                                                                                 
CINEMA 2K profile activated                                                                                                                                                                                       
Other options specified could be overridden

Affected version:
Master at 2017-08-17 and maybe paste releases

Fixed version:
N/A

Commit fix:
https://github.com/uclouvain/openjpeg/commit/2cd30c2b06ce332dede81cccad8b334cde997281

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
Waiting for a CVE assignment

Reproducer:
https://github.com/asarubbo/poc/blob/master/00326-openjpeg-invalidwrite-tgatoimage

Timeline:
2017-08-17: bug discovered and reported to upstream
2017-08-28: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/28/openjpeg-invalid-memory-write-in-tgatoimage-convert-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-601006.632977263--

