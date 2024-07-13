Received: (qmail 20415 invoked by uid 550); 13 Jul 2024 12:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20397 invoked from network); 13 Jul 2024 12:52:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9GLMpbPaS/Qb3KtO8jhI6ZLKxDbRxQO9D+jaWtND+Cw=; b=G73H9M+LAm+noFDPSMpJANFswD
	CQaqZ/HNXMO4+GsTJMAwS85905sfqRAffE9N6moXPi7RG1UVjvYf8xR6RPBVjFpCTxNxkDt9ccDzs
	c8FCxdptBPUlVaYGAOYiSt630b6/NyFd6AWyTjHy9aQD3Ln4SwtszQDTOSTjmRVW7W7NYW8GNKXCa
	Fiav54jgzehqNkkVKoul2feHoJQbh7s2s7CqB+zIm2oAezRix6wREc7fXNN0rCQ45JaFZF2YQifFO
	RmsLP89yxtklCHCbXgWnlQowYYWs6USRGdIQZu4X3TeoSDbvgAGsWFlW1j26m/4pMYUzODrQCsuoQ
	efwXYDsw==;
Date: Sat, 13 Jul 2024 13:52:26 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZpJ4imxZbVpeHijv@remnant.pseudorandom.co.uk>
References: <CAN_LGv0tC7ef+0BV=m7i_9caO2g+B-SkqENT=w-=uif7ntsqjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAN_LGv0tC7ef+0BV=m7i_9caO2g+B-SkqENT=w-=uif7ntsqjw@mail.gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] backtrace_symbols() misuse by Ceph and its
 supposedly-safe use

On Fri, 12 Jul 2024 at 17:37:59 +0800, Alexander Patrakov wrote:
> Ceph daemons, however, have a signal handler that catches SIGABRT and
> SIGSEGV and tries to format and log a backtrace.
...
> What would be a good solution (as in: something that does not convert
> crashes into deadlocks) here? I understand that, after memory
> corruption, we are already in the UB territory, but is there anything
> better possible than what is implemented?

Let it crash, and have a kernel core-dump collection hook collect it and
do post-mortem analysis? systemd-coredump and corekeeper are the
implementations of this that I've used myself, but I'm sure there are
plenty more available.

This has the additional benefit that it works for every daemon your
system might be relying on, not just Ceph itself (I don't know how
self-contained Ceph is).

The other way to do this is to go to heroic efforts
to avoid heap allocations, like Google's Breakpad does:
https://chromium.googlesource.com/breakpad/breakpad/+/HEAD/docs/client_design.md#exception-basics
This is necessary because Breakpad is typically used by leaf applications
(Chrome, games, etc.) that want to be able to report crashes to their
vendor, independent of how the underlying OS is set up. Of course, by the
time you're in UB territory, literally anything could be happening (for
example memory corruption could conceivably have overwritten the stack
of Breakpad's crash-handler thread, if you're spectacularly unlucky)
but this is more about "pragmatic compromises that usually work" than
being 100% correct.

But if you control the machine at OS level (as you typically would for
a server) it seems more reliable to let the daemon crash and dump core,
and let a trusted OS-level component that is not already in an undefined
state process the core dump.

This seems like it applies extra-strongly if you suspect that the crash
might be caused by a malicious actor who is manipulating the memory
corruption to their benefit, rather than an accident.

    smcv
