Received: (qmail 1733 invoked by uid 550); 4 May 2026 16:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16212 invoked from network); 4 May 2026 06:59:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1777877968;
	bh=24sr6vzpbutLWKQbLE5J2dwr2GA0THyRCndfnvMN9pM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zI+VgKN19zG1BOw5TwO/Bfy2mMyLSTho620tWV16qBn1eqm0oxsHFu4s/oR2D7K3g
	 SRLcnsLPVykoB7whlzltYlK5rrMsiN88th7RyxMOgg4Wdllj4IzNJbZ26RA4UM9ImV
	 zKJFjGgAbe/Q4N1IvBYyQc1T+FLanDgveqtVAK2c=
Date: Mon, 4 May 2026 08:58:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com, Taeyang Lee <0wn@theori.io>,
	Brad Spengler <spender@grsecurity.net>,
	Solar Designer <solar@openwall.com>
Message-ID: <2026050453-gamma-stuffing-8606@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <87v7d4b7a3.fsf@gentoo.org>
 <87jytkb2gv.fsf@gentoo.org>
 <878qa0b1o9.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878qa0b1o9.fsf@gentoo.org>
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

On Sun, May 03, 2026 at 10:53:10PM +0100, Sam James wrote:
> Per Greg's comments [1]:
> >> The scoring reasoning for this CVE does not hint at its severity and the
> >> threat being imminent.  It's as obscure as most of the rest of 168 are
> >> (which for most of them is probably a result of actually not having
> >> exploitability and impact analysis).
> > Why do you think that we knew this was "imminent"?  The CVE team has no
> > such knowlege as no one is obligated to tell us that they are about to
> > let loose a trivial exploit.
> 
> Is the CVE team not aware of public mailing list postings?

No.

> Perhaps
> including full links and context in commit messages would help them not
> lose track?

Perhaps, but again, consider the volume of what we work with.

> If the CVE team were unable to do this, then it absolutely
> would have helped distributions. I often chase links given in commit
> messages?
> 
> Is the kernel honestly proud of how this went?

Exactly what do you suggest that we do "better" here and how to do that?

The kernel security team gets "this is a local user increase in
permission" bug reports all the time.  Why this specific one is somehow
more "special" than others was not obvious except after the fact because
the submitter decided to provide their exploit code to the world to show
off their tool.  That is something that normally does not happen and is
outside of the control of all of us involved here.

thanks,

greg k-h
