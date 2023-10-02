Received: (qmail 3225 invoked by uid 550); 2 Oct 2023 11:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3207 invoked from network); 2 Oct 2023 11:09:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1696244929; x=1696331329; bh=fi
	RWpfA2Wm+ZF+B9l9MDRm4zKXkJ+hNjSpvcoMknyyw=; b=y3GOZSNHOyqFcyig9h
	os5d+Z9+7ntyd9DvIQ2m3th3Syxp+IXsdC949qpVHl13/bpFWuRxxkUXY6LJwquC
	IsoHBDgEHAngnxqdxErXUG1zQTs8clCDRnCqeJKOA1shDXeBdVNmJ/kTNHluOrsf
	fu2WjsOsKJueyUT8izt3+BkBc90Ka3phcUiSIrSyjbutQeGwZ767WFAjU3I38B1Q
	16dU7Q+SM7vxRahc6gEL8gf/uDYLv0RbOU/ZCZjLXtanpdky/wZinN3n6+PkmTdk
	//ZFb8fsGWItPZnNUVqb9Czj5jPGHSLZbLq3FqTdhboJPtFcP0eSHpLb+yV2gIN+
	Mnqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1696244929; x=1696331329; bh=fiRWpfA2Wm+ZF
	+B9l9MDRm4zKXkJ+hNjSpvcoMknyyw=; b=YxDULgUIxokwos3Yq0h6PE3uj6/Uq
	d+S9n+FLNVbyldeA5FktWqGPPN3moYm2UNtiFbF7VX8gsT3TcGFPcu++ZIFuYPLO
	aW+d3W8JjgbLwF1PAcWms5SZnwi8mq/tSMWRzuktW/dfrZM4l1WvRkXievKCzsEA
	dF0Go6/9+v7GaDCFhfzz2Bq+OCjHE8BfWw2Aoo5GIT7lSL8dGxlqMN0fV2ONs6X7
	HcEGxUDBM/LxXAXzMLeProVSfQKVXYQ7r9BBk1dr+jqokUX3onh8AuRaURpDlJMs
	A/ncNQiANMFPh74Df5okqHM73DvR+45rsQPidY1ELBKLC/hTwnJHHGhkQ==
X-ME-Sender: <xms:waQaZTZrShcQo0EI-rrMNdgAwctJFtunnIf0r5o7u3TG_rsawZHM5A>
    <xme:waQaZSZGwLjrUDGmOp56sG3l_NPvppJ4gI0lNhxvGH6WLrmyfA4WwF54BhK-0l5HY
    NKfkVJwzk_XDg>
X-ME-Received: <xmr:waQaZV9aTP8vAWab_0w3uhysHq6jaGcjxz4TPiBPGUzIBxE8eDoEJ41-l6Dc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdelgdefjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeejheeiuedugfeffeeffeevteeugfehffejfffgjeduffetie
    eigeduvdeutedvteenucffohhmrghinheplhhinhhugihfohhunhgurghtihhonhdrohhr
    ghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrh
    gvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:waQaZZpAK0Pd2fHZmVj_s8SzEZLGeX-AVlg3JM6m55kwB7iVv7tvgQ>
    <xmx:waQaZeqhsMseN-Al5VvvwnQSyBdKOuXjO6LzWdJWxEvkPyXmjCmzDg>
    <xmx:waQaZfTISxwOor5zw_NVbVy3SaHhnOHWVUS-DBqWa90sPedUiX3LJw>
    <xmx:waQaZVTEAI7zpQAx7WHYgTDSW-n8TJAMTFU7tdijTmnfYe9aY6QDzQ>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 2 Oct 2023 13:08:45 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023100223-unlawful-reaffirm-aa99@gregkh>
References: <20231001191303.GA8910@openwall.com>
 <2023100203-narrow-reliant-2560@gregkh>
 <CAOp4FwSbzz9EgZoCjPG_0=-in3y7RpWaLmvQgFzAPGk7K8M48A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwSbzz9EgZoCjPG_0=-in3y7RpWaLmvQgFzAPGk7K8M48A@mail.gmail.com>
Subject: Re: [oss-security] "Linux Kernel security demistified"

On Mon, Oct 02, 2023 at 11:48:15AM +0400, Loganaden Velvindron wrote:
> On Mon, 2 Oct 2023 at 11:10, Greg KH <greg@kroah.com> wrote:
> >
> > On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> > > There's also an upcoming Webinar:
> > >
> > > https://www.linuxfoundation.org/webinars/demystifying-the-linux-kernel-security-process
> > >
> > > > Demystifying the Linux Kernel Security Process
> > > > October 3, 2023 | 07:00 AM PDT (UTC-7)
> > > >
> > > > Join an interactive, complimentary Mentorship Session exploring
> > > > Demystifying the Linux Kernel Security Process with Greg Kroah-Hartman,
> > > > Kernel Maintainer & Fellow, The Linux Foundation
> > > >
> > > > There is a lot of misunderstanding about how the Linux kernel deals with
> > > > security vulnerabilities.  This talk will go into how the Linux kernel
> > > > security team works, how changes are propagated out to the public, and
> > > > how users must take advantage of these changes in order to have a secure
> > > > system.
> >
> > It's going to be much the same talk, with only minor tweaks as I forgot
> > some points I wanted to make in the first one.
> >
> > Thanks for the link to my slides and presentation, glad to see that
> > information get spread wider!
> >
> It was a very insightful talk. However, I'm not sure whether companies
> would even be willing to start a conversation with an open source
> community without
> an NDA being signed.

Then those companies are not going to get very far, sorry.

We've been working this way for Linux for a very long time now, and it's
worked very well without any NDAs.  For good reasons, you never want to
sign one as it turns out to make the info you learn in them _more_
likely to leak, talk to a lawyer for all the fun details.

thanks,

greg k-h
