Received: (qmail 27858 invoked by uid 550); 27 Dec 2022 10:25:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27837 invoked from network); 27 Dec 2022 10:25:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1672136737; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=avipjlmwjgSBv3LADLwDkEO/zXDoLrAlAMJ7fn+xA2A=;
	b=Y3oX0lDrRARns4a+AyppMCor419pkVm2ykf0Ku449HuM4n/YH07IFFl3Js5GhGOFMT9FUV
	PpC1lvkYpIKYkh+RWlGvZHm8ScuwS+hoTqiGVqEu7p9RfVA3QRt0NanB8KjqFWAVBdD0/2
	2ZUpKcPq7uUVxm7NMmOqbIxsqYBvu3I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1672136737;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=avipjlmwjgSBv3LADLwDkEO/zXDoLrAlAMJ7fn+xA2A=;
	b=bNiZ6wXCjypP1rl1H1WpeWc3aiM+bxC/ZcpH2P2ZUMUcP3juNIFeB1nKs4Y3HqdG+iFYxG
	sjtX230InVnkZSAA==
Date: Tue, 27 Dec 2022 11:25:36 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221227102535.GH4524@suse.de>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
 <Y6W5IcAzIUb5rD1F@kroah.com>
 <20221223161906.GC4524@suse.de>
 <Y6XcWDBY2uBellV3@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6XcWDBY2uBellV3@gentoo.org>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 10:50:32AM -0600, John Helmert III wrote:
> On Fri, Dec 23, 2022 at 05:19:06PM +0100, Marcus Meissner wrote:
> > On Fri, Dec 23, 2022 at 03:20:17PM +0100, Greg KH wrote:
> > > On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> > > > On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> > > > > Not sure why they do not like you, but to be very clear anyone else can
> > > > > requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).
> > > > 
> > > > For CVEs assigned (earlier this month) to issues in drivers/staging,
> > > > what would be the process to remove the assignment or mark them as
> > > > invalid?
> > > 
> > > And who is doing this "blacklisting" of staging drivers from CVEs?  Why
> > > are they special when many distros do enable and rely on them?
> > 
> > This is just information I received when I tried to allocate a CVE for a
> > staging driver.
> > 
> > It has been over a year ago, so perhaps the this changed meanwhile again.
> 
> SUSE is a CNA. Wouldn't you be able to oassign a CVE via the SUSE CNA
> without going through MITRE?

Every CNA has to follow its set CVE assignment rules.

The SUSE CNA is only allowed to assign CVEs for issues in SUSE products
/ SUSE specific code patches, preferably only non-public ones to avoid
dups. See:

	https://www.cve.org/PartnerInformation/ListofPartners/partner/suse

There is one fallback OSS CNA, which is the Red Hat CNA.
It is allowed to assign CVEs for OSS issues, and also is a root on its own:

	https://www.cve.org/PartnerInformation/ListofPartners/partner/redhat

> > > In my talks with MITRE, they have said they don't want to make public
> > > statments about the CVE issues and Linux, which is sad, but they never
> > > mentioned anything about "we will ignore this portion of the kernel
> > > source tree".  Is that in a public statement anywhere that I can point
> > > to when people ask the kernel security team for CVEs?
> > 
> > No, it was in a private email, I will search for it, but I cannot
> > promise I will find it again.
> > 
> > Ciao, Marcus
> 
> Relatedly, I find it very frustrating how little visibility there is
> into the world's interactions with cveform.mitre.org. Your form inputs
> aren't even sent back to you in the automated response, which makes it
> quite hard to keep track of the state of changes you've asked for.

Yes, I agree, it is a bit intransparent.

Lets see how this all changes, as this manual CVE requesting
should be done way less in the future, as most requests will be more via the CVE 
automation APIs in the future (FWIW CNAs already submit via github pull requests).

Ciao, Marcus
