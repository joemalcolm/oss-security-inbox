Received: (qmail 28603 invoked by uid 550); 16 Oct 2023 08:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28579 invoked from network); 16 Oct 2023 08:24:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1697444637; x=1697531037; bh=Zf
	OnAlUdX9VvvDCUVzGZkk/GZXLpK08Nm3YlyUvtdLc=; b=KAaNTuj1zV0+4lVMO2
	1JUne/Qe5d8ojgihEYHD2V4y7X5SkB8ZwKZYoHCbuR+qYKkg+gylqZr52bCkzo+y
	qgGj9lLhtnuC7oHjLNxdcxIdeWZZaEIVUoqstG7u1IQ1jYTRXLuh2YPa+5v3gVSF
	26QPmblW1qwNcV9aIpPUUfs5CURQNY85kZf4iGoz3EM2rmhA9bHbapW9pK5kGl4p
	DahcUPCXX7Pmwo/VkY1l+s9NJtbuAy2Ig546kB99GMkUYYD0O6TX6rhA3rvzztFB
	p/usokG+dSq8q44yHBc+XJtTBYzteZHiuKTK6Jj1uML7HqxsdKmK9ZdWMRIRhgqi
	WSMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697444637; x=1697531037; bh=ZfOnAlUdX9Vvv
	DCUVzGZkk/GZXLpK08Nm3YlyUvtdLc=; b=Fk7Ruz70l21HS4gRp3O/hgjHNJEIr
	ldCjUgVQycsm4tcz3eO75hnzR/+qgY1SSzldndFg19261xtcghlolxztQypzBHHP
	vxQxmzOk0YdSstsmWS6S9mUY4e/RMCSKQIqrNQt/SNJgHXmS+qjfS5X3nwcnRJ6L
	W+6ME8dvShuB5ecP1gnw58Zjg1Iq8MN0ICb2poHvfnd0RdS7XKinlshMZRA0G7Wc
	4fN/e1pOp6rfFPbI72QoelEhGiomzbPBWA1GG3FNuKxu2j/Olq9HUFEmD+3MmQjX
	H5+9zZrA7s0Gz4A5b+y/9XZVdXqHhAKL+jcpPuYwnIc4ClNz0IHoILwhA==
X-ME-Sender: <xms:HfMsZetMvKZ0JTPwnKl3jd7l3r2tiWMN5ORbebUwF3ah7i45pxoUuw>
    <xme:HfMsZTf-4SVVC7iViAQHbraP0w2B4qJ2GIuH4usO6SVqA6NiF-N9AVzyWjV4Pw_k5
    QkBHInE7PXnMA>
X-ME-Received: <xmr:HfMsZZz_si9Ay_Sd-GkQWfpYFd6pnutR8zVDaWbXvTCuxNXqqjhZOCtRcow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgddtudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:HfMsZZNpkFGnqAFz8hsX6Mme_5_xqFXhRwgQHGoq-EMOYvE0UsndXg>
    <xmx:HfMsZe_JHoM1iLwSwjT_nAWaHxbqlomjkb8m5AkLD_GAl9Ps79Q_uA>
    <xmx:HfMsZRVRw2jdOwhtQPOaYhd0VbYGZAOD7H0BoHdj8k3y9Ged4JjKyA>
    <xmx:HfMsZTH0rVDD2sCOS41CYqTDtftCny7AXbl1pLAyIBIBXoCIizXgfw>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 16 Oct 2023 10:23:50 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023101612-snare-dart-c7cf@gregkh>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016080850.GF10758@suse.de>
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> Hi,
> 
> Regardless of your viability of subscription status I think we also
> (sadly) have to consider current geopolitical issues here.
> 
> As far as I understand, US companies and US citizens are not permitted
> to work with Chinese organizations and/or Chinese nationals.

They can when working in the open on public projects and other
open-source-like things.  For "closed" lists and groups, please consult
a lawyer as the rules there are quite varied and depends on the
countries and companies involved.

But to be sure, again, consult your corporate lawyers, they know the
rules and the issues involved better than I do.

good luck!

greg k-h
