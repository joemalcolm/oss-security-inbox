X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2129" "Monday" "10" "July" "2017" "09:12:19" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<458110.442009882-sendEmail@localhost>" "62" "[oss-security] xar: NULL pointer dereference in xar_get_path (util.c)" nil nil nil "7" "2017071009:12:19" "[oss-security] xar: NULL pointer dereference in xar_get_path (util.c)" (number mark "U       ago@gentoo.o Jul 10   62/2129  " thread-indent "\"[oss-security] xar: NULL pointer dereference in xar_get_path (util.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15822 invoked by uid 550); 10 Jul 2017 09:12:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14150 invoked from network); 10 Jul 2017 09:12:35 -0000
Message-ID: <458110.442009882-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Jul 2017 09:12:19 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-36786.1626009507"
Subject: [oss-security] xar: NULL pointer dereference in xar_get_path (util.c)

------MIME delimiter for sendEmail-36786.1626009507
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
xar is an easily extensible archive format.

The complete ASan output of the issue:

# xar -t -f $FILE
==5525==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f075cfb35f6 bp 0x7fff705167b0 sp 0x7fff70515f38 T0)
==5525==The signal is caused by a READ memory access.
==5525==Hint: address points to the zero page.
    #0 0x7f075cfb35f5 in strlen /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/string/../sysdeps/x86_64/strlen.S:76
    #1 0x45f5ef in __strdup /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/asan_interceptors.cc:562
    #2 0x7f075decebc8 in xar_get_path /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/lib/util.c:95:8
    #3 0x523f93 in print_file /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/src/xar.c:214:16
    #4 0x513f07 in list /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/src/xar.c:1524:4
    #5 0x513f07 in main /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/src/xar.c:2666
    #6 0x7f075cf55680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #7 0x41af38 in _init (/usr/bin/xar+0x41af38)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/string/../sysdeps/x86_64/strlen.S:76 in strlen
==5525==ABORTING
Affected version:
1.6.1

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-11125

Reproducer:
https://github.com/asarubbo/poc/blob/master/00287-xar-nullptr-xar_get_path

Timeline:
2017-06-17: bug discovered and reported to upstream
2017-06-28: blog post about the issue
2017-07-10: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/06/28/xar-null-pointer-dereference-in-xar_get_path-util-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-36786.1626009507--

