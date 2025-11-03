Received: (qmail 7747 invoked by uid 550); 3 Nov 2025 17:59:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7723 invoked from network); 3 Nov 2025 17:59:03 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Peter Gutmann <pgut001@cs.auckland.ac.nz>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
In-Reply-To: <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
	(Peter Gutmann's message of "Mon, 3 Nov 2025 12:53:31 +0000")
Organization: The Eyrie
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
	<ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Mon, 03 Nov 2025 09:58:52 -0800
Message-ID: <87fravyp43.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Peter Gutmann <pgut001@cs.auckland.ac.nz> writes:

> Even before getting into that, how do you document that people shouldn't
> do certain things with their config files, or by extension which bits
> are inside and outside the security boundary? "If an unauthorised party
> can modify your config files then bad things can happen" seems
> redundant, "We take no responsibility for what happens if you fail to
> take unspecified steps to secure your config files" might be correct but
> will be perceived as blame-the- victim... how do you document this for
> users?

This is true. Helping users understand trust boundaries is probably the
hardest part of writing effective security documentation. They can be very
complicated and even many security people struggle with security boundary
analysis.

My personal opinion is that a common failure mode here is to make the
security boundaries too complicated, often through a series of small
feature decisions to solve other problems.

One starts with a policy of "the configuration should only be modified by
a trusted source," which is fairly simple. But then some automatic
configuration use case comes up where it would be incredibly useful to
inject just a couple of values from some untrusted source. And at the
time, you're pretty sure that's safe due to how the program works, so you
say yes, this is supported. If that happens three or four times over the
course of ten years, now you have a very complicated security model in
which it's supposedly safe to use untrusted data for some settings and not
for others, the documentation of what operations are safe and what
operations are not safe is unclear, and subsequent apparently-unrelated
code changes may undermine security guarantees that you didn't realize you
were making.

This kind of complexity is the enemy of security, which everyone knows,
but everyone hates applying that rule in practice because you can solve so
many real, useful problems by relaxing the boundary just a little.

I think this is a hard problem without a good solution, but the discussion
of the merits of CVEs about configuration file handling made me realize
that, at least for some of my projects, I would like to opt out. I would
like to declare somewhere a very simple security policy that says that
there is no security boundary between configuration (config files,
command-line arguments, etc.) and the software, and therefore it is not
safe to use any data or allow any modifications from a source less trusted
than the security domain in which the program will be running. Even if you
think this operation should obviously be safe, if it involves untrusted
data, it is completely unsupported.

The implication is that if you want to generate a configuration from some
untrusted source, ensuring that configuration is fully trusted and vetted
and will parse correctly and will not trigger any bugs in the software is
100% your problem, not my problem as the software maintainer, and any
security issues that result will not be accepted as CVEs because this is
not a feature the software provides.

This is not a particularly *friendly* policy, because that sort of
verification is hard (and is very likely to break in insecure ways with
future software releases), but I think it's a fairly *realistic* policy
for a lot of single-maintainer free software projects that gets one out of
the rather terrifying world of attempting to reason about a complex and
porous security boundary.

I'm probably overcomplicating this problem by combining it with the
problem of how to describe a more complicated security boundary, and my
problem can probably be addressed by relatively simple declarations in the
documentation and SECURITY.md. :)

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
