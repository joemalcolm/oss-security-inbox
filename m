X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3347" "Saturday" "8" "October" "2016" "22:29:54" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<4079765.cAzWC0Rqb2@arcadia>" "58" "[oss-security] potrace: invalid memory access in findnext (decompose.c)" nil nil nil "10" "2016100820:29:54" "[oss-security] potrace: invalid memory access in findnext (decompose.c)" (number mark "U       ago@gentoo.o Oct  8   58/3347  " thread-indent "\"[oss-security] potrace: invalid memory access in findnext (decompose.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30020 invoked by uid 550); 8 Oct 2016 20:29:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29989 invoked from network); 8 Oct 2016 20:29:45 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 08 Oct 2016 22:29:54 +0200
Message-ID: <4079765.cAzWC0Rqb2@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] potrace: invalid memory access in findnext (decompose.c)

Description:
potrace is a utility that transforms bitmaps into vector graphics.

A crafted image revealed, through a fuzz testing, the presence of a invalid 
memory access.

The complete ASan output:

# potrace $FILE
potrace: warning: 48.crashes: premature end of file                                                                                                                                            
ASAN:DEADLYSIGNAL                                                                                                                                                                              
=================================================================                                                                                                                              
==13940==ERROR: AddressSanitizer: SEGV on unknown address 0x7fd7b865b800 (pc 
0x7fd7ec5bcbf4 bp 0x7fff9ebad590 sp 0x7fff9ebad360 T0)                                                            
    #0 0x7fd7ec5bcbf3 in findnext /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/decompose.c:436:11                                                                             
    #1 0x7fd7ec5bcbf3 in getenv /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/decompose.c:478                                                                                  
    #2 0x7fd7ec5c3ed9 in potrace_trace /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/potracelib.c:76:7                                                                         
    #3 0x4fea6e in process_file /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/main.c:1102:10                                                                                   
    #4 0x4f872b in main /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/main.c:1250:7                                                                                            
    #5 0x7fd7eb4d961f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                        
    #6 0x418fc8 in getenv (/usr/bin/potrace+0x418fc8)                                                                                                                                          
                                                                                                                                                                                               
AddressSanitizer can not provide additional info.                                                                                                                                              
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/decompose.c:436:11 in findnext                                                                   
==13940==ABORTING
Affected version:
1.13

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-08-26: bug discovered
2016-08-27: bug reported privately to upstream
2016-08-29: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/08/29/potrace-invalid-memory-access-in-findnext-decompose-c/

