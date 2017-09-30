X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2986" "Saturday" "30" "September" "2017" "17:00:47" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<71149.8755003674-sendEmail@localhost>" "65" "[oss-security] binutils: memory allocation failure in _bfd_elf_slurp_version_tables (elf.c)" "^Date:" nil nil "9" "2017093017:00:47" "[oss-security] binutils: memory allocation failure in _bfd_elf_slurp_version_tables (elf.c)" (number mark "U       ago@gentoo.o Sep 30   65/2986  " thread-indent "\"[oss-security] binutils: memory allocation failure in _bfd_elf_slurp_version_tables (elf.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20235 invoked by uid 550); 30 Sep 2017 17:01:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20201 invoked from network); 30 Sep 2017 17:01:06 -0000
Message-ID: <71149.8755003674-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-986222.124499367"
Date: Sat, 30 Sep 2017 17:00:47 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] binutils: memory allocation failure in _bfd_elf_slurp_version_tables (elf.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-986222.124499367
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
binutils is a set of tools necessary to build programs.

This issue was initially discovered because the nm process eat ~230GB of ram. Later on, another testcase hits the issue and now I have a 
stracktrace.
The relevant ASan output of the issue:

# nm -A -a -l -S -s --special-syms --synthetic --with-symbol-versions -D $FILE
    #8 0x4d8de4 in malloc /var/tmp/portage/sys-libs/compiler-rt-sanitizers-5.0.0/work/compiler-rt-5.0.0.src/lib/asan/asan_malloc_linux.cc:68
    #9 0x7fd0deccb41d in _objalloc_alloc /var/tmp/portage/sys-devel/binutils-9999/work/binutils/libiberty/objalloc.c:143:22
    #10 0x7fd0de921c24 in bfd_alloc /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/opncls.c:949:9
    #11 0x7fd0de921c24 in bfd_zalloc2 /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/opncls.c:1031
    #12 0x7fd0de9b2db8 in _bfd_elf_slurp_version_tables /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elf.c:8222:2
    #13 0x7fd0de999da7 in bfd_elf64_slurp_symbol_table /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elfcode.h:1165:9
    #14 0x7fd0de9ed876 in _bfd_elf_canonicalize_dynamic_symtab /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/elf.c:8099:19
    #15 0x7fd0de935fc7 in _bfd_generic_read_minisymbols /var/tmp/portage/sys-devel/binutils-9999/work/binutils/bfd/syms.c
    #16 0x513a53 in display_rel_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1107:14
    #17 0x510f56 in display_file /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1318:7
    #18 0x50faae in main /var/tmp/portage/sys-devel/binutils-9999/work/binutils/binutils/nm.c:1792:12
    #19 0x7fd0dd934680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #20 0x41ac18 in _init (/usr/x86_64-pc-linux-gnu/binutils-bin/git/nm+0x41ac18)

Affected version:
2.29.51.20170921 and maybe past releases

Fixed version:
N/A

Commit fix:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=bd61e135492ecf624880e6b78e5fcde3c9716df6

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14938

Reproducer:
https://github.com/asarubbo/poc/blob/master/00368-binutils-memallocfailure-_bfd_elf_slurp_version_tables

Timeline:
2017-09-21: bug discovered and reported to upstream
2017-09-24: upstream released a patch
2017-09-26: blog post about the issue
2017-09-29: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/26/binutils-memory-allocation-failure-in-_bfd_elf_slurp_version_tables-elf-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-986222.124499367--

