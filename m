Received: (qmail 17561 invoked by uid 550); 4 May 2026 16:07:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3572 invoked from network); 4 May 2026 06:45:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777877105;
	bh=GcSGGqP6V1jmYg4gECCJk2Kfg0QcCDiEZx5H+wEc7IE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UsCoXrttsPit6HgPOtU7iRbzellEM+2VlWUSQ5NydY+4M/WTAMUdgRRhxMhUuP2/U
	 bHjNlueA/hBk9QZra54g4CfT4LJ+YJppBUVFHYUWmzH1YoRPz0tGCp0fxKWyD7xDZA
	 8L2ff37LYNQwvNetSESCbOpavjtezy5Decjwmb5N18zCZep2kKGLZ+d1h4ig+XRmlL
	 iB8ZlvNS95X3PUel9tnOEVq3qEOFuIiE9x7v5M/ZNga92QGdRFeQpuN2poyot5lox4
	 QZ0/B0bjMgoCgdoNASx/fujPma/BBR0FgLBbTiip2VbtteAM/SfD+YOTpked5y1Npr
	 l/KxWr47lMTvg==
Date: Sun, 3 May 2026 23:43:46 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: Milan Broz <gmazyland@gmail.com>, oss-security@lists.openwall.com,
	Jan Schaumann <jschauma@netmeister.org>, iwd@lists.linux.dev
Message-ID: <20260504064346.GA112568@sol>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol>
 <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <021503ca-8a9b-4f9d-8b8e-81661572a018@gmail.com>
 <16a713ee-4cf3-4f40-a532-8a937eaffd21@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16a713ee-4cf3-4f40-a532-8a937eaffd21@gmail.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Mon, May 04, 2026 at 02:13:01AM -0400, Demi Marie Obenour wrote:
> > - It is used for benchmarking, where we actually need kernel crypto.
> > 
> > As it will be used in real dm-crypt mapping later, benchmarking
> > userspace lib just does not make sense.
> > (Requiring CAP_SYS_ADMIN here is not such a big issue, and it is
> > a very rough test - but useful for relative comparison, not for the
> > real numbers.)
> 
> Would an API to ask the kernel to benchmark its own algorithms work
> for this?  That would be a more accurate benchmark as it removes
> syscall overhead.

For what it's worth, I've always been frustrated by
'cryptsetup benchmark' and the numbers that people report with it
because they underestimate the fast algorithms so significantly.

For example, on my desktop (if I enable AF_ALG so that it works) it
reports 15585 MiB/s for AES-256-XTS encryption.

Yet, a userspace port of the kernel's VAES+AVX512 optimized AES-256-XTS
assembly code runs at 33600 MiB/s: over twice as fast.

(Yes, encryption is that fast now on the newer AMD processors.)

So in this case most of the time is spent in AF_ALG overhead, not the
actual algorithm that the benchmark is supposed to be measuring.

(And this is yet another example of why going through AF_ALG instead of
just calling a userspace crypto library isn't very efficient...)

I know the cryptsetup folks consider this tolerable since 'cryptsetup
benchmark' is meant to be a rough estimate anyway.  But I think it
clearly shows that AF_ALG has never been all that great for the
"benchmarking the kernel's crypto code" use case, either.

In the case of benchmarking done during kernel development, we've
actually already been solving that in a different way: adding KUnit
tests with benchmarks included.

But for benchmarking by end users, yes, I suppose if really needed it
could be done using a new UAPI.  It would just provide the speed of each
algorithm and nothing else.

- Eric
