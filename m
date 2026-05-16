Received: (qmail 17951 invoked by uid 550); 16 May 2026 07:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17924 invoked from network); 16 May 2026 07:55:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1778918146;
	 x=1779004546; bh=KSicuYOxU53GAuhY6Wjm29f3Wd4usqBtYDFsNqC0GuU=; b=
	klAgKKLdmWBwImb/SsK1F08maOmeDfrvjAgSUSIZItCC6V3ekPRUC9M7FfM7GGYy
	mCknE2xp8Jl7wF4zncqdMGtL1jrEvIENgTaNah5ZphgYvpGqk76XyXaoZ7SYuooJ
	4Bm7tm3IgNZRV8iiVZ+s9N09vPOVUNmRJsQ6MyAini4ViSNYiosPTzz98ge+uWOQ
	oCD6+ospXLpE50yLWXpPcYwRyynPDb79c/v+EWZMHAWVHG+Dw4bgKPtdQAq9bA7n
	DtUQiTU+Ff9gBMf/pYlryh9qFJGla285jd+RuJhy4v7gOgq/o42dE0G5vrZr8Tyj
	z3Bn69e4KVmmSYupky1NQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1778918146; x=1779004546; bh=K
	SicuYOxU53GAuhY6Wjm29f3Wd4usqBtYDFsNqC0GuU=; b=P7T/fxzOO3A7EQ8aj
	z++CjhGMJ3qq1T907JQJqs9Pbh/+Hvn9R2XCKJ9gefzfIchQNJAeAYdjSJhii7ak
	Dj5nNMnM/uwY8/qKMaF85em7YL+QWPZVwsOQWNw5JV2zfg75EhDOSJhQaVR5LWdN
	0t4vKcNgScchfbpEMk0oC2+//e28RpUYAdRW4oP8s52J8oqv1ssfbtmT52An9fbD
	g2AYW1MuMKgGIH12yDbyrNBTFSly1ZviVxDnBSJIMyUUq+ZB/fVI1Vt21Z/K2jIG
	bD1LQ2HGT2hJ6EQikSGA+fQKObk7t+n2TpJNQPs43Fh/WR4fItmYTHiAO/YBGbpm
	GMtVw==
X-ME-Sender: <xms:AiMIajuL8givSpKn40Wq1KRa3aTlAzC_04xYdHBD4S0Z4pLBM-6BNw>
    <xme:AiMIaiaTmmRIyHhh7tTW1S-lyO4i9GZeIMxCVeriEZBPMTq6nBe3IeIdIGYxbrSSN
    ylm0w5zNuu9QA8TK2igKan5_fEz2mx8ZVM-UrKpyMKp8tG49Q>
X-ME-Received: <xmr:AiMIauVI0zqYfstpqwQ_18CJuEUJWRvNfG6PwOtZigLJNFB1QhDzFt7KdfI_iFsuvetTQyPunKmRsGUpXx7jUdIhhw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddufedvjeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggugfgjsehtkeertd
    dttddunecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeehleeiudetleeuteehuddvgfevfefgjeffuefghffffedvhe
    dvgfevtdetffejudenucffohhmrghinhepvghurhhophgrrdgvuhenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
    ohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:AiMIau6yJ0Zzh1a2mj8bAoTVP1-EHyYkhQIhVPS3iFqBeZYwF0UgGg>
    <xmx:AiMIahi2pbzAPTpgaxVmeoi33ZQazmq7pQvfhUJBar2nE3YCMX0YgQ>
    <xmx:AiMIatcPGpTOD4OoH7DMBWjt7vWkRzj1xXF4uVhCZZFinEfy4zJVyg>
    <xmx:AiMIaufwBbppvfRaDz8RglLaaIxxektzd73_5aJWsQrPFMOWX8255Q>
    <xmx:AiMIauGqr_-2AP-tdyMLgLaBYaplCFgaZ7rDuZ0d3fqhs8nvGGht8LAd>
Feedback-ID: i787e41f1:Fastmail
Date: Sat, 16 May 2026 09:55:00 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2026051617-pellet-flatfoot-c07a@gregkh>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <afI-PPAr7EP8SEsu@1wt.eu>
 <4386b3433ad85d4bb93e1ca2a07088d2b83bb23e.camel@debian.org>
 <2026051536-gatherer-excluding-f6ff@gregkh>
 <agdnYiFVMinGLHg3@voleno>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <agdnYiFVMinGLHg3@voleno>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Fri, May 15, 2026 at 03:35:14PM -0300, Santiago Ruano Rincón wrote:
> El 15/05/26 a las 11:27, Greg KH escribió:
> > On Fri, May 15, 2026 at 10:49:34AM +0200, Yves-Alexis Perez wrote:
> > > On Wed, 2026-04-29 at 19:22 +0200, Willy Tarreau wrote:
> > > > I'm increasingly doing that myself already, and predicted the death of
> > > > embargoes a serveral months ago. Now I just remove unneeded details from
> > > > commit messages, merging and issue releases to keep users protected.
> > > 
> > > Hey Willy,
> > > 
> > > Unfortunately that also has the side effects to hide security-relevant commits
> > > from downstream integrators and users. Not that we really have the time to dig
> > > each and every commit of each and every project (especially fast moving ones)
> > > but we definitely miss things here and there without a heads up.
> > 
> > With the advent of the reporting requirements of the EU CRA law, as of
> > the end of next year, all projects will have to be reporting their
> > "security bugfixes" to the EU, so you will be able to go off of that
> > feed.
> > 
> > Although that is a 18 months away, but something to look forward to :)
> 
> While the full regulation will apply from December 2027, the Reporting
> obligations of manufacturers (art14), "shall apply from 11 September
> 2026", according to Article 71 (art71).
> 
> [art14] https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202402847#art_14
> [art71] https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202402847#art_71

Yes, but to be pedantic, September 2026 is when _manufacturers_ need to
start reporting the bugs they are notified of or find on their own.  I
predict that's just going to be a slow trickle, and that's what the EU
is planning for.

But, come December 2027, that's when all open source projects that end
up under the "steward" category, requirements kick in.  That's when they
are responsible for reporting all security-related issues that they have
fixed to the EU.  That's when the real flood is going to start, AND is
when manufacturers are going to have to be aware of that flood as it
will be relevant for their products.

thanks,

greg k-h
