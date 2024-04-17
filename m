Received: (qmail 28269 invoked by uid 550); 17 Apr 2024 06:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28248 invoked from network); 17 Apr 2024 06:19:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1713334759; x=1713421159; bh=ez/EQH1OLA
	hZDK6aDbi6VfLyTzy43QpmkqENgD2jzyc=; b=uczl5ci+Nu9utWdrJfia+Nsarw
	JDrDNC9ASeiiJOU4gcMuPb28l+zugMwJsqp2lzyikc5c8J7a2Egi8ZJCkkNH+1cP
	1rh8nGJnMt4Dznub7gI1LUsGEsZsNM6CWCXRuhXDc9PYXmyxBbhFMXoLVOMfmWqY
	4lzUngh70isS2UVcvaD50Y8B+HWa88D6gRKewJtA3oOHJcVTgG+4WSsJXd6X7Lf7
	y7OHeWBvBtfRSIS0xaq86EiC5oRUObeCTQeyieFq+PJoNns+96rUwAt04GKG/78s
	kULJhhjylLHTx8U9f5sHSloj5K2/FghIpsW5er46vVcur4HFRpQ1vdux9E+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1713334759; x=1713421159; bh=ez/EQH1OLAhZDK6aDbi6VfLyTzy4
	3QpmkqENgD2jzyc=; b=XdCkMcFWrrmpcQ+b1dvUGw4v8BgWcQzZ1DjJuvAWaby1
	Dnk0aMIa9ApF2B+Dc/o8PY2wrBzSO2ALuxwbgalZHH2LjGE+F2oUUwu9aeEM9h0O
	d19H9fo/J6+TDQ8ODUC3xpdWtjkk6yUm2FSLww10Q5rTpdUbNeQA2K6qMiH7LyY5
	BqPVLzthabw/6B4ORB3dE7ysW4SMj7ihezF5DmZWVc1hEg1WJsjlaJC3FDjHMDv+
	5zviZxOTJGt6Wy5IJJGpRc8UrEACyrIOcBx+JAEDXB3lj19I5wPUD7Cq2GBHID+w
	pMvinMcJG+2IubG8eYbxSESJXpVPQoBnaEncv8rSrw==
X-ME-Sender: <xms:52kfZgkkbD7LGMdzbcq-EmiMwz0vOVvubIZ97KJ-_95LeFs0-f_8Nw>
    <xme:52kfZv2JrQo1PBfxUqHOzbnxD-ryMI3utNbIjOBfm0iNmgHQeB0rrXoMgPcQI3zjU
    CtRl2s0C57pkA>
X-ME-Received: <xmr:52kfZupmeQjqVRwAfkkwt2K7YE00juEA4xuRJjVVGAAzkHDS1a_8XQmDwnMBhvoHmniZKJl4MIKDkauB96KIDQ1ysBC4Zc2OdPZ8xA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejjedgleehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepgeduudefudejleejffetgfefgeeivddtheevgeejhfefhf
    dtleekiedtffeftdevnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpthifihhtthgv
    rhdrtghomhdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:52kfZsl5wr4AKmpugpjWY2U-LE-VBOdVPaXAimtMsVaVUTavGTAdbg>
    <xmx:52kfZu00yMFqG3MSYswkUKUenrjA68xP9NYOMPiCFzqkjXDyaylrTQ>
    <xmx:52kfZjsTLjOgPsoEN5q_gvni-R64yJrmOzgdsch29dfsWYPYBuqX6w>
    <xmx:52kfZqXD5oatfHxztrEya_fWiig_Q57DOVcuf9LYyzcNth0e8mOB3g>
    <xmx:52kfZsASuumLRdRNEzBL056qenA3CgqFN2_IRRs2OCdUx66ScE0ePZ32>
Feedback-ID: i787e41f1:Fastmail
Date: Wed, 17 Apr 2024 08:19:15 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2024041743-muskiness-agreeably-5d03@gregkh>
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
 <20240410211457.GA20881@openwall.com>
 <20240416201602.GA21501@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240416201602.GA21501@openwall.com>
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

On Tue, Apr 16, 2024 at 10:16:02PM +0200, Solar Designer wrote:
> On Wed, Apr 10, 2024 at 11:14:57PM +0200, Solar Designer wrote:
> > On Wed, Apr 10, 2024 at 09:56:33PM +0200, Dr. Christopher Kunz wrote:
> > > 1. YuriiCrimson's version (April 6-ish)
> > > 
> > > It seems to use GSMIOC_SETCONF_DLCI, PoC supposedly works on current Ubuntu 
> > > and Debians, but is stopped by LKRG.
> > > 
> > > PoC and writeup are here: 
> > > https://github.com/YuriiCrimson/ExploitGSM/tree/main
> > 
> > According to YuriiCrimson:
> > 
> > https://twitter.com/YuriiCrimson/status/1778163455075217443
> > 
> > "Exploit 6.4 - 6.5 using race condition in gsm_dlci_config.
> > Exploit for 5.15 - 6.5. using race condition in
> > gsm_dlci_open->gsm_modem_update->gsm_modem_upd_via_msc->gsm_control_wait.
> > We just waiting on gsm_cobtrol_wait and restart config for make free
> > dlci)). So it two zero days."
> > 
> > > 3. ZDI-24-020 / CVE-2023-6546 (January)
> > > 
> > > This also exploits a race condition resulting UAF in the gsm_dlci struct. 
> > > It's a little older.
> > > 
> > > Writeup and PoC: https://github.com/Nassim-Asrir/ZDI-24-020/
> > > 
> > > What do you make of this?
> > 
> > So it sounds like there are 3 different bugs recently found in this same
> > subsystem.  Perhaps someone can follow up with links to relevant commits.
> 
> I'm puzzled by the lack of follow-ups on this, but anyway @FFFVR_
> tweeted they also found (more) vulnerabilities in the n_gsm driver:
> 
> https://twitter.com/FFFVR_/status/1778244738833080571

There has been lots of bugs in this driver once people started running
fuzzing on the code, which is why we applied the following patch last
year as you mention:

> Also relevant is this mainline commit from August 2023:
> 
> tty: n_gsm: require CAP_NET_ADMIN to attach N_GSM0710 ldisc
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=67c37756898a
> 
> which is now being backported to stable/longterm kernels:

It's now in the following released kernels:
	4.19.312 5.4.274 5.10.215 5.15.155 6.1.86 6.6

If people are curious in helping out, here's a good summary of the
issues involved from the current maintainer of the driver:
	https://lore.kernel.org/r/DB9PR10MB5881D2170678C169FB42A423E0082@DB9PR10MB5881.EURPRD10.PROD.OUTLOOK.COM

> Subject: Backport of 67c37756898a ("tty: n_gsm: require CAP_NET_ADMIN to attach N_GSM0710 ldisc") to older stable series? (at least 6.1.y)
> https://lore.kernel.org/stable/ZhbiWp9DexB_gJh_@eldamar.lan/
> 
> Since there are multiple known unfixed bugs in this driver and since it
> poses unjustified risk on most systems anyway, here are some mitigations
> we can apply:
> 
> 1. At kernel build time, don't enable CONFIG_N_GSM.

I recommend this one, almost no one has this hardware, it is very
specialized, so unless you have hardware that requires it, don't use it.

thanks,

greg k-h
