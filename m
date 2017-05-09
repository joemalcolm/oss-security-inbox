X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3023" "Tuesday" "9" "May" "2017" "08:21:41" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<997258.47630495-sendEmail@localhost>" "73" "[oss-security] lrzip: invalid memory read in lzo_decompress_buf (stream.c)" nil nil nil "5" "2017050908:21:41" "[oss-security] lrzip: invalid memory read in lzo_decompress_buf (stream.c)" (number mark "U       ago@gentoo.o May  9   73/3023  " thread-indent "\"[oss-security] lrzip: invalid memory read in lzo_decompress_buf (stream.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11361 invoked by uid 550); 9 May 2017 08:22:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10185 invoked from network); 9 May 2017 08:21:57 -0000
Message-ID: <997258.47630495-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Tue, 9 May 2017 08:21:41 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-326896.676867367"
Subject: [oss-security] lrzip: invalid memory read in lzo_decompress_buf (stream.c)

------MIME delimiter for sendEmail-326896.676867367
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
lrzip is a compression utility that excels at compressing large files.

The complete ASan output of the issue:

# lrzip -t $FILE
==3311==ERROR: AddressSanitizer: SEGV on unknown address 0x602000010000 (pc 0x7f75cabe8834 bp 0x62100002c11f sp 0x7f7085ab4d78 T5)
==3311==The signal is caused by a READ memory access.
    #0 0x7f75cabe8833 in lzo1x_decompress /tmp/portage/dev-libs/lzo-2.08/work/lzo-2.08/src/lzo1x_d.ch:108
    #1 0x54af2f in lzo_decompress_buf /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:590:10
    #2 0x54af2f in ucompthread /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:1525
    #3 0x7f75ca2944a3 in start_thread /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/nptl/pthread_create.c:333
    #4 0x7f75c95bf66c in clone /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/misc/../sysdeps/unix/sysv/linux/x86_64/clone.S:109

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/dev-libs/lzo-2.08/work/lzo-2.08/src/lzo1x_d.ch:108 in lzo1x_decompress
Thread T5 created by T0 here:
    #0 0x42d49d in pthread_create /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/asan_interceptors.cc:245
    #1 0x53e70f in create_pthread /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:133:6
    #2 0x53e70f in fill_buffer /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:1673
    #3 0x53e70f in read_stream /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:1755
    #4 0x531075 in unzip_literal /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:162:16
    #5 0x531075 in runzip_chunk /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:320
    #6 0x531075 in runzip_fd /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:382
    #7 0x519b41 in decompress_file /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/lrzip.c:826:6
    #8 0x511074 in main /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/main.c:669:4
    #9 0x7f75c94f878f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289

Dunno wtf decompression type to use!
==3311==AddressSanitizer: while reporting a bug found another one. Ignoring.
Fatal error - exiting

Affected version:
0.631

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8845

Reproducer:
https://github.com/asarubbo/poc/blob/master/00230-lrzip-invalidread-lzo1x_decompress

Timeline:
2017-03-24: bug discovered and reported to upstream
2017-05-07: blog post about the issue
2017-05-08: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/07/lrzip-invalid-memory-read-in-lzo_decompress_buf-stream-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-326896.676867367--

