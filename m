Received: (qmail 28338 invoked by uid 550); 24 Mar 2026 12:32:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28316 invoked from network); 24 Mar 2026 12:32:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1774355521; x=1774441921; bh=4/kIAkzXCa
	EwyFMWc/BA68EXScKywCVPhm+DDXoZ4JI=; b=fLwuWhYw1wYgcbmS1iao0VKwIQ
	tmw+L/6Bs8aSDk1Rvz7cljScuD/kTOIH/uhzgnItR1TIxwdNsSu+OoJPwOTTIsOi
	3dcZTMxqg0EWSSwNKqocPITA+17Thb/q874T94yPd9unEmQypQBS4x1iATcygKlY
	9GLH9h1NefrfOCA7us9FQIN4Bnjqe0S6+uQnEixGo6K+QTLirZKjePxTf0j8FyFV
	C9fkTFn5pcIRhuOR7jtiHG+0BlyrheKUmgym9pySLF+X2QoD501aRVhka4L5ZXEW
	kAzPxVl22kiNQHJCjbsuBgjDGPxHgMeOrmwntYHLMl8koIQES38Kd76FEaFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1774355521; x=1774441921; bh=4/kIAkzXCaEwyFMWc/BA68EXScKywCVPhm+
	DDXoZ4JI=; b=ceLFBZdg29TmDjfTz8rckQGNCeaVEyrp5CnE+oPpYZXwtzglFq2
	//lcToFb8K3RosW0PA0Ff7ujLhjaPd5MCIu5bN/RXQW+ozN1zSNqKo8f65sfQeTt
	idjkyMizfzLXBNHO9TqvcMT7LC5Xl7D5/gLeSBdWh91yoFoA+Q0tdgllI41VBX+I
	c/qFdLOAea18ZhpYEg59QJtNJjqlm8XG1icPAKzzPGkUM+JYd78lhQoLN+gE4p0J
	qLhZWwGJNfMlEhhwJgEd3OWm0GSDYtOsMU3aoZbOSMoOSWwgIH3fnjRJNEphLX54
	Qx36S2CA4/MJW3J0fVh8TJZZIf+3DJBknvg==
X-ME-Sender: <xms:QITCaYqNrPxCchsa687cnOIK3VRjabzDzpOvSMKvHCnZB9PvR1yhHw>
    <xme:QITCaQN9iPbWxhSIdDgRGiIp_Tq3guFR4_BXmtSohJb07INMgvtr5MF03kk8iEWtt
    mcQiaquSqg3NymD4zNbIddzWVmD64o4Vk9kAwzVaMzk4aGIdA>
X-ME-Received: <xmr:QITCaceCvLfaAIb4L32XRHTHzCdH1mylZit0AbPmEN1QToERILNqq2NSnhQt>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefvdduheekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
    jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepheegvdevvd
    eljeeugfdtudduhfekledtiefhveejkeejuefhtdeufefhgfehkeetnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrd
    gtohhmpdhnsggprhgtphhtthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprh
    gtphhtthhopeigvghnqdgrnhhnohhunhgtvgeslhhishhtshdrgigvnhdrohhrghdprhgt
    phhtthhopeigvghnqdguvghvvghlsehlihhsthhsrdigvghnrdhorhhgpdhrtghpthhtoh
    epgigvnhdquhhsvghrsheslhhishhtshdrgigvnhdrohhrghdprhgtphhtthhopehsvggt
    uhhrihhthidqthgvrghmqdhmvghmsggvrhhsseigvghnrdhorhhg
X-ME-Proxy: <xmx:QITCaWVKNeXD9m7ctI0a5hWaFXLjK3A7jeT0sPMtrzL5ku9fdjAeaA>
    <xmx:QITCadB4PG0Ou5_2Bxq4QoBrBy4MJif-yJjWAUuLrOHlpjlGLMe6jw>
    <xmx:QITCaR7PdOmIYkz4pW66m0dckGv3zCAePyr84jt5_QbWcdSkTLhUlA>
    <xmx:QITCaU1Facm1VeN-2P1LucXwAc2O4PegjPipqZxe2CQ857vhuPv7nQ>
    <xmx:QYTCafDPfpus8IGGyZqrOu839Hrg5YALwiqbLxxynpKi33xvFFUDogu->
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 24 Mar 2026 13:31:38 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
	xen-users@lists.xen.org,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <2026032405-faculty-agony-2599@gregkh>
References: <E1w50W0-00Bwo0-1i@xenbits.xenproject.org>
 <2026032453-departed-thrash-f153@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2026032453-departed-thrash-f153@gregkh>
Subject: Re: [oss-security] Xen Security Advisory 482 v2 - Linux privcmd
 driver can circumvent kernel lockdown

On Tue, Mar 24, 2026 at 01:16:08PM +0100, Greg KH wrote:
> On Tue, Mar 24, 2026 at 12:05:44PM +0000, Xen.org security team wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA256
> > 
> >                     Xen Security Advisory XSA-482
> >                               version 2
> > 
> >           Linux privcmd driver can circumvent kernel lockdown
> > 
> > UPDATES IN VERSION 2
> > ====================
> > 
> > Public release.
> > 
> > ISSUE DESCRIPTION
> > =================
> > 
> > The Linux kernel's privcmd driver can be abused to circumvent kernel
> > lockdown (secure boot), e.g. by modifying page tables to enable user
> > mode to modify kernel memory.
> > 
> > The CNA covering Linux has refused to assign a CVE at this juncture.
> 
> This is now assigned to CVE-2026-31788

And, to be more clear, the kernel CNA should have given you a CVE
earlier, sorry about that, that was my fault.  We had been "burned" by
other groups/companies asking for CVEs "ahead of time" for Linux for
things that turned out to be wrong or not needing a CVE at all at the
same time you all asked for one, so I reacted much harsher here than you
all deserved by saying we would assign one once the issue was public.  I
should have trusted you as obviously you know what you are doing here
and should have gotten a CVE for your accounting earlier.

Again, my fault, sorry about that, if you all need one in the future for
any issue, we will assign it ahead of time.

greg k-h
