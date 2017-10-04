X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2927" "Wednesday" "4" "October" "2017" "15:44:46" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<390386.279297189-sendEmail@localhost>" "68" "[oss-security] binutils: divide-by-zero in decode_line_info (dwarf2.c)" nil nil nil "10" "2017100415:44:46" "[oss-security] binutils: divide-by-zero in decode_line_info (dwarf2.c)" (number mark "U       ago@gentoo.o Oct  4   68/2927  " thread-indent "\"[oss-security] binutils: divide-by-zero in decode_line_info (dwarf2.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2025 invoked by uid 550); 4 Oct 2017 15:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1920 invoked from network); 4 Oct 2017 15:45:02 -0000
Message-ID: <390386.279297189-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Wed, 4 Oct 2017 15:44:46 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-59877.8643916411"
Subject: [oss-security] binutils: divide-by-zero in decode_line_info (dwarf2.c)

------MIME delimiter for sendEmail-59877.8643916411
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
binutils is a set of tools necessary to build programs.

The complete ASan output of the issue:

 # nm -A -a -l -S -s --special-syms --synthetic --with-symbol-versions -D $FILE
==11125==ERROR: AddressSanitizer: FPE on unknown address 0x7f5e01fd42e5 (pc 0x7f5e01fd42e5 bp 0x7ffdaa5de290 sp 0x7ffdaa5de0e0 T0)
    #0 0x7f5e01fd42e4 in decode_line_info /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c
    #1 0x7f5e01fe192b in comp_unit_maybe_decode_line_info /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3608:26
    #2 0x7f5e01fe192b in comp_unit_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:3643
    #3 0x7f5e01fde94f in _bfd_dwarf2_find_nearest_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c:4755:11
    #4 0x7f5e01f1c20b in _bfd_elf_find_line /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elf.c:8694:10
    #5 0x517c83 in print_symbol /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1003:9
    #6 0x51542d in print_symbols /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1084:7
    #7 0x51542d in display_rel_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1200
    #8 0x510f56 in display_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1318:7
    #9 0x50faae in main /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1792:12
    #10 0x7f5e00e61680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #11 0x41ac18 in _init (/usr/x86_64-pc-linux-gnu/binutils-bin/git/nm+0x41ac18)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: FPE /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/dwarf2.c in decode_line_info
==11125==ABORTING

Affected version:
2.29.51.20170921 and maybe past releases

Fixed version:
N/A

Commit fix:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=d8010d3e75ec7194a4703774090b27486b742d48

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-15025

Reproducer:
https://github.com/asarubbo/poc/blob/master/00372-binutils-FPE-decode_line_info

Timeline:
2017-09-22: bug discovered and reported to upstream
2017-09-24: upstream released a patch
2017-10-03: blog post about the issue
2017-10-04: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core
Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/10/03/binutils-divide-by-zero-in-decode_line_info-dwarf2-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-59877.8643916411--

