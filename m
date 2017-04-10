X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3630" "Monday" "10" "April" "2017" "07:30:15" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<483530.584347562-sendEmail@localhost>" "74" "[oss-security] elfutils: memory allocation failure in __libelf_decompress (elf_compress.c)" nil nil nil "4" "2017041007:30:15" "[oss-security] elfutils: memory allocation failure in __libelf_decompress (elf_compress.c)" (number mark "U       ago@gentoo.o Apr 10   74/3630  " thread-indent "\"[oss-security] elfutils: memory allocation failure in __libelf_decompress (elf_compress.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22377 invoked by uid 550); 10 Apr 2017 07:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22017 invoked from network); 10 Apr 2017 07:30:32 -0000
Message-ID: <483530.584347562-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:30:15 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-847036.03324397"
Subject: [oss-security] elfutils: memory allocation failure in __libelf_decompress (elf_compress.c)

------MIME delimiter for sendEmail-847036.03324397
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
elfutils is a set of libraries/utilities to handle ELF objects (drop in replacement for libelf).

A fuzz on eu-readelf showed a memory allocation failure. Will follow a feedback from upstream:

That is slightly tricky. We do have to trust the input data to give us the expected output size. We won’t know if that was correct till we decompressed the input. We do actually double check the given 
output size was correct at the end of the decompression. But we could catch some really bogus sizes before trying to allocate a giant amount of memory and decompressing stuff for nothing (like in this 
case).

The complete ASan output:

# eu-readelf -a $FILE
==1927==WARNING: AddressSanitizer failed to allocate 0x280065041580 bytes
==1927==AddressSanitizer's allocator is terminating the process instead of returning 0
==1927==If you don't like this behavior set allocator_may_return_null=1
==1927==AddressSanitizer CHECK failed: /tmp/portage/sys-devel/gcc-6.3.0/work/gcc-6.3.0/libsanitizer/sanitizer_common/sanitizer_allocator.cc:145 "((0)) != (0)" (0x0, 0x0)
    #0 0x7f85fc3a741d  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.3.0/libasan.so.3+0xcb41d)
    #1 0x7f85fc3ad063 in __sanitizer::CheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) (/usr/lib/gcc/x86_64-pc-linux-gnu/6.3.0/libasan.so.3+0xd1063)
    #2 0x7f85fc3ab226  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.3.0/libasan.so.3+0xcf226)
    #3 0x7f85fc3016a4  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.3.0/libasan.so.3+0x256a4)
    #4 0x7f85fc39e265 in malloc (/usr/lib/gcc/x86_64-pc-linux-gnu/6.3.0/libasan.so.3+0xc2265)
    #5 0x7f85fb88dd1e in __libelf_decompress /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/libelf/elf_compress.c:214
    #6 0x7f85fb88e359 in __libelf_decompress_elf /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/libelf/elf_compress.c:288
    #7 0x7f85fb89132e in elf_compress /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/libelf/elf_compress.c:479
    #8 0x41f933 in handle_hash /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/src/readelf.c:3327
    #9 0x4680f7 in process_elf_file /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/src/readelf.c:898
    #10 0x47ae65 in process_dwflmod /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/src/readelf.c:690
    #11 0x7f85fbe3a094 in dwfl_getmodules /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/libdwfl/dwfl_getmodules.c:82
    #12 0x4365f2 in process_file /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/src/readelf.c:789
    #13 0x405e50 in main /tmp/portage/dev-libs/elfutils-0.168/work/elfutils-0.168/src/readelf.c:305
    #14 0x7f85fa45878f in __libc_start_main (/lib64/libc.so.6+0x2078f)
    #15 0x406cd8 in _start (/usr/bin/eu-readelf+0x406cd8)

Affected version:
0.168

Fixed version:
0.169 (not released atm)

Commit fix:
https://sourceware.org/ml/elfutils-devel/2017-q1/msg00114.html

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7609

Reproducer:
https://github.com/asarubbo/poc/blob/master/00227-elfutils-memallocfailure

Timeline:
2017-03-24: bug discovered and reported to upstream
2017-04-04: blog post about the issue
2017-04-09: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/03/elfutils-memory-allocation-failure-in-__libelf_decompress-elf_compress-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-847036.03324397--

