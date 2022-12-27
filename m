Received: (qmail 19804 invoked by uid 550); 27 Dec 2022 10:34:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19782 invoked from network); 27 Dec 2022 10:34:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1672137257; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kkYheI1mTa8zdwO2PDpI2+P0tfReAgr/X1qB7MWj8GA=;
	b=ByFkN63D0qICMMxE72G0y+skGVKU/nw44LafU//2GB3TLNIsr1adrCleW/jY/8lMnv03Od
	2VNeMUK8itZjXbw869svHYWEVvrvuLf4osDDGh5coOxZ7AmcHTYiEFDoob2O8NFU4HTjAD
	xukA61rj1uthrI8ryv5etpQz7USlap4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1672137257;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kkYheI1mTa8zdwO2PDpI2+P0tfReAgr/X1qB7MWj8GA=;
	b=fUxOtI1egm2Uvng1Ux3zk0qMvkTHnSCli9122h0ngeDhIFehDrf1wZXlfTL0TI/r+EhzhJ
	VTwCGnAdfHWqxRBA==
Date: Tue, 27 Dec 2022 11:34:16 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221227103415.GI4524@suse.de>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
 <Y6W5IcAzIUb5rD1F@kroah.com>
 <20221223161906.GC4524@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221223161906.GC4524@suse.de>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 05:19:06PM +0100, Marcus Meissner wrote:
> On Fri, Dec 23, 2022 at 03:20:17PM +0100, Greg KH wrote:
> > On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> > > On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> > > > Not sure why they do not like you, but to be very clear anyone else can
> > > > requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).
> > > 
> > > For CVEs assigned (earlier this month) to issues in drivers/staging,
> > > what would be the process to remove the assignment or mark them as
> > > invalid?
> > 
> > And who is doing this "blacklisting" of staging drivers from CVEs?  Why
> > are they special when many distros do enable and rely on them?
> 
> This is just information I received when I tried to allocate a CVE for a
> staging driver.
> 
> It has been over a year ago, so perhaps the this changed meanwhile again.

It was 4 years ago for CVE-2018-8822, where ncpfs moved from being good
into the "staging" tree due to quality / maintenance issues.

> > In my talks with MITRE, they have said they don't want to make public
> > statments about the CVE issues and Linux, which is sad, but they never
> > mentioned anything about "we will ignore this portion of the kernel
> > source tree".  Is that in a public statement anywhere that I can point
> > to when people ask the kernel security team for CVEs?
> 
> No, it was in a private email, I will search for it, but I cannot
> promise I will find it again.

I got information back from Mitre on this topic.

This thread from you and Moritz in 2014 set the Mitre non-assignment policy regarding drivers/staging/

	https://www.openwall.com/lists/oss-security/2014/03/05/6

If this has changed in meantime (e.g. that security issues in the
staging tree are CVE worthy), we can ask Mitre to allow assigning to
staging drivers again.

Ciao, Marcus
