X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9379" "Tuesday" "14" "July" "2015" "21:17:04" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<6439170.QNVfc3SXO1@arcadia>" "109" "[oss-security] siege: off-by-one in load_conf()" nil nil nil "7" "2015071419:17:04" "[oss-security] siege: off-by-one in load_conf()" (number mark "        ago@gentoo.o Jul 14  109/9379  " thread-indent "\"[oss-security] siege: off-by-one in load_conf()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32412 invoked by uid 550); 14 Jul 2015 19:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32366 invoked from network); 14 Jul 2015 19:17:29 -0000
Message-ID: <6439170.QNVfc3SXO1@arcadia>
User-Agent: KMail/4.14.3 (Linux/3.18.9-gentoo; KDE/4.14.3; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart10361852.P8LH7roLUG"
Content-Transfer-Encoding: 7Bit
Cc: cve-assign@mitre.org
Date: Tue, 14 Jul 2015 21:17:04 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] siege: off-by-one in load_conf()
To: oss-security@lists.openwall.com

--nextPart10361852.P8LH7roLUG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Description:
Siege is an http load testing and benchmarking utility.

During the test of a webserver, I hit a segmentation fault. I recompiled 
siege with ASan and it clearly show an off-by-one in load_conf(). The issue 
is reproducible without passing any arguments to the binary.
The complete output:

ago@willoughby ~ # siege
===============================================
==================
==488==ERROR: AddressSanitizer: heap-buffer-overflow on address 
0x60200000d7f1 at pc 0x00000051ab64 bp 0x7ffcc3d19a70 sp 
0x7ffcc3d19a68
READ of size 1 at 0x60200000d7f1 thread T0
#0 0x51ab63 in load_conf /var/tmp/portage/app-
benchmarks/siege-3.1.0/work/siege-3.1.0/src/init.c:263:12
#1 0x515486 in init_config /var/tmp/portage/app-
benchmarks/siege-3.1.0/work/siege-3.1.0/src/init.c:96:7
#2 0x5217b9 in main /var/tmp/portage/app-
benchmarks/siege-3.1.0/work/siege-3.1.0/src/main.c:324:7
#3 0x7fb2b1b93aa4 in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.20-r2/work/glibc-2.20/csu/libc-start.c:289
#4 0x439426 in _start (/usr/bin/siege+0x439426)

0x60200000d7f1 is located 0 bytes to the right of 1-byte region 
[0x60200000d7f0,0x60200000d7f1)
allocated by thread T0 here:
#0 0x4c03e2 in __interceptor_malloc /var/tmp/portage/sys-
devel/llvm-3.6.1/work/llvm-3.6.1.src/projects/compiler-
rt/lib/asan/asan_malloc_linux.cc:40:3
#1 0x7fb2b1bf31e9 in __strdup /var/tmp/portage/sys-libs/glibc-2.20-
r2/work/glibc-2.20/string/strdup.c:42

SUMMARY: AddressSanitizer: heap-buffer-overflow /var/tmp/portage/app-
benchmarks/siege-3.1.0/work/siege-3.1.0/src/init.c:263 load_conf
Shadow bytes around the buggy address:
0x0c047fff9aa0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
0x0c047fff9ab0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
0x0c047fff9ac0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
0x0c047fff9ad0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
0x0c047fff9ae0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c047fff9af0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa[01]fa
0x0c047fff9b00: fa fa 03 fa fa fa fd fd fa fa fd fa fa fa fd fd                                                                                                                     
0x0c047fff9b10: fa fa fd fa fa fa fd fa fa fa fd fa fa fa fd fd                                                                                                                     
0x0c047fff9b20: fa fa fd fd fa fa fd fa fa fa fd fa fa fa fd fa                                                                                                                     
0x0c047fff9b30: fa fa fd fa fa fa fd fd fa fa fd fa fa fa fd fa                                                                                                                     
0x0c047fff9b40: fa fa fd fa fa fa fd fa fa fa fd fa fa fa fd fd                                                                                                                     
Shadow byte legend (one shadow byte represents 8 application bytes):                                                                                                                
Addressable: 00                                                                                                                                                                     
Partially addressable: 01 02 03 04 05 06 07                                                                                                                                         
Heap left redzone: fa                                                                                                                                                               
Heap right redzone: fb                                                                                                                                                              
Freed heap region: fd                                                                                                                                                               
Stack left redzone: f1                                                                                                                                                              
Stack mid redzone: f2                                                                                                                                                               
Stack right redzone: f3                                                                                                                                                             
Stack partial redzone: f4                                                                                                                                                           
Stack after return: f5                                                                                                                                                              
Stack use after scope: f8                                                                                                                                                           
Global redzone: f9                                                                                                                                                                  
Global init order: f6                                                                                                                                                               
Poisoned by user: f7                                                                                                                                                                
Container overflow: fc                                                                                                                                                              
Array cookie: ac                                                                                                                                                                    
Intra object redzone: bb                                                                                                                                                            
ASan internal: fe                                                                                                                                                                   
Left alloca redzone: ca                                                                                                                                                             
Right alloca redzone: cb                                                                                                                                                            
==488==ABORTING                                                                                                                                                                     
Affected version:                                                                                                                                                                   
3.1.0 (and maybe past versions).                                                                                                                                                    
                                                                                                                                                                                    
Fixed version:                                                                                                                                                                      
Not available.                                                                                                                                                                      
                                                                                                                                                                                    
Commit fix:                                                                                                                                                                         
Not available.                                                                                                                                                                      
                                                                                                                                                                                    
Credit:                                                                                                                                                                             
This bug was discovered by Agostino Sarubbo of Gentoo.                                                                                                                              

CVE:
Not assigned.

Timeline:
2015-06-09: bug discovered
2015-06-10: bug reported privately to upstream
2015-07-13: no upstream response
2015-07-14: advisory release

Permalink:
https://blogs.gentoo.org/ago/2015/07/14/siege-off-by-one-in-load_conf


@MITRE:
If you think this deserves a CVE, please assign one.
Thanks.

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart10361852.P8LH7roLUG--

