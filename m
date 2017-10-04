X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3134" "Wednesday" "4" "October" "2017" "15:43:42" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<568660.939901264-sendEmail@localhost>" "71" "[oss-security] binutils: NULL pointer dereference in concat_filename (dwarf2.c)" nil nil nil "10" "2017100415:43:42" "[oss-security] binutils: NULL pointer dereference in concat_filename (dwarf2.c)" (number mark "U       ago@gentoo.o Oct  4   71/3134  " thread-indent "\"[oss-security] binutils: NULL pointer dereference in concat_filename (dwarf2.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26337 invoked by uid 550); 4 Oct 2017 15:43:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26252 invoked from network); 4 Oct 2017 15:43:59 -0000
Message-ID: <568660.939901264-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 4 Oct 2017 15:43:42 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-483103.286082954"
Subject: [oss-security] binutils: NULL pointer dereference in concat_filename (dwarf2.c)

------MIME delimiter for sendEmail-483103.286082954
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
binutils is a set of tools necessary to build programs.

The complete ASan output of the issue:

# nm -A -a -l -S -s --special-syms --synthetic --with-symbol-versions -D $FILE
==3765==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x0000006a7376 bp 0x7ffd5f9a3d50 sp 0x7ffd5f9a3d20 T0)
==3765==The signal is caused by a READ memory access.
==3765==Hint: address points to the zero page.
    #0 0x6a7375 in concat_filename /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:1601:8
    #1 0x696e83 in decode_line_info /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:2258:44
    #2 0x6a2ab8 in comp_unit_maybe_decode_line_info /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3642:26
    #3 0x6a2ab8 in comp_unit_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3677
    #4 0x6a0104 in _bfd_dwarf2_find_nearest_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:4789:11
    #5 0x5f330e in _bfd_elf_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elf.c:8695:10
    #6 0x5176a3 in print_symbol /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1003:9
    #7 0x514e4d in print_symbols /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1084:7
    #8 0x514e4d in display_rel_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1200
    #9 0x510976 in display_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1318:7
    #10 0x50f4ce in main /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1792:12
    #11 0x7f0f4a74b680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #12 0x41a638 in chmod (/usr/x86_64-pc-linux-gnu/binutils-bin/git/nm+0x41a638)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:1601:8 in concat_filename
==3765==ABORTING

Affected version:
2.29.51.20170924 and maybe past releases

Fixed version:
N/A

Commit fix:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=c361faae8d964db951b7100cada4dcdc983df1bf

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-15023

Reproducer:
https://github.com/asarubbo/poc/blob/master/00374-binutils-NULLptr-concat_filename

Timeline:
2017-09-25: bug discovered and reported to upstream
2017-09-25: upstream released a patch
2017-10-03: blog post about the issue
2017-10-04: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core
Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/10/03/binutils-null-pointer-dereference-in-concat_filename-dwarf2-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-483103.286082954--

