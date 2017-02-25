X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6187" "Saturday" "25" "February" "2017" "11:36:05" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<670171.970592008-sendEmail@localhost>" "133" "[oss-security] gnu-paxutils: multiple crashes" "^Date:" nil nil "2" "2017022511:36:05" "[oss-security] gnu-paxutils: multiple crashes" (number mark "U       ago@gentoo.o Feb 25  133/6187  " thread-indent "\"[oss-security] gnu-paxutils: multiple crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17575 invoked by uid 550); 25 Feb 2017 11:36:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17543 invoked from network); 25 Feb 2017 11:36:23 -0000
Message-ID: <670171.970592008-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-181156.18809043"
Date: Sat, 25 Feb 2017 11:36:05 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] gnu-paxutils: multiple crashes
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-181156.18809043
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Description:
GNU paxutils is a suite of archive utilities: it will provide cpio, tar and POSIX pax archivers.

A fuzzing on tar and pax shows multiple crashes.
I really don’t know if atm those tools are used somewhere.

Details:

# tar -t -f $FILE
buffer.c:1480:40: runtime error: index 7168 out of bounds for type 'char [512]'
SUMMARY: AddressSanitizer: undefined-behavior buffer.c:1480:40 in 
/bins/tar: Record size of archive appears to be 14 blocks (20 expected)
/bins/tar: Hmm, this doesn't look like a tar archive
/bins/tar: Skipping to next file header

reading.c:327:19: runtime error: member access within null pointer of type 'union block'
SUMMARY: AddressSanitizer: undefined-behavior reading.c:327:19 in 
reading.c:327:19: runtime error: member access within null pointer of type 'struct sparse_header'
SUMMARY: AddressSanitizer: undefined-behavior reading.c:327:19 in 

ASAN:DEADLYSIGNAL
=================================================================
==9542==ERROR: AddressSanitizer: SEGV on unknown address 0x0000000001f8 (pc 0x000000570b4a bp 0x7ffd7ab13eb0 sp 0x7ffd7ab13e90 T0)
==9542==The signal is caused by a READ memory access.
==9542==Hint: address points to the zero page.
    #0 0x570b49 in skip_extended_headers /root/paxutils-2.4h/src/reading.c:327:33
    #1 0x55721d in list_archive /root/paxutils-2.4h/src/list.c:120:7
    #2 0x5718ef in read_and /root/paxutils-2.4h/src/reading.c:406:5
    #3 0x57c746 in main /root/paxutils-2.4h/src/./tar.c:1508:7
    #4 0x7f5c524fc78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x41a498 in _start (/root/bins/tar+0x41a498)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /root/paxutils-2.4h/src/reading.c:327:33 in skip_extended_headers
==9542==ABORTING

Reproducer:
https://github.com/asarubbo/poc/blob/master/00178-gnupaxutils-tar-segv

Obviously, the runtime error “member access within null pointer…” is the ubsan’s way to print what asan subsequently said as SEGV, so it is the same issue.

# pax -f $FILE
==10938==ERROR: AddressSanitizer: global-buffer-overflow on address 0x00000141615f at pc 0x00000052853e bp 0x7ffed94bdc30 sp 0x7ffed94bdc28
READ of size 1 at 0x00000141615f thread T0
    #0 0x52853d in read_in_tar_header /root/paxutils-2.4h/src/fmttar.c:363:8
    #1 0x50dd65 in read_in_header /root/paxutils-2.4h/src/copyin.c:99:7
    #2 0x50f675 in process_copy_in /root/paxutils-2.4h/src/copyin.c:236:7
    #3 0x50d164 in main /root/paxutils-2.4h/src/./pax.c:485:3
    #4 0x7fd70e06478f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x41a448 in _start (/usr/bin/pax+0x41a448)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00179-gnupaxutils-pax-globaloverflow

# pax -f $FILE
==21061==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x60200000efb9 at pc 0x00000048041a bp 0x7ffea3351e10 sp 0x7ffea33515c0
READ of size 10 at 0x60200000efb9 thread T0
    #0 0x480419 in __interceptor_strcmp 
/tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:284
    #1 0x50f969 in process_copy_in /root/paxutils-2.4h/src/copyin.c:261:11
    #2 0x50d164 in main /root/paxutils-2.4h/src/./pax.c:485:3
    #3 0x7fe2d680178f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x41a448 in _start (/usr/bin/pax+0x41a448)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00180-gnupaxutils-pax-heapoverflow

# pax -f $FILE
fmttar.c:450:11: runtime error: index 6 out of bounds for type 'char [6]'                                                                                                                      
SUMMARY: AddressSanitizer: undefined-behavior fmttar.c:450:11

==7159==ERROR: AddressSanitizer: memcpy-param-overlap: memory ranges [0x7fe6f8001420,0x7fe6f800161f) and [0x7fe6f8001421, 0x7fe6f8001620) overlap
    #0 0x4bc091 in __asan_memcpy /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/asan_interceptors.cc:413
    #1 0x526da0 in read_in_tar_header /root/paxutils-2.4h/src/fmttar.c:265:4
    #2 0x50dd65 in read_in_header /root/paxutils-2.4h/src/copyin.c:99:7
    #3 0x50f675 in process_copy_in /root/paxutils-2.4h/src/copyin.c:236:7
    #4 0x50d164 in main /root/paxutils-2.4h/src/./pax.c:485:3
    #5 0x7fe6fae7178f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x41a448 in _start (/usr/bin/pax+0x41a448)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00181-gnupaxutils-pax-memcpyparoverlap

# pax -f $FILE
==11514==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7f8b47900220 at pc 0x00000053bf25 bp 0x7ffd949d5cc0 sp 0x7ffd949d5cb8
READ of size 1 at 0x7f8b47900220 thread T0
    #0 0x53bf24 in otoa /root/paxutils-2.4h/lib/octal.c:33:10
    #1 0x5287f5 in is_tar_header /root/paxutils-2.4h/src/fmttar.c:427:3
    #2 0x50d8d4 in read_in_header /root/paxutils-2.4h/src/copyin.c:74:27
    #3 0x50f675 in process_copy_in /root/paxutils-2.4h/src/copyin.c:236:7
    #4 0x50d164 in main /root/paxutils-2.4h/src/./pax.c:485:3
    #5 0x7f8b4a75378f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x41a448 in _start (/usr/bin/pax+0x41a448)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00182-gnupaxutils-pax-stackoverflow

Affected version:
2.4h

Fixed version:
N/A

Commit fix:
N/A

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-02-17: bugs discovered
2017-02-21: bugs reported to upstream
2017-02-21: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.
The email to upstream was rejected.

Permalink:
https://blogs.gentoo.org/ago/2017/02/21/gnu-paxutils-multiple-crashes

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-181156.18809043--

