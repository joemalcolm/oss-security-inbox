Received: (qmail 15706 invoked by uid 550); 11 Apr 2022 11:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15688 invoked from network); 11 Apr 2022 11:33:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1649676806; x=1649763206; bh=a5vRiHoJH5
	C4TRkfdPvrL0evzUj5ZlMkG0Ocv1kuwlo=; b=GDQzfVzvfv5D+ASgTHTZSc9uId
	E2fqVwbnOA5NLgIj6gSmOD2RU9x6StcJV3kIoZ+/zUi7+NCkBlWalsjmGhh8w12t
	O0ArcR7Q8cTeNYGWniF2zQqlrxzRXTna2vADxMrOIPF7KbYmZEeMm6HU8Y98m6/E
	/4j9BXrztBIFINWB4DURRRouVuTDb2fMXZdavvwtLOSA2R54XhIZ7X92lBad+kCl
	MuYP4qBpRVqfdOdWqxBpaLsZtobcEJ0ml2vGryRQvP7JvKpP0+i/bI54KqmbVW2d
	prdJRebzPJvYOl/hNaMZ1nDJ0eu3nMGjtcVk7OMojaxa7vjeULwuP82UG3zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649676806; x=
	1649763206; bh=a5vRiHoJH5C4TRkfdPvrL0evzUj5ZlMkG0Ocv1kuwlo=; b=Z
	tsu+m2qwx/SwqLxXlFEKvReWnhRyGBv7kb+wkCbwAzdEAExmsQmigSrrwCFIxENL
	ybkVK/dD2Fiu1nARNSrk78FjFzBVOPYNk3mySV2+etSrky8i0XkUwV7u+f4vjCpM
	w2WC1Sg2prvONie9yGM2p9P0jRFU1/aEbVo4x2erN+CsqyneQV5NX7zEXVLPOeUb
	wrvl43xnrZPAUyzavptwbXVgPSy45z0waXJEk5IN9tJIBOxuCEoMjcgtNruEQlTK
	QZSZ6Rs1x3Y28sq6+lSAlTFnrW5cXEROuWeyNqOaoBrerDqeHzD4r9TPI0ulHJxt
	DpkDiDKg8I2Np5ohSDKkg==
X-ME-Sender: <xms:BRJUYo0JgVYKSCOasd1Kv2mknzyUSx6lOfnPk7WpP5cVmtyikS9l9A>
    <xme:BRJUYjHbdx_26bUh9uAbWTkMdGK_sfJbA0-RJ67BymvTZyQFBJNUS_GGIPf-ahyyq
    t1uX6yrlNtZlw>
X-ME-Received: <xmr:BRJUYg6ygpvNRuL3k2kH2wGwYnwrP-QNreto5SQDmiOlAgTPVQ6d0xZC03s2S-Nk5k32gBQwE-9E44YBUU8EZ3KyM9Hy0VcE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedggeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnheptedtgefffeeuteehteevuefhgfefjeeiffeiudduveevtd
    ehtdetveejveeiheffnecuffhomhgrihhnpehmihhtrhgvrdhorhhgpdhkvghrnhgvlhdr
    ohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:BRJUYh3QaTDRCugAxdFRSfx2mGMl3etZgzdmoCvfpPLODXA6hSmdQA>
    <xmx:BRJUYrFuB-vrkgNeFCSepvVh1x7bCEn0MHBta21U0GHM1GtEyzM0kg>
    <xmx:BRJUYq_Dr8nrWGklKm0rWQMyjBhBmZv_0KDj1ujEw9IRW4Kue9bLsQ>
    <xmx:BhJUYuPCws6qzBxLUbvQ6XqCeVNKqgv-KqvRjLQ6JtJJMaUCE65anA>
Date: Mon, 11 Apr 2022 13:33:23 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YlQSAy7P8xHKaWpT@kroah.com>
References: <CAAr7cF2zor2=J0D=NxFqS0TecrZTv2X8d_W53=vp_KWNJ-rxsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAr7cF2zor2=J0D=NxFqS0TecrZTv2X8d_W53=vp_KWNJ-rxsg@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-28893: Linux kernel: Use after free in
 SUNRPC subsystem

On Mon, Apr 11, 2022 at 04:20:56PM +0800, Felix Fu wrote:
> Hello, I Request a CVE from MITRE.
> 
> Description: The SUNRPC subsystem in the Linux kernel through 5.17.2 can
> call xs_xprt_free before ensuring that sockets are in the intended state.
> Details: Use after free happens in inet_put_port because some sockets are
> not close before xs_xprt_free().
> CVE-ID: CVE-2022-28893  (
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-28893)
> Fix:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1a3b1bba7c7a5eb8a11513cf88427cb9d77bc60a

This is a merge commit, not the actual commit that fixed the issue :(

thanks,

greg k-h
