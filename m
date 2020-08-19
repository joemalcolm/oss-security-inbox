X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["876" "Wednesday" "19" "August" "2020" "18:57:22" "+0200" "Greg KH" "greg@kroah.com" "<20200819165722.GD3698439@kroah.com>" "16" "Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free" nil nil nil "8" "2020081916:57:22" "[oss-security] Linux Kernel 5.7.9 DRM Double Free" (number mark "U       greg@kroah.c Aug 19   16/876   " thread-indent "\"Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free\"\n") "<20200819155516.GA3690413@kroah.com>" ("<DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>" "<20200819155516.GA3690413@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17543 invoked by uid 550); 19 Aug 2020 16:57:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17519 invoked from network); 19 Aug 2020 16:57:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=fGqRHsm3wDrXOzVIFvbKtfwZSkw
	UwjQAsxRRwCcFzN0=; b=T1/UCePdhjx4Xw+ETZNEYM5ramsnjzNs1WACf+lYRDb
	2//wrCdBumFPT1tHPuoNPJZnxmk33H04neCVj/mGMd/y8UkFExFmUYB32H+fRDoD
	21VZPd0HGS3ZmAh64fTsvFIAFpzLIyyWvbHYjy4/CTCFyFiozH17tE+nZ5jCAGn9
	SQjHKSBGUnT2xiIKJvdj1lUXoQHchQxuWaXSfPOgpqIeb1//FyFMxSqZsI5okxAg
	AB8OrROKdY8xjNDAZ2bRi0KunhFsa2X5nGOKb4JlHpQ7R2iisDgKLhCVMnKtSS6P
	zePjODPxIrg0kbC5EeTISvhTHcaa+NNtRn2Odv+GYIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=fGqRHs
	m3wDrXOzVIFvbKtfwZSkwUwjQAsxRRwCcFzN0=; b=LjQXSMaWRGURl31EfMidTa
	LXZEil3+9DOAZlUqWWFE5ZOfYCeSETT4wtetw/PE85RspyP7MCUvAQ38YOuWrsKA
	0tvR/1NzxgRZESH15HJbVAzm11BIign2VEE76p6FRrSqyZPYc927D9yjAvl9O7Ub
	QJkhhTPTXVsBIptyMB3eAK3McKSxeaSYE2ahA0Xk3se6FzJosJVgtCpFuAwkIAol
	fMtqLzkS1cOu2fk9p03aeKAZ901DIGT8xu/NjqPnjw3sCGk7xIhAuIZfxosOutJa
	Lh3tFdTBvUCIMYkfWs537ELAc32mbRKBA2NDiTViRu/fq1OXqUP5FimRbWFCBNCw
	==
X-ME-Sender: <xms:3Fk9X3IdFl9bcLQbdc4xqAJQyBzQ5dVjckv0hMEPeOp9yqACIb_Epg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddtkedgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homh
X-ME-Proxy: <xmx:3Fk9X7IR7aNdEsWYN6iw4MtwOI-9Q6vfu__ltAcb32ThM9sVR6vTZw>
    <xmx:3Fk9X_vMTm1FUEuO33gIQ1JAjKAim61Gi148xzjfoZ1df1RAlPeuAQ>
    <xmx:3Fk9XwY1_jyqBf5Li5Dsq_iQYSxfSfzXkUJ11M1ezCy61TXNLywlrg>
    <xmx:3Vk9Xypqw1TOtwoA6al-ut1A7hpfV8SvPpOc_u92vzFWMxnI7xr6eQ>
Date: Wed, 19 Aug 2020 18:57:22 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20200819165722.GD3698439@kroah.com>
References: <DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>
 <20200819155516.GA3690413@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200819155516.GA3690413@kroah.com>
Subject: Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free

On Wed, Aug 19, 2020 at 05:55:16PM +0200, Greg KH wrote:
> On Wed, Aug 19, 2020 at 03:42:33PM +0000, zdi-disclosures@trendmicro.com wrote:
> > The specific flaw exists within DRM memory management. The issue results from the lack of validating the existence of an object prior to performing operations on the object. An attacker can leverage this vulnerability to escalate privileges and execute code in the context of the kernel.
> 
> Note, this "vulnerability" was only accessible by root, so there's not
> all that many privileges that could really be escalated there.  Don't
> know why the original poster did not say that here, as they acknowledged
> it in the "bug report" they sent many of us.

And to be specific, as I was asked, this was only an issue in the
nouveau drm driver, not in the DRM "core" at all.  So only that one
driver was affected.

thanks,

greg k-h
