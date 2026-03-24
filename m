Received: (qmail 15749 invoked by uid 550); 24 Mar 2026 12:16:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15721 invoked from network); 24 Mar 2026 12:16:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1774354590; x=1774440990; bh=bWcFSwCVPN
	zsCk7pIB4ZzNyRLxmXnF8m1I59uyLy4p4=; b=r5hLWpll9su1TYtuN06CA/8xfD
	4cvvyyfYmhw2Qn8eT01/zXQcpxxxborX/9H8X/DWkIRN27cPsRrTcRyUvzblI+hD
	pYU/lfA2UcAoHgSXA1fh8plMWoE44Qwrcogl4JmykgdJW7OF981L5LIUsi1Uf3O4
	qX4fx5eNYcdqbNntv4jbYxtUTADd38p+aswcvAihKzQz1K813OAQvdKTroKpasHn
	oYpDUw5Z5cJ7LwZa4yIKZqnQmMC5iGC93RLB4/vWqk9pp56f25Mo6e93rnT0lGI0
	bjOcNGPspBDvzdpy7SjCkK0SY6gZNP84zPR23dDbLB2LtDTSvUjvQMJjs3ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1774354590; x=1774440990; bh=bWcFSwCVPNzsCk7pIB4ZzNyRLxmXnF8m1I5
	9uyLy4p4=; b=e8In13ggtbu5OWvNnjRBIEDmFFoHmkiCnwdZ5wwo+uKVRmVxvf2
	dK40l0sLAgSMUh309bFKzAzJF7rdTi8QUCZCi4h7GMClvSMjV535Vr0DAVzy8MYO
	oxAvtcyaL5dKbnRBrn7O8xCTFvXBdXwNmU1z2tG5XCYoI1qxIKQT7fUNh7gcbKXK
	yk9pjbbj1XfosyVYVU8RJ57ab0nWpR+QDYbLyMdzd0t+YhuZJomim6xgTRl4GFyf
	ASdo29fLKIaOqdDQ2laAagZBUVhWYZKP7FyxIH1JBxSDeWhaRz7nAz56c0Fp9Izq
	r0ExalDi+HK6j1ACAMswAN403RGU4NXH5Ng==
X-ME-Sender: <xms:noDCabl1RbCMukQTR9sZ7mXxFzt1a9SzuoG8biffpfZbf7Ou3ndIcQ>
    <xme:noDCaQaTkZwdq7H3BKWYRtdYgVZpQiT_5H1bKqsqwlI9qsZnFK-Li0CkD0Y9dokqT
    UUPhE41ivELNBDF-G7vsOnWfMKpYzi3qheC22E-Gpmr16ruJA>
X-ME-Received: <xmr:noDCaQ6UJXhbESbEo1RrL5EF-66ylZteWLXgsPtSSdD7ymoHHD8_IxqhU6IV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefvdduheeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:noDCaaBv67Y-DKCr8Izk5mGnGVdKyepT1ybSk4HBX5HqNUhYZ-jCPA>
    <xmx:noDCae9UodmMgiJW_x_8sy4i5fI0SIFjTZygCbQNazYC4a4sbIlU_Q>
    <xmx:noDCaVFivnzCjQEuw0YKXe5GbfVtlx_dLsJjINB5aR4xLRdMM4WbjA>
    <xmx:noDCaQTEAIdgY3s1gTdSe7eU2jqEoet28o_olEaJ26cHBFz9MyOYqQ>
    <xmx:noDCaVMNirIXf5CInnI777AjRf44UisEf2zLwGsLHKpv23DNxTk8hCiY>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 24 Mar 2026 13:16:08 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
	xen-users@lists.xen.org,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <2026032453-departed-thrash-f153@gregkh>
References: <E1w50W0-00Bwo0-1i@xenbits.xenproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1w50W0-00Bwo0-1i@xenbits.xenproject.org>
Subject: Re: [oss-security] Xen Security Advisory 482 v2 - Linux privcmd
 driver can circumvent kernel lockdown

On Tue, Mar 24, 2026 at 12:05:44PM +0000, Xen.org security team wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
>                     Xen Security Advisory XSA-482
>                               version 2
> 
>           Linux privcmd driver can circumvent kernel lockdown
> 
> UPDATES IN VERSION 2
> ====================
> 
> Public release.
> 
> ISSUE DESCRIPTION
> =================
> 
> The Linux kernel's privcmd driver can be abused to circumvent kernel
> lockdown (secure boot), e.g. by modifying page tables to enable user
> mode to modify kernel memory.
> 
> The CNA covering Linux has refused to assign a CVE at this juncture.

This is now assigned to CVE-2026-31788

thanks,

greg k-h
