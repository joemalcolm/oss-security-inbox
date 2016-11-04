X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9786" "Friday" "4" "November" "2016" "15:43:31" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<6451341.vFYbS6xerg@blackgate>" "100" "[oss-security] jasper: use of uninitialized value in jpc_pi_nextcprl (jpc_t2cod.c)" "^Cc:" nil nil "11" "2016110414:43:31" "[oss-security] jasper: use of uninitialized value in jpc_pi_nextcprl (jpc_t2cod.c)" (number mark "U       ago@gentoo.o Nov  4  100/9786  " thread-indent "\"[oss-security] jasper: use of uninitialized value in jpc_pi_nextcprl (jpc_t2cod.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1966 invoked by uid 550); 4 Nov 2016 14:43:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1924 invoked from network); 4 Nov 2016 14:43:48 -0000
Message-ID: <6451341.vFYbS6xerg@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: cve-assign@mitre.org
Date: Fri, 04 Nov 2016 15:43:31 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] jasper: use of uninitialized value in jpc_pi_nextcprl (jpc_t2cod.c)
To: oss-security@lists.openwall.com

If suitable for a CVE please assign one. Thanks.

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

I decided to try another round of fuzzing with the Memory Sanitizer enabled, 
and I discovered that there is an use-of-uninitialized-value in 
jpc_pi_nextcprl

The complete MSan output:

# imginfo -f $FILE
warning: trailing garbage in marker segment (14 bytes)                                                                                                                                                                                                                         
warning: trailing garbage in marker segment (14 bytes)                                                                                                                                                                                                                         
warning: ignoring unknown marker segment                                                                                                                                                                                                                                       
type = 0xff41 (UNKNOWN); len = 20;01 87 01 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 warning: trailing garbage in marker segment (14 bytes)                                                                                                                                 
==7937==WARNING: MemorySanitizer: use-of-uninitialized-value                                                                                                                                                                                                                   
    #0 0x7fc562323907 in jpc_pi_nextcprl /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_t2cod.c:482:12                                                                                                                                     
    #1 0x7fc562323907 in jpc_pi_next /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_t2cod.c:125                                                                                                                                            
    #2 0x7fc56232aadc in jpc_dec_decodepkts /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_t2dec.c:441:14                                                                                                                                  
    #3 0x7fc5621fa9f1 in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:594:6                                                                                                                                    
    #4 0x7fc56220c574 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:391:10                                                                                                                                        
    #5 0x7fc56220c574 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:255                                                                                                                                               
    #6 0x7fc5621ac5a4 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jp2/jp2_dec.c:215:21                                                                                                                                            
    #7 0x7fc5620d69d1 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/base/jas_image.c:396:16                                                                                                                                   
    #8 0x557bb7618831 in main /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/appl/imginfo.c:203:16                                                                                                                                                           
    #9 0x7fc5611e961f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                        
    #10 0x557bb7599a28 in _init (/usr/bin/imginfo+0x1aa28)                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                               
  Uninitialized value was created by a heap allocation                                                                                                                                                                                                                         
    #0 0x557bb75bf639 in malloc /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/msan/msan_interceptors.cc:1002                                                                                                                           
    #1 0x7fc5621507d4 in jas_malloc /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/base/jas_malloc.c:148:13                                                                                                                                        
    #2 0x7fc562152520 in jas_alloc2 /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/base/jas_malloc.c:275:9                                                                                                                                         
    #3 0x7fc56233360c in jpc_dec_pi_create /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_t2dec.c:506:30                                                                                                                                   
    #4 0x7fc5621f2c71 in jpc_dec_tileinit /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:911:19                                                                                                                                      
    #5 0x7fc5621f2c71 in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:560                                                                                                                                      
    #6 0x7fc56220c574 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:391:10                                                                                                                                        
    #7 0x7fc56220c574 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:255                                                                                                                                               
    #8 0x7fc5621ac5a4 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jp2/jp2_dec.c:215:21                                                                                                                                            
    #9 0x7fc5620d69d1 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/base/jas_image.c:396:16                                                                                                                                   
    #10 0x557bb7618831 in main /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/appl/imginfo.c:203:16                                                                                                                                                          
    #11 0x7fc5611e961f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                       
                                                                                                                                                                                                                                                                               
SUMMARY: MemorySanitizer: use-of-uninitialized-value /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_t2cod.c:482:12 
in jpc_pi_nextcprl                                                                                                      
Exiting

Affected version:
1.900.17

Fixed version:
1.900.20

Commit fix:
https://github.com/mdadams/jasper/commit/1f0dfe5a42911b6880a1445f13f6d615ddb55387

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00029-jasper-uninitvalue-jpc_pi_nextcprl

Timeline:
2016-11-03: bug discovered and reported to upstream
2016-11-04: upstream released a patch
2016-11-04: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/04/jasper-use-of-uninitialized-value-in-jpc_pi_nextcprl-jpc_t2cod-c
