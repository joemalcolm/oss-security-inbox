Received: (qmail 23757 invoked by uid 550); 21 Apr 2024 12:00:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23739 invoked from network); 21 Apr 2024 12:00:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=XcBg/NEYIVpzeUuHSCkI2KFQTxQymYKwbrd6VxYdb2U=; b=WKihNCLYSOq2NjSNMZ4FfHv6Ku
	HdHkXf6kVuD4eVC3RoSW9vRINuW+8nBCfXpXs9eyy6dQCF4HCL73jBhqgm0UNDxk+e68jTZEFkfxc
	UhX3Xdr7qC5kNkiDxjNXMvJLUiQ/ql3fZAZvDg4D4/DZXsT9mWGfz6I9aPlgmGiFKqBJ1s2byu2FX
	9ekxspdwHa+DV3+rx5tPFTGXN7uh2tyOwtWuCtNNL089c+ytlhype1UsNqqxwCxC+je3Pc1PbH4/4
	q0SuLrBtDB9wnW//h8Cm6r2GtneZcH7p3tRj1u7Eq7LLLy4L9zNMhN1QBhYs8oeafrqrrRXJUawNa
	St5yvawg==;
Date: Sun, 21 Apr 2024 13:00:18 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZiT_0pj-sgTHeCzs@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
 <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
 <20240420181211.GA12463@openwall.com>
 <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sat, 20 Apr 2024 at 21:33:07 +0000, Jordan Glover wrote:
> On Saturday, April 20th, 2024 at 8:12 PM, Solar Designer <solar@openwall.com> wrote:
> > Does bubblewrap maybe already relinquish also the ability to create
> > nested namespaces, which it probably could do with seccomp?

bubblewrap doesn't rely on seccomp itself, because linking to libseccomp
and compiling seccomp programs would be a concerning amount of attack
surface for a program that is optionally setuid root, but it has options
that can be used to make it receive a precompiled seccomp program as a
binary blob and submit it to the kernel. The intention is that a larger
framework like Flatpak, WebKitGTK or similar, which isn't setuid, can
supply a seccomp program if it wants to.

The design of bubblewrap is that it's a toolkit for making sandboxes,
but is not, itself, a ready-made sandboxing solution - so the sandbox can
be secure but limited, insecure but versatile, or anywhere in between,
and larger frameworks like Flatpak are responsible for designing their
own security model and constructing a bubblewrap command-line that will
implement it.

> bubblwrap has --disable-userns option
...
> Flatpak uses this (or seccomp filter) to block nested namespaces

Development versions of Flatpak (1.15.6+) use both seccomp and
--disable-userns: possibly redundant, but it's better to be safe,
and Flatpak wants to disable some other syscalls with seccomp anyway
(for example access to the kernel keyring).

Older versions of Flatpak completely relied on seccomp, because
--disable-userns is a recent addition to bubblewrap.

bubblewrap also uses PR_SET_NO_NEW_PRIVS (this is hard-coded and not
optional), but creating a new user namespace in which you have all
capabilities is not considered to be a new privilege for the purposes
of that prctl, so that doesn't help us here.

> For this reason firefox own sandbox doesn't use namespaces in flatpak

Flatpak does have a feature (the somewhat misleadingly named
"sub-sandboxes") where a sandboxed program can ask Flatpak to create a
new user namespace on its behalf, in parallel with the one it uses for
the original program. This can either be done with the same restrictions
as the original program and therefore no effective security boundary
between the original program and the sub-sandbox (Steam does this, to
run parts of itself with a different /usr), or with tighter restrictions
(the original purpose of this feature).

But, as noted on the Firefox bug, this implies some IPC, a new user
namespace and an execve(), so it's higher-overhead than just fork()ing:
if the original program wants to share state with the new program,
it needs to do that explicitly, perhaps by using shared memory or an
AF_UNIX-based protocol like D-Bus. A stronger security boundary means
more effort needs to be put into crossing that boundary safely and with
the desired performance characteristics, so t's a trade-off with no
single correct answer.

    smcv
