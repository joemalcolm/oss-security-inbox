Received: (qmail 18135 invoked by uid 550); 2 May 2026 13:27:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7909 invoked from network); 2 May 2026 03:54:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777694044;
	bh=EsYCe9nbh2mn81XuVQebM2e02FYmqCEbGRpAG59hUYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UFle5CY8VXnwlWrNx30KEP/8siiDXFfW+MEZYr1FSkAIIgfizTX7qH2Wwdc3kHcrn
	 A+N8MZt/mvlJ0SQHBhgomAWw4Dy1Un4pQ+xIDAo4hO9mHwna06IZZKLBhKX2E1TNqB
	 WP/g3YyM9VKiT1Iam5Lv76MPmuEAFMhiuQTYz4z3+FwdC0tfLslQThaZ4Sh74Z2adf
	 w6hrMObAluXMUER2pezcrTY+WBu5BIvQophPV5hohS3VPpdIZGTZIv+3dnxc2mfeSu
	 TeGLPYJ2Zne42a+LRylqIHLZLbZqNWODuRtGO7FPErddKuq0slsSuiHk4w3aXDEF2u
	 59SxNS1Q+dI3A==
Date: Sat, 2 May 2026 03:54:02 +0000
From: Eric Biggers <ebiggers@kernel.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com,
	Jan Schaumann <jschauma@netmeister.org>, iwd@lists.linux.dev
Message-ID: <20260502035402.GB3872267@google.com>
References: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol>
 <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <20260501201841.GA2540@quark>
 <c13dd3c5-ddc1-431e-bc7d-2de39c551f8e@gmail.com>
 <20260502033556.GA3872267@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260502033556.GA3872267@google.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Sat, May 02, 2026 at 03:35:58AM +0000, Eric Biggers wrote:
> So the idea would be something along the lines of:

And just to make sure no one gets the wrong impression: just because
there seem to be ways in which the attack surface of AF_ALG could/should
be reduced doesn't mean that userspace should keep using it (or even
worse, start to use it).  Fixing programs like iwd needs to proceed
concurrently, so that eventually (some years down the line) the problem
can finally be fully solved by removing AF_ALG from the kernel source.

- Eric
