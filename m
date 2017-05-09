X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2348" "Tuesday" "9" "May" "2017" "08:20:53" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<747001.945364417-sendEmail@localhost>" "66" "[oss-security] lrzip: NULL pointer dereference in join_pthread (stream.c)" nil nil nil "5" "2017050908:20:53" "[oss-security] lrzip: NULL pointer dereference in join_pthread (stream.c)" (number mark "U       ago@gentoo.o May  9   66/2348  " thread-indent "\"[oss-security] lrzip: NULL pointer dereference in join_pthread (stream.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6104 invoked by uid 550); 9 May 2017 08:21:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5965 invoked from network); 9 May 2017 08:21:10 -0000
Message-ID: <747001.945364417-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Tue, 9 May 2017 08:20:53 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-339841.650872589"
Subject: [oss-security] lrzip: NULL pointer dereference in join_pthread (stream.c)

------MIME delimiter for sendEmail-339841.650872589
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
lrzip is a compression utility that excels at compressing large files.

The complete ASan output of the issue:

# lrzip -t $FILE
==1329==ERROR: AddressSanitizer: SEGV on unknown address 0x0000000002d0 (pc 0x7fa931ad7660 bp 0x7ffff4a30c30 sp 0x7ffff4a309f8 T0)
==1329==The signal is caused by a READ memory access.
==1329==Hint: address points to the zero page.
    #0 0x7fa931ad765f  /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/nptl/pthread_join.c:34
    #1 0x53ee0d in join_pthread /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:147:6
    #2 0x53ee0d in fill_buffer /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:1697
    #3 0x53ee0d in read_stream /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/stream.c:1755
    #4 0x531075 in unzip_literal /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:162:16
    #5 0x531075 in runzip_chunk /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:320
    #6 0x531075 in runzip_fd /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/runzip.c:382
    #7 0x519b41 in decompress_file /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/lrzip.c:826:6
    #8 0x511074 in main /tmp/portage/app-arch/lrzip-0.631/work/lrzip-0.631/main.c:669:4
    #9 0x7fa930d3a78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #10 0x41abf8 in _init (/usr/bin/lrzip+0x41abf8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/nptl/pthread_join.c:34 
==1329==ABORTING

Affected version:
0.631

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8843

Reproducer:
https://github.com/asarubbo/poc/blob/master/00231-lrzip-nullptr-join_pthread

Timeline:
2017-03-24: bug discovered and reported to upstream
2017-05-07: blog post about the issue
2017-05-08: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/07/lrzip-null-pointer-dereference-in-join_pthread-stream-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-339841.650872589--

