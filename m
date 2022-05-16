Received: (qmail 22413 invoked by uid 550); 16 May 2022 13:16:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17651 invoked from network); 16 May 2022 13:12:41 -0000
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="I4pT6Nyo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1652706746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pFUiwmdRrjooKtBMfwLBQ2ewKRSnPYR5cX0Cg3Q3ZSA=;
	b=I4pT6Nyo+yucVErneTQH7f944piugocftZK1rGZ2WVcoJBLmX9JxvdVLEh83OmbUwKr36f
	EcMZIM/ZWzW/vZOkVV3fg1BWqEfEm5L7wT1sOvA+1nqxW2uH8JR8fkF8+3yiOgaOfxbCqw
	qZQ73AuZKndvGBXdVHibchpmrj9Fp9Q=
Date: Mon, 16 May 2022 15:12:20 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <YoJNtNJXUwLySmmO@zx2c4.com>
References: <20220515162740.GA20526@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220515162740.GA20526@openwall.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

Hi Alexander,

I think a lot of this depends on what you feel the primary value in
distros@ is.

I always thought its primary purpose was to centralize embargoed
vulnerability reports, using its presence as *the* de facto forum for
that, in order to receive nearly all embargoed bugs. Then, those bugs
become subject to the distros@ 14-day disclosure policies. Seen this
way, distros@ is a mechanism for ensuring that bugs eventually *do*
become disclosed, rather than languishing in embarrassed vendor
purgatory forever.

Maybe I'm far off, though, so it'd be interesting to learn if you have a
different idea of its value.

With regards to Linux, your description seems about right:

On Sun, May 15, 2022 at 04:27:40PM +0000, Solar Designer wrote:
> For Linux kernel maintainers, it is customary to post a fix technically
> publicly but without indication of its security relevance, then work on
> getting it merged into the various trees, and expect that its security
> relevance wouldn't be clearly indicated publicly for a while.

One could argue that all currently existing vulnerabilities are already
"known" because they exist in code already written, and one simply has
to search for them... And so writing an obfuscated commit message and
making it public carries with it the same burden of search to discover
it, and so it's no more public than the original vulnerability in the
code was before it was found. But this is utter nonsense.

People can and do trawl commit logs looking for obfuscated vuln fixes. I
cut my teeth doing this nearly every day for some time way back when.
Maybe they'll pop up on Twitter; maybe they won't. But they're
definitely being found, traded, exploited, and so forth. The kernel
isn't some CGI script that's trivially exploitable by a 14 year old
running VB6. Rather, though it's still not rocket science, if you're
writing kernel exploits, you can certainly also read commit logs.

Some commits are more obvious (remember when I experimented with
including exploit code in commit messages? [1] fun times...), and other
times they're obscure, but either way the cat is out of the bag at that
point and people are finding these.

So if the point of distros@ is to have integrity as a security mailing
list, having something to do with some real threat model somehow, then
just consider vulns with public fixes as public, so that if distros@
gets a report about a vulnerability with a public fix, it just
automatically forwards it onto oss-security, as a completely procedural
non-decision. Maybe spell out in the policy doc that the Linux case is
no exception, to mitigate misunderstandings. But beyond that, it doesn't
make sense to sacrifice the integrity of distros@ because a project has
a different idea of "public" than the rest of the security world.

Now, I don't intend to disparage the kernel's security team (of which I
am a member, though I don't speak for everybody here). The "a bug's a
bug's a bug" attitude might seem foreign to this list, which gets
excited about individual vulns, but a lot of kernel developers
rightfully see this as chickens running around with their heads chopped
off, because they *know* from real life experience that bugs are rampant
anyway, and that the line between a security vulnerability and a boring
bug can be pretty hazy, as new techniques are discovered for exploiting
new classes of bugs. As Bas told us in this classic post [2]:

> Anyways, both sides of the disclosure fence suffer from one fatal
> flaw. A flaw that Brad Spengler AKA Spender has been incessantly
> pointing out for years and it's that bugs don't matter. Bugs are
> irrelevant. Yet our industry is fatally focused on what is essentially
> vulnerability masturbation.

So I think a lot of the kernel's commit message obfuscation and unusual
disclosure ideas stem from a sort of collective sigh and desire not to
join the circus of security performers. They'll commit the fix, because
that's the sensible thing to do from a development perspective and
doesn't make a difference anyway, as LTS and distro kernels come with
their own long delays. And they'll talk to you privately under an
"embargo" for a little bit if you want, so that you don't go berserk
that they're not "taking seriously" your beautiful vulnerability. (Also
IIRC, OpenBSD won't even pay lip service to embargoes...) But mostly
this is designed around that collective sigh, made to minimize drama and
maximize productivity in actually getting fixes committed and deployed.

That all is to say that while I personally would like to have exploit
code in commit messages -- how's the illustrative test code in, e.g.,
[3] actually different from the exploit code in, e.g., [1] from a
code-understanding perspective? Quit hiding stuff! -- I can also
understand where this collective sigh is coming from.

And anyway, practically speaking, security@kernel.org's disclosure
deadline is usually something like 7 days, which is pretty short, so for
people who misread the documentation, at most they'll only be miffed
about a few days, rather than a few months.

So I think maybe your option (0) makes sense? Enforce the policy, which
has worked well enough for a long while now.

Jason

[1] https://git.kernel.org/torvalds/c/d114b9fe78c8d
[2] https://lists.immunityinc.com/pipermail/dailydave/2015-August/000976.html
[3] https://git.kernel.org/torvalds/c/e3c1c4fd9e6d1
