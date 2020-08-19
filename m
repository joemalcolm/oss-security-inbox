X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1603" "Wednesday" "19" "August" "2020" "17:55:16" "+0200" "Greg KH" "greg@kroah.com" "<20200819155516.GA3690413@kroah.com>" "30" "Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free" nil nil nil "8" "2020081915:55:16" "[oss-security] Linux Kernel 5.7.9 DRM Double Free" (number mark "U       greg@kroah.c Aug 19   30/1603  " thread-indent "\"Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free\"\n") "<DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>" ("<DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1716 invoked by uid 550); 19 Aug 2020 15:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1691 invoked from network); 19 Aug 2020 15:55:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=KKmWcFdichfBn5lvgRQUtxcCbVf
	gdv92RjBg/T8Rg9o=; b=FX9j+81Jvs1cTHIrHzMhUMnEeU6mVxXvFi79nb+s6CP
	4wU5YWC9l7Vzq077yKaxqrLe7Pyyjxp1RmFFtyZUCt0zYsBwgEbeeJNOiS+zdJyA
	ICtI8eyAtdbpFzF6+btgx9M82ucqujcQndOj3CfGGzxLNYCJYqJb9YM0wcZm1r98
	rnsQI2gXvPRmQ8+r+DgkJXYjvII5xsnisrIxQQlszj9OJdSXzqYvg7x4PcnZD6zg
	hGzrNw/zqFt4Bx9cNxd0otjtPWKO5Kath/eUkX3OvAYrTaDaLIxAGWTeOGyYpYBD
	KUYs5roauxatk2VavqNdvm/xoPZRKLuxrq/nDhv7/AQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=KKmWcF
	dichfBn5lvgRQUtxcCbVfgdv92RjBg/T8Rg9o=; b=ih3EdGUTU6uKDKfR3M2fvu
	oftlLzJx+m6tvava4lpo185/Gv7vXbwTGw8PcOc5xuCrWiC0wv710sAEUCgSmrY3
	e2q51abAuR3zpOfbzYUOeuyq6HJOzWnLwoqT0+8oAEBhhYuFunoNuDc2Y/JnS3db
	BuJtvrsb4byrnGj5fNVVOyemoySGvJJTcdqZ5Ijo2jzAN7xZHXc9u5GzNSFVLeJp
	X8kFsFpPezqiW2fdv8y8+2q6eobxriGRs3yKmLxdrLZdsnWy7Etfbr0zIiwYy+rd
	E/t+wmB/ZlaoejlQyX9ouLQD8FDypHYNUU0bD/Vc4tMobhuTOzSACa6gg56/Sg+g
	==
X-ME-Sender: <xms:Tks9X9YhxW80nr51--nz-hrvyNCMgST-k1vS5GAckEMMWp8egXyNrw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddtkedgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homh
X-ME-Proxy: <xmx:Tks9X0bIk8A962Rzt0FXhaWaQqAayjO5h9N6sUF0FiTkV3txnPJ2vw>
    <xmx:Tks9X_-BwxAil6hTBf4TMxfLp4V601WYdQDOiey3kMuDp6pEw6i55w>
    <xmx:Tks9X7rfAAiqgYnB-DRWdOmIkeGe3mEf6AZokqRMY2xF3mYTvAztLw>
    <xmx:Tks9Xx6MOdAKx8K7cd8R_W1TCkOwNXGWeMwW98w0eoTn0TLYePZn3g>
Date: Wed, 19 Aug 2020 17:55:16 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20200819155516.GA3690413@kroah.com>
References: <DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>
Subject: Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free

On Wed, Aug 19, 2020 at 03:42:33PM +0000, zdi-disclosures@trendmicro.com wrote:
> The specific flaw exists within DRM memory management. The issue results from the lack of validating the existence of an object prior to performing operations on the object. An attacker can leverage this vulnerability to escalate privileges and execute code in the context of the kernel.

Note, this "vulnerability" was only accessible by root, so there's not
all that many privileges that could really be escalated there.  Don't
know why the original poster did not say that here, as they acknowledged
it in the "bug report" they sent many of us.

> 
> This has been already addressed in the upstream commit 5de5b6ecf97a021f29403aa272cb4e03318ef586

It was already "addressed" before this problem was pointed out to
anyone, so this was not fixed in relation to this being reported.

Also, the fix is now in the 4.19.140, 5.4.59, 5.7.16, 5.8.2 kernel
releases for those that care.

And finally, it was pointed out that any kernel running with the
CONFIG_SLAB_FREELIST_HARDENED=y option would not have any problems with
this issue before it was fixed.

> TREND MICRO EMAIL NOTICE
> 
> The information contained in this email and any attachments is confidential and may be subject to copyright or other intellectual property protection. If you are not the intended recipient, you are not authorized to use or disclose this information, and we request that you notify us by reply mail or telephone and delete the original message from your mail system.

Very odd email footer for a public mailing list :)

thanks,

greg k-h
