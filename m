Received: (qmail 17970 invoked by uid 550); 23 Dec 2022 16:19:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17952 invoked from network); 23 Dec 2022 16:19:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1671812347; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0zVdRxY1vah14B7y+M3nJfE/g039jGDK45HNv8jvskY=;
	b=u83wyRmYBGpFRw7jfGlvhk4LAewLemHftvz8khTM5q4bV7iG8vL7s/Q7lZhSG4QnQlkTtd
	Z9yxJy0pgdxhSoMKysUeB7mlzzU671MkrgDz4vPJzm4htKtZaKCU/a7HlwdmbfM05q5jUv
	SLutPmlOnoeA1zFPFVz4t2+f0yLhra0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1671812347;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0zVdRxY1vah14B7y+M3nJfE/g039jGDK45HNv8jvskY=;
	b=bIX1OVbppTRZOCAPafdx/LRX/sWNiAEYHk0F0MnKtW7WiXa5lsYqBVCTDVKXfhszQEQWXo
	EZJwnZlkP7r8oqBw==
Date: Fri, 23 Dec 2022 17:19:06 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221223161906.GC4524@suse.de>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
 <Y6W5IcAzIUb5rD1F@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6W5IcAzIUb5rD1F@kroah.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 03:20:17PM +0100, Greg KH wrote:
> On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> > On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> > > Not sure why they do not like you, but to be very clear anyone else can
> > > requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).
> > 
> > For CVEs assigned (earlier this month) to issues in drivers/staging,
> > what would be the process to remove the assignment or mark them as
> > invalid?
> 
> And who is doing this "blacklisting" of staging drivers from CVEs?  Why
> are they special when many distros do enable and rely on them?

This is just information I received when I tried to allocate a CVE for a
staging driver.

It has been over a year ago, so perhaps the this changed meanwhile again.
 
> In my talks with MITRE, they have said they don't want to make public
> statments about the CVE issues and Linux, which is sad, but they never
> mentioned anything about "we will ignore this portion of the kernel
> source tree".  Is that in a public statement anywhere that I can point
> to when people ask the kernel security team for CVEs?

No, it was in a private email, I will search for it, but I cannot
promise I will find it again.

Ciao, Marcus
