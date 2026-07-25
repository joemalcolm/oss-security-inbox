X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/25/1
Message-ID: <c1f88423-1b9f-4e00-afe6-80a517196de3@oracle.com>
Date: Sat, 25 Jul 2026 08:32:51 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: The GNU C Library version 2.44 is now available, fixes 3 CVEs
Content-Type: text/plain; charset=utf-8

The "Security related changes" section below lists fixes for
CVE-2026-4046, CVE-2026-4437, & CVE-2026-4438.


-------- Forwarded Message --------
Subject: The GNU C Library version 2.44 is now available
Date: Sat, 25 Jul 2026 18:49:56 +0900
From: Andreas K. Huettel <dilfridge@...too.org>
Organization: Gentoo Linux
To: libc-alpha@...rceware.org, libc-announce@...rceware.org, info-gnu@....org

The GNU C Library
=================

The GNU C Library version 2.44 is now available.

The GNU C Library is used as *the* C library in the GNU system and
in GNU/Linux systems, as well as many other systems that use Linux
as the kernel.

The GNU C Library is primarily designed to be a portable and high performance C library.  It follows all relevant standards including ISO C23 and POSIX.1-2024.  It is also internationalized and has one of the most complete internationalization interfaces known.
The GNU C Library website is at http://www.gnu.org/software/libc/

Packages for the 2.44 release may be downloaded from:
         http://ftpmirror.gnu.org/libc/
         http://ftp.gnu.org/gnu/libc/

The mirror list is at http://www.gnu.org/order/ftp.html

Distributions are encouraged to track the release/* branches
corresponding to the releases they are using.  The release
branches will be updated with conservative bug fixes and new
features while retaining backwards compatibility.

NEWS for version 2.44
=====================

Major new features:

* System-wide tunables can be applied using /etc/tunables.conf and
   running ldconfig.  Specific tunable settings and the
   /etc/tunables.conf file format and path are not part of the stable
   library interfaces and may change between releases.

* A new tunable, glibc.elf.thp, is added to map read-only segments with
   Transparent Huge Pages (THP) if THP is not disabled in the kernel.  When
   glibc.elf.thp is set to 1, malloc uses the actual kernel THP mode
   instead of defaulting to madvise mode and madvise_thp will stop issuing
   MADV_HUGEPAGE if kernel THP mode is always.

* The THP page size in malloc is capped to MAX_THP_PAGESIZE.  If the THP
   page size is above MAX_THP_PAGESIZE, THP in malloc is disabled.

* Additional optimized and correctly rounded mathematical functions have
   been imported from the CORE-MATH project, in particular cosh, sinh, and
   tanh.

* Many additional improvements to existing functions have been synchronized
   from the CORE-MATH project.

* For C++26, the assert macro is now variadic, allowing more complex
   arguments containing commas (which however still must evaluate to a single
   value).

* The SVID error handling for cosh and sinh was moved to compatibility
   symbols, allowing improvements in performance.

* Static PIE is now supported for arm-*-linux-gnueabi.  It requires toolchain
   support to correctly set the expected linker options.

* On AArch64 targets that support the Guarded Control Stack extension all GCS
   operations (including status, write on shadow stack, and push to shadow
   stack) are locked after enabling GCS with ENFORCED or OVERRIDE GCS policy.
   When a GCS operation is locked, a program cannot change this operation
   status via the prctl syscall.  This prevents disabling or corrupting the
   GCS shadow stack during runtime.

* On AArch64 targets, log, exp, sin, cas, sinh, cosh, asinh, acosh, atanh
   single and double precision special cases have been vectorized for SVE and
   AdvSIMD, and vector variants of powr have been added.

* On RISC-V targets, vector extension optimized variants of memcmp, memccpy,
   memchr, memcpy, memmove, stpncpy, strcmp, strchr, strcpy, strncmp, strncpy,
   strlen, and strrchr have been added.

* On PowerPC, memchr optimized for Power10 has been re-added.

* Support for LoongArch32 has been added.

* Pre-built ld.so.cache files can be installed with ldconfig.

* A new locale has been added: hrx_BR (Hunsrik language spoken in Brazil).

Deprecated and removed features, and other changes affecting compatibility:

* Although malloc and related functions currently return pointers
   aligned to alignof (max_align_t), the documentation now says future
   versions of glibc may relax alignment requirements for small allocations.
   For example, a future malloc(1) might return a pointer with odd
   alignment, because no object of size 1 can have a fundamental
   alignment greater than 1.

* The s390-linux-gnu (31bit) configuration is no longer supported.

* The --enable-memory-tagging configure option has been removed.
   The corresponding AArch64-specific functionality that was previously
   activated by this flag has been removed as well.

* The --enable-static-nss configure option has been removed.  It had no
   effect on the build since the NSS reorganization in glibc 2.33; its only
   remaining behavior was to suppress the link-time warnings on the NSS
   interface functions in libc.a, which are now emitted unconditionally.

Security related changes:

The following CVEs were fixed in this release, details of which can be
found in the advisories directory of the release tarball:

   GLIBC-SA-2026-0005:
     gethostbyaddr and gethostbyaddr_r may incorrectly handle DNS
     response (CVE-2026-4437)

   GLIBC-SA-2026-0006:
     gethostbyaddr and gethostbyaddr_r return invalid DNS hostnames
     (CVE-2026-4438)

   GLIBC-SA-2026-0007:
     iconv crash due to assertion failure with untrusted input
     (CVE-2026-4046)

The following bugs were resolved with this release:

   [2363] libc: EOPNOTSUPP and ENOTSUP in errno.h must be different,
     according to SUSv3
   [3794] manual: iconv: //TRANSLIT and //IGNORE feature not documented
   [15792] dynamic-link: [arm] ARM dynamic linker should save/restore
     coprocessor registers
   [20331] libc: fts ignores errors from readdir()
   [20680] dynamic-link: ifunc resolver cannot access the thread pointer
     with static linking
   [22944] libc: fts cannot traverse paths which have a length longer
     than USHRT_MAX
   [25257] libc: sotruss: fix error message for '--f' argument
   [25770] locale: newlocale memory leak in LOCPATH parsing and on error
     paths
   [27582] libc: x86_64: IFUNC in static user programs may crash when
     built with -fstack-protector-all
   [28218] dynamic-link: ld.so: ifunc resolver calls a lazy PLT. When
     does it work?
   [28817] libc: static-pie ifunc resolver tls failure
   [28940] nss: __nss_database_get doesn't check for allocation failure
   [30136] manual: Please document behaviour of iconv(3) when input is
     untranslatable
   [30304] nptl: nptl/tst-pthread-gdb-attach test fails with new libc
     shared library version
   [30769] malloc: malloc_trim is not working correctly for arenas other
     than arena 0
   [30976] dynamic-link: rtld: resolve ifunc relocations after
     JUMP_SLOT/GLOB_DAT/etc
   [30992] libc: alpha: setrlimit() with negative values besides
     RLIM_INFINITY returns EPERM
   [31901] libc: elf/tst-glibc-hwcaps-prepend-cache fails on i686
   [33226] math: math-vector-fortran.h vs not ffast-math
   [33626] libc: execvpe should skip inaccessible $PATH components
   [33650] build: abilist.awk doesn't handle unversioned defined symbols
   [33785] stdio: New streams are linked into global list before they are
     fully initialized
   [33848] build: Build fails at openat2.h, redefinition of 'struct
     open_how'
   [33882] libc: Recursion in nftw() causes stack overflow(CWE-674)
   [33904] build: error: '__vasprintf_chk' undeclared here
   [33921] build: Building with Linux-7.0-rc1 errors on OPEN_TREE_CLONE
   [33935] stdio: _IO_wfile_doallocate not linked correctly when linking
     glibc statically
   [33980] locale: iconv: ibm139x trigger assertion error when converting
     to internal while lack enough room (CVE-2026-4046)
   [33985] build: ld: cannot find -lgcc_s: No such file or directory
   [33999] stdio: libio: potential dangling _IO_save_base or memory leak
     in wgenops.c
   [34006] stdio: libio: inconsistent fmemopen_write behavior on last \0
   [34008] stdio: stdio-common: scanf %mc pattern will cause heap
     overflow when width > 1024
   [34014] nss: gethostbyaddr and gethostbyaddr_r may incorrectly handle
     DNS response
   [34015] nss: gethostbyaddr and gethostbyaddr_r return invalid DNS
     hostnames
   [34019] stdio: libio: undefined behavior when setbuf on open_memstream
   [34033] network: resolv/ns_print.c: ns_sprintrrf TSIG path bypasses
     buflen and can overflow caller buffer
   [34064] dynamic-link: The unnecessary PT_NOTE check in when loading a
     binary
   [34069] network: Buffer overread in ns_sprintrrf with corrupted RDATA
     field (CVE-2026-6238)
   [34070] hurd: Calling open ("/dev/tty/", O_RDONLY) causes the program
     to segfault
   [34073] regex: regexec can mistakenly match with backrefs and the $
     anchor
   [34079] dynamic-link: THP segment load aligns all PT_LOAD segments to
     THP page size
   [34080] dynamic-link: Support THP segment load with THP enabled with
     madvise
   [34083] dynamic-link: __get_thp_mode and __get_thp_size are called
     twice
   [34090] libc: wordexp WRDE_APPEND rollback restores stale we_wordv,
     leading to invalid free in wordfree
   [34098] libc: Missing SUPPORT_STATIC_PIE in arm32
   [34129] string: x86: Non-temporal memset unreachable on AMD Zen 3/4/5
   [34144] libc: ld.so clobbers VFP registers during runtime linking
   [34154] network: Segfault in sock_eq after res_init() returns -1, due
     to stale _u._ext.nscount in __res_iclose
   [34156] dynamic-link: dlsym(RTLD_DEFAULT, ...) from a constructor
     SIGSEGVs when tail-called
   [34164] dynamic-link: elf: IFUNC resolvers do not see static TLS
     initialization
   [34170] dynamic-link: elf:  IFUNC resolver reading global-
     dynamic/TLSDESC __thread variable crashes inside __tls_get_addr
   [34183] math: fma produces wrong results
   [34192] nptl: pthread_setname_np opens /proc/<tid>/comm with O_RDWR
     instead of O_WRONLY|O_CLOEXEC
   [34196] libc: elf: static dlopen: pointer guard of the loaded
     ld.so/libc.so is left uninitialized
   [34197] dynamic-link: elf: Stack canary and pointer guard are
     recoverable from AT_RANDOM (getauxval)
   [34205] libc: aarch64: SIGSEGV in tunable_strcmp in static-pie
     binaries run with a string tunable
   [34208] stdio: scanf not pushback after matching failure
   [34210] libc: elf/tst-glibc-hwcaps-prepend-cache fails on
     armv7a-unknown-linux-gnueabihf
   [34236] locale: Non-representable transliteration still causes iconv
     to exit with 1 if //TRANSLIT is specified
   [34289] network: ns_sprintrrf uses p_class, p_type internally
   [34311] build: THP tests failed to link
   [34347] libc: Incorrect trailing bitfield word of struct tcp_info
   [34348] dynamic-link: FAIL: elf/tst-thp-1 if THP is disabled in kernel
   [34351] build: Random test failures
   [34355] build: [2.44 Regression] "make check -j7 subdirs=stdio-common"
     no longer works
   [34396] libc: sparc64-unknown-linux-gnu , Gentoo: >200 test failures,
     SIGILL in many binaries
   [34398] string: Truncated strncpy on s390x z900 ifunc variant

Release Notes
=============

https://sourceware.org/glibc/wiki/Release/2.44

Contributors
============

This release was made possible by the contributions of many people.
The maintainers are grateful to everyone who has contributed
changes or bug reports.  These include:

Adam Yi
Adhemerval Zanella
Alejandro Colomar
Andreas K. Hüttel
Andreas Schwab
Arjun Shankar
Aurelien Jarno
Avinal Kumar
Brian Jorgensen
Carlos O'Donell
Carlos Peón Costa
Charlotte Mcmenamin
Collin Funk
Cosmina Dunca
DJ Delorie
Daan De Meyer
Deng Jianbo
Dev Jain
Diego Nieto Cid
Dmitry Kovalenko
Dylan Fleming
Etienne Brateau
Fabian Rast
Florian Weimer
Frédéric Bérat
Garccez
George Hu
H.J. Lu
Jakub Jelinek
Jiamei Xie
Jiho Lee
Jiri Stransky
John David Anglin
Jonathan Wakely
Josef Johansson
Joseph Myers
Justus Winter
Luca Boccassi
Lucas Chollet
Martin Coufal
Matt Turner
Michael Ford
Michael Jeanson
Michael Kelly
Mike FABIAN
Mike Kelly
Muhammad Kamran
Nicolas Boulenguez
Paul Eggert
Peter Bergner
Peter Collingbourne
Petr Menšík
Pierre Blanchard
Pino Toscano
Pádraig Brady
Richard Wild
Rocket Ma
RyotaSaito
Sachin Monga
Sajan Karumanchi
Sam James
Samuel Balazi
Samuel Thibault
Sana Kazi
Sergey Kolosov
Shamil Abdulaev
Shengwen Cheng
Siddhesh Poyarekar
Stefan Liebler
Thomas Daubney
Tomasz Kamiński
Uros Bizjak
WANG Rui
Weihong Ye
Weixie Cui
Wilco Dijkstra
Xi Ruoyao
Xiang Gao
Yao Zihong
Yunze Zhu
Yury Khrustalev
Zihong Yao
mengqinggang
xiejiamei
zombie12138

We would like to call out the following and thank them for their
tireless patch review:

Adhemerval Zanella Andreas K. Hüttel
Arjun Shankar
Aurelien Jarno
caiyinyu
Carlos O'Donell
Collin Funk
DJ Delorie
Florian Weimer
Frédéric Bérat
Ganesh Gopalasubramanian
H.J. Lu
JiangNing
Mathieu Desnoyers
Paul Eggert
Paul Zimmermann
Peter Bergner
Sam James
Samuel Thibault
Siddhesh Poyarekar
Stefan Liebler
Sunil K Pandey
Wilco Dijkstra
Yury Khrustalev

-- 
PD Dr. Andreas K. Hüttel
dilfridge@...too.org
Gentoo Linux developer (council, comrel, toolchain, base-system, perl, libreoffice)
https://wiki.gentoo.org/wiki/User:Dilfridge
