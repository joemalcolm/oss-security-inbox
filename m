X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3071" "Saturday" "30" "September" "2017" "17:02:40" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<991074.005930813-sendEmail@localhost>" "69" "[oss-security] binutils: NULL pointer dereference in scan_unit_for_symbols (dwarf2.c)" nil nil nil "9" "2017093017:02:40" "[oss-security] binutils: NULL pointer dereference in scan_unit_for_symbols (dwarf2.c)" (number mark "U       ago@gentoo.o Sep 30   69/3071  " thread-indent "\"[oss-security] binutils: NULL pointer dereference in scan_unit_for_symbols (dwarf2.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32491 invoked by uid 550); 30 Sep 2017 17:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32372 invoked from network); 30 Sep 2017 17:02:57 -0000
Message-ID: <991074.005930813-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sat, 30 Sep 2017 17:02:40 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-841124.560291977"
Subject: [oss-security] binutils: NULL pointer dereference in scan_unit_for_symbols (dwarf2.c)

------MIME delimiter for sendEmail-841124.560291977
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
binutils is a set of tools necessary to build programs.

The complete ASan output of the issue:

# nm -A -a -l -S -s --special-syms --synthetic --with-symbol-versions -D $FILE
==491==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f6e3316d573 bp 0x7ffda2ee9e50 sp 0x7ffda2ee9c60 T0)
==491==The signal is caused by a READ memory access.
==491==Hint: address points to the zero page.
    #0 0x7f6e3316d572 in scan_unit_for_symbols /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3213:13
    #1 0x7f6e331769e4 in comp_unit_maybe_decode_line_info /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3617:9
    #2 0x7f6e331769e4 in comp_unit_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3643
    #3 0x7f6e331707c8 in _bfd_dwarf2_find_nearest_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:4601:11
    #4 0x7f6e330b120b in _bfd_elf_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elf.c:8694:10
    #5 0x517c83 in print_symbol /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1003:9
    #6 0x51542d in print_symbols /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1084:7
    #7 0x51542d in display_rel_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1200
    #8 0x510f56 in display_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1318:7
    #9 0x50faae in main /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1792:12
    #10 0x7f6e31ff6680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #11 0x41ac18 in _init (/usr/x86_64-pc-linux-gnu/binutils-bin/git/nm+0x41ac18)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3213:13 in scan_unit_for_symbols
==491==ABORTING

Affected version:
2.29.51.20170921 and maybe past releases

Fixed version:
N/A

Commit fix:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=0d76029f92182c3682d8be2c833d45bc9a2068fe

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14940

Reproducer:
https://github.com/asarubbo/poc/blob/master/00369-binutils-NULLptr-scan_unit_for_symbols

Timeline:
2017-09-21: bug discovered and reported to upstream
2017-09-24: upstream released a patch
2017-09-26: blog post about the issue
2017-09-29: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/26/binutils-null-pointer-dereference-in-scan_unit_for_symbols-dwarf2-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-841124.560291977--

