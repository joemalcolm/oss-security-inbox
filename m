X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6895" "Wednesday" "6" "September" "2017" "07:32:24" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<489609.792220534-sendEmail@localhost>" "121" "[oss-security] openjpeg: heap-based buffer overflow in opj_write_bytes_LE (cio.c)" nil nil nil "9" "2017090607:32:24" "[oss-security] openjpeg: heap-based buffer overflow in opj_write_bytes_LE (cio.c)" (number mark "U       ago@gentoo.o Sep  6  121/6895  " thread-indent "\"[oss-security] openjpeg: heap-based buffer overflow in opj_write_bytes_LE (cio.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26077 invoked by uid 550); 6 Sep 2017 07:32:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25963 invoked from network); 6 Sep 2017 07:32:41 -0000
Message-ID: <489609.792220534-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 6 Sep 2017 07:32:24 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-351668.478994728"
Subject: [oss-security] openjpeg: heap-based buffer overflow in opj_write_bytes_LE (cio.c)

------MIME delimiter for sendEmail-351668.478994728
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
openjpeg is an open-source JPEG 2000 library.

The complete ASan output of the issue:

# opj_compress -I -cinema4K -n 1 -i $FILE -o null.jp2
==133214==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61100000012b at pc 0x7f221efde81a bp 0x7ffd4c1d9ad0 sp 0x7ffd4c1d9ac8           
WRITE of size 1 at 0x61100000012b thread T0                                                                                                          
    #0 0x7f221efde819 in opj_write_bytes_LE /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/cio.c:67:23               
    #1 0x7f221f0261b8 in opj_j2k_write_sot /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:4237:5               
    #2 0x7f221f0261b8 in opj_j2k_write_all_tile_parts /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:11604     
    #3 0x7f221f0261b8 in opj_j2k_post_write_tile /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:11273          
    #4 0x7f221f0240fd in opj_j2k_encode /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:11014:15                
    #5 0x7f221f06edf8 in opj_encode /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/openjpeg.c:775:20                 
    #6 0x50b9a2 in main /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/bin/jp2/opj_compress.c:1990:36                            
    #7 0x7f221da06680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289                       
    #8 0x41bc78 in _start (/usr/bin/opj_compress+0x41bc78)                                                                                           
                                                                                                                                                     
0x61100000012b is located 0 bytes to the right of 235-byte region [0x611000000040,0x61100000012b)                                                    
allocated by thread T0 here:                                                                                                                         
    #0 0x4d1628 in malloc /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:66         
    #1 0x7f221f11a8a9 in opj_malloc /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/opj_malloc.c:196:12               
    #2 0x7f221f051260 in opj_j2k_update_rates /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:5156:22
    #3 0x7f221f027f8c in opj_j2k_exec /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:7940:33
    #4 0x7f221f027f8c in opj_j2k_start_compress /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/j2k.c:11089
    #5 0x7f221f059260 in opj_jp2_start_compress /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/jp2.c:2474:12
    #6 0x7f221f06ec9c in opj_start_compress /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/openjpeg.c:758:20
    #7 0x50b96f in main /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/bin/jp2/opj_compress.c:1967:20
    #8 0x7f221da06680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /var/tmp/portage/media-libs/openjpeg-2.2.0/work/openjpeg-2.2.0/src/lib/openjp2/cio.c:67:23 in opj_write_bytes_LE
Shadow bytes around the buggy address:
  0x0c227fff7fd0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c227fff7fe0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c227fff7ff0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c227fff8000: fa fa fa fa fa fa fa fa 00 00 00 00 00 00 00 00
  0x0c227fff8010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0c227fff8020: 00 00 00 00 00[03]fa fa fa fa fa fa fa fa fa fa
  0x0c227fff8030: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff8040: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff8050: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff8060: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c227fff8070: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==133214==ABORTING
CINEMA 4K profile activated
Other options specified could be overridden
[WARNING] JPEG 2000 Profile-4 (4k dc profile) requires:
Number of decomposition levels >= 1 &&  Number of decomposition levels forced to 1 (rather than 2)
[WARNING] JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:
Maximum 1302083 compressed bytes @ 24fps
As no rate has been given, this limit will be used.
[WARNING] JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:
Maximum 1041666 compressed bytes @ 24fps
As no rate has been given, this limit will be used.
[WARNING] JPEG 2000 Profile-3 (2k dc profile) requires:
Precision of each component shall be 12 bits unsigned-> At least component 0 of input image (8 bits, unsigned) is not compliant
-> Non-profile-3 codestream will be generated
[INFO] tile number 1 / 1

Affected version:
2.2.0

Fixed version:
N/A

Commit fix:
https://github.com/uclouvain/openjpeg/commit/4241ae6fbbf1de9658764a80944dc8108f2b4154

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14152

Reproducer:
https://github.com/asarubbo/poc/blob/master/00317-openjpeg-heapoverflow-opj_write_bytes_LE

Timeline:
2017-08-15: bug discovered and reported to upstream
2017-08-15: upstream released a fix
2017-08-16: blog post about the issue
2017-09-05: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/16/openjpeg-heap-based-buffer-overflow-in-opj_write_bytes_le-cio-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-351668.478994728--

