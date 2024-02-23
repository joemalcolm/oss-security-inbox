Received: (qmail 25919 invoked by uid 550); 23 Feb 2024 05:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25889 invoked from network); 23 Feb 2024 05:37:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1708666821; x=1708753221; bh=dVLO1amEwC
	fuTpJXMJsq79IeHkhRb7XSymVMdogJtbE=; b=t/32GiMtVNuDASUqFoBGpl+ffB
	yMWPWXv2Uri16Kg6u8+ZNC02SRIH34ukjeVBOOSekj1HXgcWr9Yo4Tu97X51RozJ
	oeeaQFEuen6hlLJjava/2tpX8bJEGSmarYTrVR/mTye8oWSfevvMqKE1lHRlDm6r
	xQuKgF6F4yAq8FkSp9yyWkdDa7izma9t4Yysg0MSXZgXIMonzU2j7taNxslTDAUI
	ruUzBmIOZv+m85wXSc94mmqFlg8/mVUttQD/YUbs03Pnu9LEJL6+l+gGNDOM7+g0
	IN8X/heWv67eaPW0Uknv95Kp1Nkmya1GU3APjnb+0TRzGevrDw4jTO7XicJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1708666821; x=1708753221; bh=dVLO1amEwCfuTpJXMJsq79IeHkhR
	b7XSymVMdogJtbE=; b=e4abKCPdI53xTqDq6UTCm2/e9JtBkDMlzX7Fzq2Cw5hM
	f3KLuQIS0qiHapvXfOMHAUMB708ADkSx+9sSbJbCOZxE0/98si8DqIMNCQBRszyU
	1rhFGeDgClmD4CQ5sqaLlfnBSll4nwU0hTduil3yW9i8C4R138zJ4EjuIoDXiuqJ
	DwWVqcmgcyVpnAe8jQmDiAdYs79NAFvCI1ORLlHf4eG0ImyJQ4aEmGHsEEKlRtIF
	5lBEoOQ/GuD0KkPtgcI6oXdUZ7YidbMYrOfU6i8uD7m27aFMG3OZIKNS+o8Zjdzk
	29P60k8fl0m5t96wQqN4r9uo2ndIngyyVLnkl4C/jA==
X-ME-Sender: <xms:xS_YZeEGyL6rlc6FLxT8JW-X1UaKPfWz0qx7-8ZFDhu4nH1hP5JmwQ>
    <xme:xS_YZfUvu67M1nMTaCQKQcEz7MztWYkbq22fmguAZP03Q_wCTRATGAEI9rQuZW9c8
    tfGJmRxn2Q9UQ>
X-ME-Received: <xmr:xS_YZYLhBTbbDGfUWEle9fG-N026jiSwuGTeTtxXglPJkc7SQxp73334-fm4Z1ZwD3hv5YwniZP1ufu3OvkW9aQVnNRsCpyVFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeehgdekfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:xS_YZYE81y2e7JROqB6_QATrKiZmKXHlLUkESdpKM7D7rqDIMVDjTQ>
    <xmx:xS_YZUVtMMYOi6nzLucstfOTSiy9XorXxLU0AZXruEcwEtSdpPat_w>
    <xmx:xS_YZbMgTfetgJECxTkzQVx6fRO0KAOqWX_2xWMiOFbY44zIFU53_w>
    <xmx:xS_YZRj-3wJUZoNpAHVh3Z8Dhb5ar5x39Xx7lJ-flDswyziFUTP1XDVRETM>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 23 Feb 2024 06:40:18 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2024022358-appeasing-obtuse-a598@gregkh>
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
 <20240222200542.GA14535@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222200542.GA14535@openwall.com>
Subject: Re: [oss-security] CVEs issued by the Linux kernel CNA

On Thu, Feb 22, 2024 at 09:05:42PM +0100, Solar Designer wrote:
> Speaking of which, we allow for CVEs to be requested via linux-distros,
> to be assigned by one of the CNAs in there.  The current Linux kernel
> CVE documentation is very strict about rejecting such third-party
> assignments if they're "for an actively supported kernel":

That's the rules from CVE themselves, it's not unique to the kernel
here.  You will run into this more as more open source projects take
over the CVE process for their codebases.  curl and python are two
examples of which linux-distros are not allowed to do this for either.

> "Any CVE that is assigned against the Linux kernel for an actively
> supported kernel version, by any group other than the kernel assignment
> CVE team should not be treated as a valid CVE. Please notify the kernel
> CVE assignment team at <cve@kernel.org> so that they can work to
> invalidate such entries through the CNA remediation process."
> 
> So I guess we should now exclude upstream actively supported kernels
> from this offer/practice.

Yes, that is a requirement that all CNAs must now follow.

> Distro CNAs can still assign CVEs for issues limited to
> downstream/distro kernels and for issues in upstream kernels that are
> not currently supported upstream.

Yes.

> I guess they can also assign
> CVEs against downstream/distro kernels even if the code is the same as
> in an upstream actively supported kernel, but the threat model is
> different (e.g., untrusted filesystem images are brought into the threat
> model in a distro).  Sounds right?

That is probably NOT ok as per the CVE rules, sorry.

All CNAs should know how to handle this, otherwise they wouldn't be
allowed to be a CNA.  Whomever was acting as a CNA for linux-distros
knows these rules, please discuss this with them if you have specific
questions.

thanks,

greg k-h
