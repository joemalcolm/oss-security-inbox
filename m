Received: (qmail 28614 invoked by uid 550); 2 May 2026 20:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21698 invoked from network); 2 May 2026 20:05:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777752302;
	bh=wqJVF1B+ONQCJtzzJY2RfJ7yOhZO2/KebuZvJjrxQAE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=qK1FoMFtc/L944ELww7h7VyJXcLM1Yy6zcOQvU+mYqdmO8tyyzHmOCzPFxMzhxLb1
	 yGvjhDjwZ+iB7qLF0zF3dp2qKftzbs8+5jUtXLpGs7dfOOj+fXX567gXmpjr8PMP0k
	 2xCACex0E+I+MbZLYVA7VncEmjzxzTC0kFaWX3tqi5Z+WJZhbmr9IvsNwhytkva9Uh
	 KjFFz7KshcIqUD2XbW4FLRaeoGFs5ZcVCr5v1IjuRuKRDitbsPanf6NKlUcT/E81rA
	 7Bvo8bG+wfp+PszSfsUnv5NNnKaM0zKe6G3e3+DyY5UUNFKKcey34m1CVCMJjb0aEq
	 1C40+nPZ3JefA==
Date: Sat, 2 May 2026 20:05:00 +0000
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <20260502200500.GB229884@google.com>
References: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
 <20260502185608.24115-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260502185608.24115-1-justin.swartz@risingedge.co.za>
Subject: Re: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

On Sat, May 02, 2026 at 08:56:08PM +0200, Justin Swartz wrote:
> > Why do we need kernel modules for math?
> 
> To interact with cryptographic acceleration hardware, if present or
> desired, and to provide support for kernel subsystems that rely on
> encryption, like IPSec or WireGuard.

This has been covered before, but just so anyone doesn't get the wrong
impression here:

The kernel implements crypto algorithms (either as built-in code or as
modules, depending on the kconfig) so that the many kernel features that
use cryptography, such as IPsec and WireGuard that were mentioned, can
use them.  This is expected; cryptography is everywhere these days.

The problem here is specifically AF_ALG, which is an additional legacy
interface that's built on top of the kernel's crypto code.  For some
reason it exposes basically everything to unprivileged userspace
programs, and in a bug-prone way as well (e.g., zero-copy support).

If you disable AF_ALG in your kernel, then IPsec, WireGuard, and any
other kernel feature that uses cryptography will still work.

What it does break are a small set of userspace programs that made the
shortsighted decision to use AF_ALG, instead of simply following the
standard practice of using a userspace crypto library.

- Eric
