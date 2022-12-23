Received: (qmail 1811 invoked by uid 550); 23 Dec 2022 16:21:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1793 invoked from network); 23 Dec 2022 16:21:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1671812490; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=64zrDnOQJp6M7XzsjzBegJcD5wDDZ8n6oTrSAEBr2Bg=;
	b=AeZLj8FgAldPUWuvLw0soN3ImyZtQ5hk9ol7nAHBDp6Qy1fkva97GN0fwuYrCHpg8TK4eJ
	I8CkODloUzmuWc1WoBvD9i3B3JkERIlh1iEjEGym60DrgDU+mnSWgzB7hl2JjBOaYRgaYK
	03NBq91KbwxzyztiYH4TLAxRgrREAok=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1671812490;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=64zrDnOQJp6M7XzsjzBegJcD5wDDZ8n6oTrSAEBr2Bg=;
	b=zIhK51SkdvrVKeKvLgT334iPZZlwa2rLdNpiObUNrgTtFnimToRozGSbDgicl2mPfTPd+p
	A6EEqhCgYfrQHlBg==
Date: Fri, 23 Dec 2022 17:21:29 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221223162128.GD4524@suse.de>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6TQ0HyCJOMkKSDn@netmeister.org>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

Hi,

Mitre has assigned following CVEs, also torvalds mainline commits:

ZDI-22-1687 - CVE-2022-47941
	aa7253c2393f6dcd6a1468b0792f6da76edad917
ZDI-22-1688 - CVE-2022-47942
	8f0541186e9ad1b62accc9519cc2b7a7240272a7
ZDI-22-1689 - CVE-2022-47938
	824d4f64c20093275f72fc8101394d75ff6a249e
ZDI-22-1690 - CVE-2022-47939
	a54c509c32adba9d136f2b9d6a075e8cae1b6d27
ZDI-22-1691 - CVE-2022-47940
	158a66b245739e15858de42c0ba60fcf3de9b8e6

Mitre assigned also from the stable patch, but was not in ZDI set - CVE-2022-47943
	ac60778b87e45576d7bfdbd6f53df902654e6f09

	(I did not request that in my batch, Mitre seemed to have
	picked this from the stable patch.)

I mistakenly declared 5.13-5.19 affectedness to Mitre in a hurry,
but it is more 5.15 - 5.18.x / 5.19.x

Ciao, Marcus


On Thu, Dec 22, 2022 at 04:49:04PM -0500, Jan Schaumann wrote:
> Josh Bressers <josh@bress.net> wrote:
>  
> > I was wondering if anyone on the list has additional details about this ZDI
> > advisory
> > https://www.zerodayinitiative.com/advisories/ZDI-22-1690/
> > 
> > There aren't many usable details at the moment
> 
> Agreed.
> 
> The advisories link to a changelog in
> https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.15.61
> but it's unclear (to me) whether that implies v6.x
> kernels are not affected?
> 
> Note also that this disclosure is accompanied by a few
> others:
> 
> Authenticated remote information disclosure:
> https://www.zerodayinitiative.com/advisories/ZDI-22-1691/
> 
> Unauthenticated remote DoS:
> https://www.zerodayinitiative.com/advisories/ZDI-22-1687/
> 
> Authenticated RCE:
> https://www.zerodayinitiative.com/advisories/ZDI-22-1688/
> 
> Authenticated DoS:
> https://www.zerodayinitiative.com/advisories/ZDI-22-1689/
> 
> Lastly, given that this is a coordinated disclosure,
> I don't know why there are no CVE IDs reserved for
> these.
> 
> -Jan

-- 
Marcus Meissner (he/him), Distinguished Engineer / Senior Project Manager Security
SUSE Software Solutions Germany GmbH, Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Martje Boudien Moerman, HRB 36809, AG Nuernberg
