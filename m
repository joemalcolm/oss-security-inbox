Received: (qmail 18208 invoked by uid 550); 16 Oct 2023 16:49:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18187 invoked from network); 16 Oct 2023 16:49:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1697474980; x=1697561380; bh=SFUzAvPAKUVugG1il+EYit6ff/Gk8R16oUM
	2fJL3yTE=; b=jvOwNOq9Ryw8NDugmA7cRoglZ47Zst8kHZw91caHqYAEuLf5IyF
	4ILs59tdEAqkaDlY0AdP2xLOtSRU9j+DSSXNFaAZWn0vRZ3se4pKNi6vE59wOFRP
	PHxRMycMB/vr+LGFxoVGiOxQWALQ4UXNXENuj1imzdP1xINdTORw2jaTueWJ7tjQ
	PAbTzC+oshNZVoGnYLm3b5TPpWvdYlGx/fyztYDtkNxhV6XEwW0UO8FA+paeyRZg
	3kf/gZFRk4SeNDkSa1PT+6nZH8zRa0NH896oZsPVJ3thKlZcUV8e9MDLnAyDrvQh
	veax9x45lHkO5cmmRMVINGlSNcfD7E+OjBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1697474980; x=
	1697561380; bh=SFUzAvPAKUVugG1il+EYit6ff/Gk8R16oUM2fJL3yTE=; b=N
	N/kot4HK4YRK2vvs1o2MXHVJO3DtZOuv88HKkeIyHGjOsAHUknBNZELKWhfn7c+I
	rQC7pTK9n6pQ6nhQvYWwaN1sZ7Zi5/NcA2yMk1sUD6hZckf8VYSerCMFV5J2Codr
	Ej/oo5zJZbcBIsETfoaYs2jDRnjc1hKEhzDckwOM+u0a1UuRhxp/bWr96HHWDX70
	fyW0N3VdkxTjUOBX8kX4/vaQgp75xjsF2nCQ3w60qe4iapr+tWzitIEKSkBfXrtG
	2Gyp6RpOQhcRR0lAs6zUK6XpBsL6B481gLtdqGO5W9PYjgIRs6uuqO89CqOVqxDM
	r3wfFSZfSLs9ahPzf8HjQ==
X-ME-Sender: <xms:pGktZRz6jp6KecXKEW3wvrBD6del-DPJrXonXSfkzw1Ox87DIKOs_A>
    <xme:pGktZRTCWxm6fls2r1joBhC1MsePHWu8lgcDU8I8ksveyhOV8Xli06tJ9FfURpmSi
    qglnfQhRgJOUw>
X-ME-Received: <xmr:pGktZbXyP3a_e8P75dHzOb_OD2tBR_Rd6HI4vFepxXjjULPz2hOquLBkE6E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgddutddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggugfgjsehtke
    ertddttdejnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeehgeeigeetvdejvefghfehgfehueduieehgeduhfevge
    egiedugeeivdevtdekgfenucffohhmrghinheplhhinhhugihfohhunhgurghtihhonhdr
    ohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:pGktZThhCMfCi1LXLo2uA7bBSZFwlt5ZHU0HX_tFBd5Y_FchULjpZw>
    <xmx:pGktZTB5zbGfEd4slaQv_buZnQRT-qnZ7xJJ-Yi5FRSicaBB5DhX2A>
    <xmx:pGktZcJVhCgitrh9T_5dIeJ8IednqYIrafc4xyhXFyW8VsX32H3cqw>
    <xmx:pGktZWrRcp2AAdEKTnQ-UJZ4Xm2G8kO_yYJqPl3MiP851BcTkpN4HA>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 16 Oct 2023 18:49:38 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023101605-outshoot-undying-fb27@gregkh>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
 <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh>
 <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Tue, Oct 17, 2023 at 12:15:30AM +0800, Aron Xu wrote:
> Hi,
> 
> On Mon, Oct 16, 2023 at 11:34 PM Demi Marie Obenour
> <demi@invisiblethingslab.com> wrote:
> >
> > On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> > > On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > > > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > > > Hi,
> > > > > >
> > > > > > Regardless of your viability of subscription status I think we also
> > > > > > (sadly) have to consider current geopolitical issues here.
> > > > > >
> > > > > > As far as I understand, US companies and US citizens are not permitted
> > > > > > to work with Chinese organizations and/or Chinese nationals.
> > > > >
> > > > > They can when working in the open on public projects and other
> > > > > open-source-like things.  For "closed" lists and groups, please consult
> > > > > a lawyer as the rules there are quite varied and depends on the
> > > > > countries and companies involved.
> > > > >
> > > > > But to be sure, again, consult your corporate lawyers, they know the
> > > > > rules and the issues involved better than I do.
> > > > >
> > > > > good luck!
> > > > >
> > > > > greg k-h
> > > >
> > > > The question is _who_ should consult their lawyers.
> > >
> > > The people deciding if this group can be added to the closed list as
> > > they are the ones responsible for it, AND then if the group is added,
> > > the members of the list need to talk to their lawyers to see if their
> > > country laws allow them to participate in a closed group with such
> > > members.  Many countries might be fine, many might not be, it all
> > > depends on the participants and what country laws they must abide by.
> > >
> > > So in short, everyone involved in the list!  :(
> > >
> > > good luck!
> > >
> > > greg "I talk to too many lawyers" k-h
> >
> > The result of this is simply that those who do not have access to
> > lawyers on staff will not participate, which will reduce the value of
> > the list substantially.  I suspect that most people who report
> > vulnerabilities via distros@ fall into this category.  I know I do.
> >
> > Therefore, I recommend rejecting the application as too risky from a
> > legal perspective.
> >
> 
> Not matter what would be the outcome, I'd like recommend an article
> from Linux Foundation which I think is a good read:
> https://www.linuxfoundation.org/resources/publications/understanding-us-export-controls-with-open-source-projects
> 
> I'm not a lawyer though, but here are a few cents:
> 
> 1) There is no general restrictions against Chinese organizations and nationals;
> 2) Open source software (which is publicly available) is not subject
> to EAR (Export Administration Regulation of the US);
> 3) According to § 734.7[1] of EAR, "knowledge with the intention that
> such information will be made publicly available if accepted" is
> treated as "Published" and is considered publicly available.
> 
> If I understand correctly, distros list is targeted to open source
> software issues with a policy[2] of "Please only use these lists to
> report and discuss security issues that are not yet public (but that
> are to be made public very soon)", then everyone could retain their
> peace of mind.

But note, the information is _not_ public for a period of time, and so,
might fall outside of the information described above in the lf article.

Especially given the content of the information as well, this isn't just
"here's a patch to add a new feature for foo-baz" type of stuff.

Again, if you have questions, please talk to a lawyer from your company
as only they can answer it properly for your situation.

thanks,

greg k-h
