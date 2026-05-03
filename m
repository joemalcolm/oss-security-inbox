Received: (qmail 28092 invoked by uid 550); 3 May 2026 19:25:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7307 invoked from network); 3 May 2026 19:20:30 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777836021; cv=none;
        d=google.com; s=arc-20240605;
        b=Ng1Qt1pXArtSs6wcUzKr5kdZTgn8FsyIaCweccm37kENvxpR/GdycKl1ewsI3NNopf
         pvaMfHOa83NYdhumM4liF9UIcyoe7/pr++FtCwj5/4tXeb8NcPaDwFgtd+dZAAWupDbo
         yX2/jv2lp1sHOhIhjE60ul721Zgq+ORSMs6KExf88S+B8VLETff8Db571bSJvNxroXxL
         v/PyFIxxRLAW5hI7Vyb/9MEBWXz6gjwJ3XfG0AtKRQ3TXLZ0KlV7EWfW/pMECa4JOcug
         lRcN2EtuBXRKsLVMKtRiRA9ioPzG5ntHY/88yKIfZSmr+0SN1VTWgenv5yb3qCpZkxQ+
         ah0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=A1KQkyXrRHz6CgheYFx2NyMsxprpVaixYfv59/L++Nc=;
        fh=DrdusyeCW+qYHuCaSHcOnOswG01JLWREh9dcTyJrg4k=;
        b=ctJ1MUcNWKlo+SF5mB/IKzgIm5OZ9xRJc2nvN4YwqGXkqsKw6Lc4wvVpUnGOx53cgV
         SyNNeiRto6k/AIhIxHbsMSRwdYxYJs52hClPrdqytGz4viygB65tlk1ygwWqwjIfImrT
         mrirlWtNbeflC3cBGAz1KCGzT1tsvVqJrHL6XIwtM5VITb0qW7/40c++qBWaSIws19YZ
         LAZbWXzl3VGaIv+XBkiicE6ouLKBjT0K7yQCgXbmLSF/6ySBeceO+2bNdK5njrLVGBzl
         HBA2bRTuXH3orPsFVB14elXwP2/cxMHUFA7jWJaO704b57uaRwEvaRfwI8zjqhChPpiU
         rscA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777836021; x=1778440821; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A1KQkyXrRHz6CgheYFx2NyMsxprpVaixYfv59/L++Nc=;
        b=TanG5kCaBuTwrZDHegNapPDXOeU+tOIS1q+2jTg+/bvNk03m2o62wmiv8ElC8ref/9
         TWY4xOq4yU150Bx1SMhsckWz/ELzsgELssmhF5eriA7H4/QhZu434ExubTeeE64aJx1r
         +t8kn9yTWiHRZLYURaT9eXdwvCc8xERZF/+BxKBxUVRD9kDJ4MGuzEJtH0V9wIclQ7l3
         5QTFSCh6YdMrnXLxs6bXP/+Cb057U9lTws9r/gfJgXiZlJhEFIHpTh917Xbnx91HWdPF
         knIe1m7F/sjKv/bPksHAwtvhlnxjpiCzTbweW/lKG6O7541QCXiNl/GvwjTYKVMgGBQe
         DXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777836021; x=1778440821;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A1KQkyXrRHz6CgheYFx2NyMsxprpVaixYfv59/L++Nc=;
        b=c0c4vn8O7bPviKyKk9yzmUZAdosJEp7nLaUxHdjAcok+2XiJdsAsKMU0ODifo2LeHF
         J8jWC42v7/RCF5VnryH0sTk1hD+aBhHwFgYu8nbl1NQlcM4bNUgLbNqN9TxI3+pSYxJD
         ArrU8WctcOY9Rk3DuVdrMYOKmt6wdc0eAq9mcJEoinb6rJdmkLp9Jj3Y/EZXGWyo82Lz
         aa9G5WR51e+q7BQ/Jad+MzmRVlFn8r2JDjMjo/dP8Y0Myi8QYcd+Bd9cSQtpXUmW9kvg
         sllcnthRQWPDVFP4p2Qj8l5lo0VfWwdoNfz7OzLq5DlF/96WWdia9Axp+5p9EtqnZ2qt
         Zs7Q==
X-Gm-Message-State: AOJu0YyQmvxI02yj06oTmgNHviEun2/vZ0cFF5tFX0aZl75Q2nHQ1XZy
	mAsEbFnjl1NYkqA7VtP2o++lVYP8vpmRyNxdiW3Sd0z6Y1aApbzOZ+3adslMoGaGM723JFj3hmv
	kCR0Gvgbj1pDYfs+WWr1QOPApS3e7mo+u9MbWMLQ=
X-Gm-Gg: AeBDieuDNqwthLeJ51vMwiZUdUUfyplYguhnzxFMr5CYbMP3T2jGlqCXmo7qbfLoVFH
	mjv0du35PWJfLN+EAXA83EwXq2je/q5+uIsXq9BvXKTlIzZZlXTcp8AxRFIomCifia5L1fkcuX7
	X2K0n57g1rDariYFJCLUicVRRCfYvNP7OTOfssVZq1MkrVgCQUNCRNpOWds+9x7RggUZj/F1tpD
	uQXRoCZLjD0bhKmVMurRSKpIykqb7aJh7fKU74GFMYg9eRtC3BcusMOZRcxTQ6VMrHePbjeLJBa
	3bPGUl3RgUtTdbyaCbDByVtBcBd/xA==
X-Received: by 2002:a05:6214:4c92:b0:8b1:f297:a54b with SMTP id
 6a1803df08f44-8b665f017a8mr117612506d6.18.1777836020540; Sun, 03 May 2026
 12:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260430071917.GB54208@sol> <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol> <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <20260501201841.GA2540@quark> <c13dd3c5-ddc1-431e-bc7d-2de39c551f8e@gmail.com>
 <20260502033556.GA3872267@google.com> <20260502035402.GB3872267@google.com>
 <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com> <CAM=PXV4q2i13W8Z_AZGDfdxbqWANJ=U4Sw3FTcv5mH_QUrrSfA@mail.gmail.com>
 <afcqxCv58YrhbtVr@definition.pseudorandom.co.uk>
In-Reply-To: <afcqxCv58YrhbtVr@definition.pseudorandom.co.uk>
From: Greg Dahlman <dahlman@gmail.com>
Date: Sun, 3 May 2026 13:20:09 -0600
X-Gm-Features: AVHnY4KniK2zDuuOkubdkvD1guInfuZPNAHeRGEHO4bXqYJEjoltMPjC75uDL1o
Message-ID: <CAM=PXV5Nu8VdpFY7mYmA86ddwYR7tR0nyLL_nZEnUdrz83Y=Rg@mail.gmail.com>
To: oss-security@lists.openwall.com, linux-crypto@vger.kernel.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

Note: re-adding the other lists so that people have an opportunity to
correct my errors.

"CAP_FOO in the init namespace" doesn't matter if "CAP_FOO" is the
gate in the default namespace, namespaces a facade-pattern and not an
isolation, unix abstract sockets, af_inet, vsock, af_alg etc... do not
currently use credentials at all IIRC.


LD_PRELOAD, as a way to (transparently) replace this functionality
without user intervention , involves putting in an interposer to
directly intercept all socket() calls at a system scale in this case,
when it is typically a thread scope concept.

I think socket() hasn't been interposable for at least a decade (in
glibc) you will weaken overall security by reintroducing the PLT or...
Note many people want to avoid adding in a `/etc/ld.so.preload`
because fighting dynamic linker hijacking is not easy due to Unix-like
systems having zero security boundary between the parent and child
process.

The bigger problem is that the embedded users are not where most of
the friction is going to come from, while the motivations are similar,
FIPS 140-3 validation, and downstream vendors which used distros
validations, incorporated into regilitory, compliance, and governance
is a large unidentified user base.

Searching for "Kernel Crypto API" in the Module name on this site will
show some of the upstream validations.

   https://csrc.nist.gov/projects/cryptographic-module-validation-program/v=
alidated-modules/search


In the case of non path backed sockets, userns provides zero
protections and only adds to the attack surface, the only credential
use for non-path backed sockets currently is the restriction of ports
below 1024 on af_inet,

Remember namespace support is not implicit, and all af_family calls
outside of those specific families that have namespace support all
stay in the default namespace.

If you dig through the $distro openssl security documents from the
NIST link above from the vendors you will see why people liked the
contract that af_alg offered, because they were depending on the
kernel teams stable api and reputation. and they could simplify their
compliance because it is easier to ensure no openssl installs exist at
all on a system than to try and maintain compliance, governance, and
regulatory obligations.

While there are some use cases like firmware images on some embedded
systems, where having the DMA pipe into a cryptoengine avoided Von
Neumann bottleneck issues and CPU usage etc.. No matter how flawed it
is to use af_alg, it provided a simple zero dependency interface that
their tools already supported (socket) and reduced their lifecycle
costs.  The reduced performance of the hw crypto engines for smaller
data sizes was acceptable as a trade-off, not as the primary driver in
many cases.

I should be 100% clear, namespaces _are not_ a security feature, but
they can be leveraged to lower privileges and improve a security
posture.  But when you have interfaces like sockets (non unix like)
the main advantage of network namespaces is they allow you to
constrain something that due to historical reasons has almost zero
controls (except tcp ports < 1024).

But the default is for any new, legacy or other subsystem to only live
in the default namespace.  The friction is when ~4 out of the 40+
af_families is namespace but the rest are not.

There is a very real problem with people overestimating the isolation
capabilities of namespaces in general, but paying attention to the
official documentation may help here:

https://www.kernel.org/doc/html/latest/admin-guide/namespaces/compatibility=
-list.html

     The same is true for the IPC namespaces being shared - two users
from different user namespaces should not access the same IPC objects
even having equal UIDs.
     But currently this is not so.

The "should not access" is a very different contract than most people expec=
t.

The FIPS/ISO compliance issue mostly invalidates what I hoped was an
easy fix and putting a kernel call interposer via ld_preload will
still add  friction that is likely to block the aspirations of
removing af_alg from the kernel.  I think that there is a path to do
so, and I think it would be best in the long run.  But the friction
here is not just from code changes, which are far easier to accomplish
than the regulatory issues.

The compliance based user base is one that is often far more challenging.

I do still think that both userland and kernel would benefit from some
mechanism that would make it easier for security teams, admins, and
users to run with lower privileges.  IMHO thinking about enabling that
control will also be critical to the kernel team's ability to remain
effective.  Different use cases will always conflict, and
non-namespace users would also benefit from ways to restrict access to
af_families.

IMHO if the team thinks af_alg is unfixable, it is maybe one of the
rare cases where breaking changes are necessary.  It may be more
productive to help compliance based users migrate than provide a
brittle shim that still invalidates all their authorizations anyway.

I am not an expert on FIPS/ISO compliance, but I do know that
providing guidance that helps users migrate would go a long way.  You
could say, have a userland process that provides a socket-like
interface with guidance on how to wrap or create a their_socket() to
migrate.

I still think that for non af_inet/unix (file backed)socket af
families, there needs to be a credentials mechanism.  People are
building systems on top of vsock and other non unix/if based systems
that are just as vulnerable. Like af_alg, vsock is known to have
serious issues and was designed for a trusted environment.  Without an
effective way to limit exposure from either userland or the kernel
there is enough that is simply just unexplored that it will be
expensive.

On Sun, May 3, 2026 at 5:00=E2=80=AFAM Simon McVittie <smcv@debian.org> wro=
te:
>
> On Sat, 02 May 2026 at 14:21:57 -0600, Greg Dahlman wrote:
> >LD_PRELOAD and capabilities
>
> These seem orthogonal, rather than being part of the same idea.
>
> LD_PRELOAD is discretionary (cooperative) so it would only be useful if
> used in a design something like this:
>
> - at the kernel level, AF_ALG just doesn't work (fails with a
>    permission-related error), at least for unprivileged processes
> - but in user-space, an opt-in LD_PRELOAD module intercepts the socket(),
>    etc. calls for AF_ALG, and emulates the behaviour of current kernels
>    by calling into a user-space crypto library
>
> It can't be a security boundary, but it can be a mitigation for the
> regressions that a new security boundary (or complete feature removal)
> would otherwise cause, similar to the way LD_PRELOADs like aoss and
> padsp mitigated the regressions for older binaries when distro kernels
> disabled OSS audio.
>
> Meanwhile capabilities are a way to let trusted, privileged processes
> have access to things that unprivileged processes do not, for example
> making AF_ALG available to a few system services that need it but not
> available to all of user-space.
>
> >You should expect any UID (even nobody) to be able to gain the
> >privileges in their bounding set
>
> The kernel can distinguish between "CAP_FOO in the init namespace" and
> "CAP_FOO in any other userns" if it wants to, and some kernel features
> are already gated by having a capability in the init namespace
> specifically. For example CAP_SYS_ADMIN in the init namespace allows
> mounting block-device-backed filesystems like ext4, but CAP_SYS_ADMIN in
> a different userns only allows a few "safe" mount operations
> (bind-mounts, overlayfs, FUSE).
>
>      smcv
