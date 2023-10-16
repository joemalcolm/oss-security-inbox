Received: (qmail 13813 invoked by uid 550); 16 Oct 2023 15:01:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13789 invoked from network); 16 Oct 2023 15:01:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1697468446; x=1697554846; bh=Qq
	8mAFE2V0mXC5uNWzmr0SCZqUsZFL/kKqepYMEtOhs=; b=YfukqgdHROOUdoBzSY
	dvlyuw7rLkapCKWMgMKz9YFusOX9TiPgw3PElB0H0YB1d58aR58kbwSi3vNNKr/1
	yj5f7+8YJL8feFJ/L5a802yOoNoZ/r5pWZnIP9EzSadLxL8i4/aEcLTdDshBgwvL
	qM9HCdU4lEwq2oHZ3mUupMSG2r4U9vd9SYWrms6ZDYwsY3YB1tqnDpqM9AROJvkc
	cYF/Z6L4g+Hq239kRuuO/4eghbrYa37O6K3WE5UrPIaJdYwhSKQH31pvFx9kmVRb
	C+9hlykgNsdps6qbChT7bN6L6e0GGmmLvTinQLsqK9+XQCmqApoSUUKh8Sy1gx6v
	mEeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697468446; x=1697554846; bh=Qq8mAFE2V0mXC
	5uNWzmr0SCZqUsZFL/kKqepYMEtOhs=; b=kOefyVsR/uGTmT5Gq0zua7MsneVLG
	FAmLFavWWPz/zNEEUu9V4XXHJOme+3VdoQavw7rxKhLt6Ksefbhh9l/82h4jlPij
	hReR11b2dOCD6YAg3uWUFW5oWeQgIo97ecZVp7f5oyQSHGn9lCwPN15WGUGu4fAK
	GbKV9GSm3qTFFc4m4ZYHIc79pYm3vkG4CdUk/IfjsHrSkqE+9WFKOcPWs0q1Rof/
	licQRQ1CkU2qAQZ6PaRW2vfiOYsMfWT/XEl/qX27Jrub7/5zwgEg6oiE9yXTGoOJ
	qSgDapTs0vIprWfSVTy+2tY612kLz7sJYdN8CLPvUvg8Jg9ZJXzwABouQ==
X-ME-Sender: <xms:HlAtZVES6QCmEGyGdfZOTfnaXjkb0AHZRv8CSXWNeKnMSCJdMVkfsg>
    <xme:HlAtZaWuUzJXblE_h4PVvMMY9aCRoPFpHeSAtMMK9uF66NTjE5Hl-3F6TOhXW2uEa
    -0VxOASxDUaEg>
X-ME-Received: <xmr:HlAtZXLyBap2K7PiGxbuf5iV-uwvAnzDAZG_Kkrv1tb4r4oKxlooNXRkUW0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdektdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:HlAtZbESVl7I4TDhMqWxMJaiKWqHH3ziTcsqA9fl4_rc-CWJRn9TYw>
    <xmx:HlAtZbW_4HRgZU-ClWXo_-l5eGbkLXFWxE3juMKERE6iGpBM2N_PXw>
    <xmx:HlAtZWPasOGWnboosELBMD4TYBHjOeEq-p4Lp3znvsT4RzCyhM8ZGQ>
    <xmx:HlAtZccrIJ1g2Xz6EPY03lHizwYhMNRBK9NsEGHfH6anBxqEUneoWA>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 16 Oct 2023 16:52:32 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023101622-imply-tidal-b6cf@gregkh>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
 <ZS1CSkbTjDYdGq8F@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZS1CSkbTjDYdGq8F@itl-email>
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > Hi,
> > > 
> > > Regardless of your viability of subscription status I think we also
> > > (sadly) have to consider current geopolitical issues here.
> > > 
> > > As far as I understand, US companies and US citizens are not permitted
> > > to work with Chinese organizations and/or Chinese nationals.
> > 
> > They can when working in the open on public projects and other
> > open-source-like things.  For "closed" lists and groups, please consult
> > a lawyer as the rules there are quite varied and depends on the
> > countries and companies involved.
> > 
> > But to be sure, again, consult your corporate lawyers, they know the
> > rules and the issues involved better than I do.
> > 
> > good luck!
> > 
> > greg k-h
> 
> The question is _who_ should consult their lawyers.

The people deciding if this group can be added to the closed list as
they are the ones responsible for it, AND then if the group is added,
the members of the list need to talk to their lawyers to see if their
country laws allow them to participate in a closed group with such
members.  Many countries might be fine, many might not be, it all
depends on the participants and what country laws they must abide by.

So in short, everyone involved in the list!  :(

good luck!

greg "I talk to too many lawyers" k-h
