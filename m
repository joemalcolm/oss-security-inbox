Received: (qmail 7584 invoked by uid 550); 23 Dec 2022 08:17:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7563 invoked from network); 23 Dec 2022 08:17:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1671783449; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S+l1POQgm7Js9AQLkiDPe8IDCrbqo/Qg1EItXTpzyq4=;
	b=Lc67JIjkta6DVpaBcGCd5hh0RIjSVfZC+QL167io5/6YNKGCjm1o9CSk6fXKTsYKm6sLFk
	1cA31KhMrOTGvBEvxKxt5mWEiH2MZpUBdinLjDA+SL5Dp1fGfVyqColdIqdsTu1LCsSwYL
	0V1m6qogXEdo9pGTqy5b5WywrybSZpI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1671783449;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S+l1POQgm7Js9AQLkiDPe8IDCrbqo/Qg1EItXTpzyq4=;
	b=oQ+mU2VcmDpJL0/3KKBFCijTUFFRpPuuFX8gi52U11d938TDrXmhg/R/NIW81zaEp2w1eL
	yQSITmyTJ0Kce7Bg==
Date: Fri, 23 Dec 2022 09:17:28 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221223081727.GB2404@suse.de>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6VTdO608VUE38Ke@kroah.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

Hi folks,

tldr: I requested 5 CVEs for the new ZDI issues Josh and Jan referenced.

long form:

Nice surprise 1 day before Christmas.

On Fri, Dec 23, 2022 at 08:06:28AM +0100, Greg KH wrote:
> On Thu, Dec 22, 2022 at 04:49:04PM -0500, Jan Schaumann wrote:
> > Lastly, given that this is a coordinated disclosure,
> > I don't know why there are no CVE IDs reserved for
> > these.
> 
> The kernel developers do not work with CVEs at all as they are not all
> that relevant for the most part for kernel issues.

We know.

> MITRE agrees with us
> will not even give them to us if we ask for them :)

Not sure why they do not like you, but to be very clear anyone else can
requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).

> Some Linux companies still insist on assigning CVEs, but that's
> primarily to help enable their internal engineering processes more than
> anything else.

The whole software industry operates with CVEs as primary identifiers at
this time, so it is not just some "internal engineering processes".

> As an alternative, please look at the GSD (Global Security Database,
> https://globalsecuritydatabase.org/) for which the kernel does get ids
> assigned for issues like this, and many many others.

Perhaps this or any of the other ID spaces / databases will be taking
off in the near future, but the main industry index is CVEs at this time.


That said, I have just filed 5 CVE requests for the 5 ZDI issues cross-
referencing the Linux kernel mainline commits.

FWIW, they were fixed in mainline in July and no one had spotted them,
which of course underlines Gregs point and that there are not enough
watchers.

Ciao, Marcus
