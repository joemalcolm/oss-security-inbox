Received: (qmail 13382 invoked by uid 550); 15 May 2026 09:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13358 invoked from network); 15 May 2026 09:27:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1778837215; x=1778923615; bh=GtdUC+/p0Q
	jWrrnoND5PrcUc/ziyK9lbw9unMXiXCAI=; b=wzLlNIiMd1P27sSJyWpvJx/DJi
	+PvhPu3lLCy2e/SmiZbf8JUdL/Ys6OWuke/C1bfmdowN2rUhTn1StFimKPKORPUB
	vGjWmS+3quDissq9aWH5D6q8WsIgUb5gMQgvh2F7qmBAGVni1rlwAUjVT5q0y2E3
	gNAqpgGaopQa+OzgQjFDZL1CN9iD9MtWpOLDXM0UHnuKkkKaEt2MwSeGrmz+mhz/
	x9nSB71g7ArWX2dYLuoduzAgq9uciEnoBcYzm77/Dgh5DiIsBQpfTgMh4oU/ZYEo
	MQblz7t+sj5Dqbttn9ALA/HvwP/bNUrHsXUza6/OwebTou8IiVTDMsbkbYiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1778837215; x=1778923615; bh=GtdUC+/p0QjWrrnoND5PrcUc/ziyK9lbw9u
	nMXiXCAI=; b=vJdxyzY6xwrDjiOmjhOr4jrsVhDKCte4A1+HU+ZmgiMG/x3StdT
	zqHNmPcN+pN+FuPnR9ntPGmWozUOP3vpe/cob4q2Zf1IvDZmR7OJSVTTSdFnOQo2
	cfErEodjMy54Ua5F969zCkUkp70dKvoMCMCnQF8YuiL//7RfrvNLU/Xpu0s4Hi1i
	Kd8fVrZj6Z6WHCYHe4sp/B7p64RlaI0Gxf8TADY6ytvID0G0FhVmqmjofCX65HIo
	SPhrEu8Gc89Qbu4kcrh85kO15Rr8b7ZQ+IGjVqAuGXTMvU/GbCm2ULFpPUCQYr71
	PrcRvNS5RoOFKZFeCA35r+6AO2kRxoZlJ8w==
X-ME-Sender: <xms:3-YGak5_NhFXCbI2Mkw6ANiMh29D57F_yM_0BKssCGqsh7vLZdOnXg>
    <xme:3-YGau3FQjQnJapakL-0uAGK58bAODYsCO4aOL-YzxQXfUxK5U5aF03v-8UEade29
    F9hcnLu3WTop_pkEeNUy515BirhQnSKbgksUVRAXkFRzWCM>
X-ME-Received: <xmr:3-YGalYfVdiI0beBY1_xdEIPmIUgi5EItZBK7roOFPNUsKLp8nNW4o5jDvIhWTwG6acf0Gnw_j-AouW6DMpnPrzoAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddufedttdegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttd
    dtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecu
    ggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiueegge
    evueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvg
    epshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdr
    ohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:3-YGamBOQunWBeN8XpgTIMQX-8JVjiZrVpvDB5H67OcYaF4ofVLCiA>
    <xmx:3-YGan-W9xVDTQte8ciazwOclcubhY5tyc9eLfE16_KKX2qizz4KFA>
    <xmx:3-YGam82M9-UjlMV34qlS_jGv-BDb4Y5yMae648HeWRUxEOsGuEg4Q>
    <xmx:3-YGaudq1GShGCfC_RZ5JhxnMVXVW2_CRt9S_shUwqxTo6vvfQsdfw>
    <xmx:3-YGanVo4HN6tVjRqZ-DE9m91REOaSV4WcWaBSfo_6IuxrQFagkPkOCA>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 15 May 2026 11:27:00 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2026051536-gatherer-excluding-f6ff@gregkh>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <afI-PPAr7EP8SEsu@1wt.eu>
 <4386b3433ad85d4bb93e1ca2a07088d2b83bb23e.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4386b3433ad85d4bb93e1ca2a07088d2b83bb23e.camel@debian.org>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On Fri, May 15, 2026 at 10:49:34AM +0200, Yves-Alexis Perez wrote:
> On Wed, 2026-04-29 at 19:22 +0200, Willy Tarreau wrote:
> > I'm increasingly doing that myself already, and predicted the death of
> > embargoes a serveral months ago. Now I just remove unneeded details from
> > commit messages, merging and issue releases to keep users protected.
> 
> Hey Willy,
> 
> Unfortunately that also has the side effects to hide security-relevant commits
> from downstream integrators and users. Not that we really have the time to dig
> each and every commit of each and every project (especially fast moving ones)
> but we definitely miss things here and there without a heads up.

With the advent of the reporting requirements of the EU CRA law, as of
the end of next year, all projects will have to be reporting their
"security bugfixes" to the EU, so you will be able to go off of that
feed.

Although that is a 18 months away, but something to look forward to :)

thanks,

greg k-h
