Received: (qmail 7384 invoked by uid 550); 22 Apr 2022 08:28:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7361 invoked from network); 22 Apr 2022 08:28:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1650616104; x=1650702504; bh=EASlUfiy9O
	R+5I/xLbbnWY4nqn7YE7b2wiE2kdRQSc4=; b=iKwRKxFJBRZnP1oK4NsPJ2XN7q
	gn51u9lSqMOg+q2daVcmBXbIxSk0E59fkfDoKf3ztgW0gQ/qSjwe03fLWo+rPnZK
	Qbmdssuno8zbILO0d15PTR1kaGep5dAbFhEtRqhmE1vByDhuG3H2I2G+A1PB33ch
	G5jevgWtV1wrBxGN8ZpwMbbP6Mzmbm8OvcafRePaKg+zkZA29rvR2p8G9CcfztyZ
	Mt3/YavroVVZDHSO3RHWmUenkiUb+3TMqRR95iN4WjFZgH+HY+8qzLtxy/xvvye/
	DQqzeNsbJ0xLascfzh4EH2aFf3/Yud8vXjFiLIeZpsMAhvQ06KENrwsT98Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1650616104; x=
	1650702504; bh=EASlUfiy9OR+5I/xLbbnWY4nqn7YE7b2wiE2kdRQSc4=; b=e
	gOwsat0AjL7cnF9AoopEEYn4L2nyIvGl4/QLsN76OvF24Xe0jcQhDdeM80g7b//D
	TzqYTjgQLBC+QHWFzmP13ij2T5GxmraiAnmlBSsjvuNFoJuxTCdsluR3ZY2cEg62
	9EpslC8Izu5BSntBE1BTfE32ZQQkFc0BxVWVr4FZrFTYkoyJOF3gQbRhRCNNu70w
	cNF5W95wN5lfiG990pSsxhI/159pPpxfL4L0bYZmnNT+3+Wx0JALInIWa7tGgf+Z
	6A4AlKJOHrmdu7zA+XqBBY+XI9gmWn+o9xybX+yMLqq/1u/5zWgQqH4IO9hNWcd5
	ZaryFHQM19ZbPGNaNkeNA==
X-ME-Sender: <xms:J2diYlI22gpvN_EwLfoQHq5D7JHjQTwdQYijZccPsN65LqzNaGniIg>
    <xme:J2diYhLpRCPjNs1m2l7MVCwv9PWLE938bqjg_h4F8OWovX78OQ5nAkjVbFZyQ16oU
    9SqYZ4tsQC-gw>
X-ME-Received: <xmr:J2diYtvAtV2LH1WnzaefNd50MJbFJBImvY4spq2jEgs3_J5SJIEq8Gkwj2NXtEg04KxJlNiwD_63DAZPiRM2sFUTJxJh74Jk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrtdeggddtvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:J2diYmZLbyos_ZOdrfA0nqXLJntWtOKmlEeoCoL0FFJba4tSZH7GaA>
    <xmx:J2diYsaCbEGZsa9JV-TvTGgQ8194Mq2FnDwyzaTGqjiWygVKlOdH-w>
    <xmx:J2diYqAuIBxO7UfrlD59lMUhHLl1mCc-adQ46myAF3BbtRhSc3-mHg>
    <xmx:KGdiYlD-KQRYS8Q0FLSI0eKsabwlObbRf6AWCy1wHfjl7_UdhxiOjw>
Date: Fri, 22 Apr 2022 10:28:20 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YmJnJClvUcrgX31h@kroah.com>
References: <CAH5WSp5hx0pPjhbUoyduc-Nk7fW12pLsJqBFFQ9S4p7ZdgkHcg@mail.gmail.com>
 <YmGV8gVeaVN9IMve@kroah.com>
 <20220422070546.GD7624@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422070546.GD7624@suse.de>
Subject: Re: [oss-security] CVE-2022-1419: Linux kernel: A concurrency
 use-after-free in vgem_gem_dumb_create

On Fri, Apr 22, 2022 at 09:05:50AM +0200, Marcus Meissner wrote:
> On Thu, Apr 21, 2022 at 07:35:46PM +0200, Greg KH wrote:
> > On Thu, Apr 21, 2022 at 11:44:54PM +0800, Minh Yuan wrote:
> > > Timeline:
> > > * 21.04.22 - Vulnerability reported to security@kernel.org and
> > > linux-distros@vs.openwall.org
> > > * 21.04.22 - CVE-2022-1419 assigned.
> > 
> > Why are people assigning CVEs to things that require root permissions?
> > Or are there distros running on kernels older than 5.4 that allow
> > untrusted users access to the drm ioctls directly?
> > 
> > I'm curious as it would affect the backporting of the needed fixes here
> > (or not.)
> 
> It does not, distros like SUSE give out ACLs or groups write perms to /dev/dri/card0
> to it via udev.
> 
> crw-rw----+ 1 root video 226, 0 Apr 22 08:47 /dev/dri/card0
> 
> getfacl /dev/dri/card0
> 
> # file: dev/dri/card0
> # owner: root
> # group: video
> user::rw-
> user:marcus:rw-
> group::rw-
> mask::rw-
> other::---

Ok, so this is an issue for older kernels, I'll try to bump it up my
priority list for backports, but I would really like some help from
those distros still relying on those older kernels for this work.
Especially for testing.

thanks,

greg k-h
