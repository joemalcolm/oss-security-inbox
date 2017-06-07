X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3811" "Wednesday" "7" "June" "2017" "12:56:02" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<998404.854533391-sendEmail@localhost>" "100" "[oss-security] ytnef: heap-based buffer overflow in DecompressRTF (ytnef.c)" "^Date:" nil nil "6" "2017060712:56:02" "[oss-security] ytnef: heap-based buffer overflow in DecompressRTF (ytnef.c)" (number mark "        ago@gentoo.o Jun  7  100/3811  " thread-indent "\"[oss-security] ytnef: heap-based buffer overflow in DecompressRTF (ytnef.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7972 invoked by uid 550); 7 Jun 2017 12:56:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7871 invoked from network); 7 Jun 2017 12:56:17 -0000
Message-ID: <998404.854533391-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-413729.888693528"
Date: Wed, 7 Jun 2017 12:56:02 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ytnef: heap-based buffer overflow in DecompressRTF (ytnef.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-413729.888693528
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
ytnef is Yeraze’s TNEF Stream Reader – for winmail.dat files.

The complete ASan output of the issue:

# ytnefprint $FILE
==22808==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61800000039e at pc 0x7f6b57c2fcb8 bp 0x7ffd8ca179d0 sp 0x7ffd8ca179c8
READ of size 1 at 0x61800000039e thread T0
    #0 0x7f6b57c2fcb7 in DecompressRTF /tmp/ytnef-1.9.2/lib/ytnef.c:1549:31
    #1 0x7f6b57c20195 in MAPIPrint /tmp/ytnef-1.9.2/lib/ytnef.c:1417:39
    #2 0x508f50 in PrintTNEF /tmp/ytnef-1.9.2/ytnefprint/main.c:169:5
    #3 0x50882e in main /tmp/ytnef-1.9.2/ytnefprint/main.c:84:5
    #4 0x7f6b56d3f78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x419c38 in _start (/usr/bin/ytnefprint+0x419c38)

0x61800000039e is located 0 bytes to the right of 798-byte region [0x618000000080,0x61800000039e)
allocated by thread T0 here:
    #0 0x4cf7e0 in calloc /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_malloc_linux.cc:74
    #1 0x7f6b57c1a527 in TNEFFillMapi /tmp/ytnef-1.9.2/lib/ytnef.c:513:26
    #2 0x7f6b57c15384 in TNEFMapiProperties /tmp/ytnef-1.9.2/lib/ytnef.c:396:7
    #3 0x7f6b57c2ab47 in TNEFParse /tmp/ytnef-1.9.2/lib/ytnef.c:1184:15
    #4 0x7f6b57c299d3 in TNEFParseFile /tmp/ytnef-1.9.2/lib/ytnef.c:1042:10
    #5 0x508814 in main /tmp/ytnef-1.9.2/ytnefprint/main.c:80:9
    #6 0x7f6b56d3f78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/ytnef-1.9.2/lib/ytnef.c:1549:31 in DecompressRTF
Shadow bytes around the buggy address:
  0x0c307fff8020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c307fff8030: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c307fff8040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c307fff8050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c307fff8060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0c307fff8070: 00 00 00[06]fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c307fff8080: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c307fff8090: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c307fff80a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c307fff80b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c307fff80c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==22808==ABORTING

Affected version:
1.9.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-9474

Reproducer:
https://github.com/asarubbo/poc/blob/master/00244-ytnef-heapoverflow-DecompressRTF

Timeline:
2017-03-27: bug discovered and reported to upstream
2017-05-24: blog post about the issue
2017-06-07: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/24/ytnef-heap-based-buffer-overflow-in-decompressrtf-ytnef-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-413729.888693528--

