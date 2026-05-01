Received: (qmail 26050 invoked by uid 550); 1 May 2026 06:11:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26025 invoked from network); 1 May 2026 06:11:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1777615886; x=1777702286; bh=JP+kvCLYXJ
	8tOVu0o7g5NItU+b3qhMfPArN1W1GKtJU=; b=r2p8Jqc1RKGIf58HFzUt4kKaUk
	3n7UQm6BBgeGn5YieQlpm7JQLpwENIMIOfKI7Tpe2/LVD3LhTWpzyhwnIEIoOi9+
	vOMawYgEeNAXZBowxeD+9nV1kXWYpi+573hyObqUYJK/olOKlXaD481B12vvDslr
	W/TlVGwtqyQyzYvMpq0mCXCFem6RwVJbaT4nyM5cAVXGkuBclcoTo4FSPM19VVVV
	7A2zZC4mtlPvmacwNuHIcOkw640gYV0QukmE0WqjdWVy8JwIbjSJU0LPCZ0g4oMG
	xLgQ4654+gEyotTEM74gOv07b1zqSjGHfXvS55vB72Xb3AkQhk7vHaPui4iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1777615886; x=1777702286; bh=JP+kvCLYXJ8tOVu0o7g5NItU+b3qhMfPArN
	1W1GKtJU=; b=vCvFRdIGW3pqs8RdGLMY06evSauaSB3//iLCmGdlwQy5OvtTehj
	+DNz6kk3bJymMLhIBONdSMrxrPlCkSpN3kwBFHVUS2sAbUdX4bTjrHmHLzCSzgcD
	a1vJuUSh5gQfdM5S/mwYp0LVOJdAG9nlsrJTogOwdnBnQsI8QaOAUTD3GqxCnY3S
	nUinwxdcUUTbaB5EQ/43PC27ZbCns/ekjO3gvaA6KOwAmQeYQ1kXA9/ojSOrjSod
	yGrwkS+Adls2HWeJfvM3LpPO7TyGD+kMTxTGQ96Ai97QG6Gawt10KejZ6HWhrAvV
	ziR31ZeEN4EBvM740kNvVFebBKD9vvEBMvQ==
X-ME-Sender: <xms:DUT0aWOV0xjpDy8Q4Aa6vsTddIEQak2TwGEWFhioZmpO8C-6h951iA>
    <xme:DUT0aSybsRQjBo79oP5MjJvfljGr_qfL-A64HH7LExJ3x4ftU-Dn1NA8R4Ajv1LIR
    pyz38Ffiey2le8B8i9_t2GkDHn6L0wEP7dQhu_DiU2vQkQMrH0>
X-ME-Received: <xmr:DUT0aXvP2ULmnzmiM7JmvfBaRsD28xjNblOs_4Y5H6sMyNtywQ3prPqLiHbl4GQkExxWPNOgmFoMslZ-fPvbXLh5HA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekleeghecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
    dtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecu
    ggftrfgrthhtvghrnhepgeehueehgfdtledutdelkeefgeejteegieekheefudeiffdvud
    effeelvedttddvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homhdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
    ohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtph
    htthhopegtohhnthgrtghtsehthhgvohhrihdrihho
X-ME-Proxy: <xmx:DUT0aT4nIGVNu7UlZbeN8ucBUgpBOX4768O5nLsMnBwGSDcqMnCkFw>
    <xmx:DUT0aeR8BWtE3SsRpDKZCgmNyJYQVuSTdngbiamd-o69YbJFFcd5xQ>
    <xmx:DUT0aarr53SmVkReCJo9WeWpIJwGxSVigbRUJbAXkrhyxqJSJLsrcQ>
    <xmx:DUT0aUKmRHQaJEkGOdd9bntWxD1ujDD4W4Cy7d7Y39y4yyLlIiMbxA>
    <xmx:DkT0aZgfm3ZuoblIeU6P36G5BZAaEXDBqrQf684IJzz-t6ugii_n4iDz>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 1 May 2026 08:11:24 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: contact@theori.io
Message-ID: <2026050155-yelp-bonnet-bfd2@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <2026043018-drinkable-flinch-632b@gregkh>
 <20260501032146.GA31617@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260501032146.GA31617@openwall.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Fri, May 01, 2026 at 05:21:46AM +0200, Solar Designer wrote:
> Hi Greg,
> 
> Thank you for commenting on this.
> 
> On Thu, Apr 30, 2026 at 06:52:15PM +0200, Greg KH wrote:
> > On Thu, Apr 30, 2026 at 03:17:45AM -0400, cyber security wrote:
> > > That is very terrifying, is it is 10.0 score?
> > 
> > There is a score in the CVE entry, does that not show up properly for
> > people somehow?
> 
> It does.  I guess someone top-posting a one-liner couldn't have bothered
> to check before posting or just wanted to share the emotions or provoke
> a discussion of CVSS scoring.  Luckily, your reply actually adds value:

My reply was snarky, sorry about that, it was a long day...

> > This was one of the few CVE ids that we have provided a score for, why
> > people ignored that is confusing.  You should contact your distro if you
> > are paying for support to find out why this happened as it should have
> > been covered by your support contract.
> 
> That's interesting perspective.  I just went to see whether a distro
> vendor could reasonably use this as a signal to prioritize this CVE fix.
> Here's what I did (after looking with my eyes to see the pattern first):
> 
> git clone https://git.kernel.org/pub/scm/linux/security/vulns.git
> cd vulns
> git log | grep -B3 'Add CVSS' | grep -c 'Apr 25 .* 2026'
> 
> This says 168.  That's how many CVEs your team (this time, Sasha Levin)
> kindly scored on Saturday, April 25.  So ~4 days prior to this one CVE
> making the news, ~2 days of which were the weekend.  This CVE got a CVSS
> score of 7.8.  The rest of the 168 got scores from 7.1 to 9.8.  By the
> score alone, this one really does not stand out.  To me, this is usual
> noise, with little signal in there.

The scores should be the signal, what else can we do here?  And is the
9.8 being also ignored?

> Now, your team's message may be: distros can't possibly fix all kernel
> CVEs, not even those you provide high CVSS scores for, and especially
> not quickly enough, other than by staying with mainline or upstream
> stable/longterm kernels.  Is this your actual and only message - not
> that distros should have magically seen the needle in the haystack?

No, our teams constant message is "you must update to the latest release
to get all fixes needed to keep a system secure of all currently-known
issues".  That has not changed for decades now.

> The scoring reasoning for this CVE does not hint at its severity and the
> threat being imminent.  It's as obscure as most of the rest of 168 are
> (which for most of them is probably a result of actually not having
> exploitability and impact analysis).

Why do you think that we knew this was "imminent"?  The CVE team has no
such knowlege as no one is obligated to tell us that they are about to
let loose a trivial exploit.

> I understand not wanting to draw attention to a CVE that wasn't fully
> disclosed by the researchers yet, but you can't simultaneously say that
> _this_ was the heads-up to distros - it wasn't.

Again, I was being snarky as we all knew this would eventually happen
and it finally did.

> Please don't get me wrong, I appreciate the extra effort your team is
> taking to process some kernel bugs as CVEs and even to score them.  I
> understand that with so many, quality can't be perfect.
> 
> It's just that instead of drowning in the CVE/CVSS noise, we need a
> high-quality signal for CVEs that matter the most.  Things that would
> certainly have been CVEs even prior to Linux CNA setup.  They may not
> score the highest per CVSS, but in many cases - like in this one - your
> team has the knowledge that an issue is to become high-profile, so a
> timely direct heads-up to linux-distros would be appreciated.  Where by
> "timely" I mean, say, a week (and never more than 14 days) before
> planned full public disclosure.  We don't normally like to sit on
> semi-embargoed issues with public fixes, but we did introduce an
> exception for "Linux kernel issues concurrently or very recently handled
> by the Linux kernel security team" specifically to accommodate the way
> your team works.
> 
> How does this sound to you?

Nope, sorry, we are NOT allowed to notify anyone about anything "ahead
of time" otherwise we will have to tell everyone about everything.
That's the only policy by which all the legal/governmental agencies
have agreed to allow us to operate in, so we are stuck with it.

greg k-h
