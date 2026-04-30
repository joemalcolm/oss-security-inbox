Received: (qmail 7451 invoked by uid 550); 30 Apr 2026 07:15:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7421 invoked from network); 30 Apr 2026 07:15:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1777533337; x=1777619737; bh=a1ccymTTuH
	7NT4hpzFCRdcg5MkXTD4ER8tjwTkKqssI=; b=L9q4n4dQtWceRrJbcYmG4AMVmS
	ofyfPzgSmt1NnS6xokc4ZuvIfuk9l70/er1HCL9Jjj5405oyCWEw+OFVesnLzHEs
	fuVb7TfItBJrpCcV+pTt2Mt6K4NejkILmA+U0hhpFkv+x961V0ZOjshgIw3eGPuy
	jK6dR5eRVDN7xUvvxh+2uxtdqS2v0T0KNc37ZXwEHte05YrW/2FCRcagtYQN0NRl
	5cX+eJQH6KVAHrLPKouDzqznzMSlE3s4o4t+3H8AeV3wHQ+QFjhfJiMP8uYp8LNe
	Va8qTvlw/e1uQ6K8ekxnrfM6o84C0l/1AGOcepH+n9u5E5HaXREfR/5u90OQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1777533337; x=1777619737; bh=a1ccymTTuH7NT4hpzFCRdcg5MkXTD4ER8tj
	wTkKqssI=; b=irvnBfw0sCPkBTO+S+srja0BFMxPhJ/Bf3C1c/A6PDmjbvNr1sA
	PSMB9x8jhv1h3Gr5yy5pFBGnUWCDfKJUcQXSft3Si4vfD+EhWlmBm1LjCT8q84SR
	aoEj2UaENgPmKysUKLvGG/ko9sIuU6bJtadXpw9k4MG9YoG+9+xr7EcQ2c9kmT4r
	R8r4pvRZARxEGaLcIgkXfJf2ZFf8b2CgPqmfIcae1VCG4V8187teSLyUqNrV67bu
	Ry/uGMN3269JOP9VbFcQTt8mHM8+QoRapfyqmCDFfqkgYqWwcwjkhSiwxr766gbD
	rTVyvtR8/7TbJS0FyNXVxtHaAQZDA/oY9GQ==
X-ME-Sender: <xms:mAHzacDSk_3VfustoNOH9RAKDhA21mA2fa9I7SrZ13_JknaB4lZX3Q>
    <xme:mAHzacVJaWnYxqsiEcGs9D_9rtaHNtLf86jPbgm4ILCn4UPcQdhVBxfs86jEsE70W
    aZn2gNgeCWaljPkZ1PCgmcXQ-D1gLlfhR7wjVwOKc-YPGDVI-w>
X-ME-Received: <xmr:mAHzaaCc-P4KJOHbmPCdcECD1D8gr9I8IgnF_zRxoe6lbpDiKpbHjQHr-CG0a1wj5R7qhpV4kDtRfKuzZYd2yQd70Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekieeilecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcumffj
    uceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeegheeuhefgtd
    eluddtleekfeegjeetgeeikeehfeduieffvddufeefleevtddtvdenucffohhmrghinhep
    khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopeegpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhish
    htshdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtohepjhhstghhrghumhgrsehnvght
    mhgvihhsthgvrhdrohhrgh
X-ME-Proxy: <xmx:mAHzaf-9qF7VmD5LD5-OvzMewV_9cpbffgN-a4-uR1Abe2gNq8zOQA>
    <xmx:mAHzaRETi7ng4Q1lkGVr-qLkaJiIMMfsQ5On7R20IbSBF64UY1xW9g>
    <xmx:mAHzadNKMWBj--Ujlz8MY9-x0LblbHgELiZ_jlS-dxosPbh-h8CmLg>
    <xmx:mAHzabcAzdVEgpyX-tGTJ5VAj714Cq0G4BZ3qz7l4MaGpp17-hZu1w>
    <xmx:mQHzaRYSH-AUQlksOl7SCS7khz4Ib__qYu4HeUghWIkbYuYpwe-JthOl>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 30 Apr 2026 09:14:58 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
Message-ID: <2026043026-treat-devotion-23d7@gregkh>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afL-QhLfEKqHZqka@eldamar.lan>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Thu, Apr 30, 2026 at 09:01:22AM +0200, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Thu, Apr 30, 2026 at 05:52:37AM +0100, Sam James wrote:
> > Eddie Chapman <eddie@ehuk.net> writes:
> > 
> > > On 29/04/2026 21:23, Jan Schaumann wrote:
> > >> Affected and fixed versions
> > >> ===========================
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 6.18.22 with commit
> > >> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 6.19.12 with commit
> > >> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 7.0 with commit
> > >> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> > >> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > >> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > >> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> > >
> > > So this is one of the worst make-me-root vulnerabilities in the kernel
> > > in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
> > > were released with the fix backported.
> > >
> > > Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
> > > don't see anything in the upstream stable queues yet as I write. My
> > > guess is backporting that far back is not as straightforward. As this
> > > was introduced in 2017 all those older kernels are affected, right? Or
> > > am I missing something?
> > 
> > It does not apply cleanly, no. Attached is the workaround we're going to
> > use. I'm not an expert on IPSec but I think this is the lesser evil.
> > 
> > I attempted a backport but ran into a few API changes and wasn't
> > confident enough to muck around with it, especially for something to
> > deploy immediately.
> 
> Backports have just been posted, for 6.12.y:
> https://lore.kernel.org/stable/2026043038-unwilling-slogan-a20e@gregkh/T/#t
> 
> (but I do not see them yet for all versions, but guess following soon)

Yes, they are following, I'll be doing some kernel releases in an hour
or so with these all applied.

thanks,

greg k-h
