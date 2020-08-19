X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Wednesday" "19" "August" "2020" "19:11:11" "+0200" "Greg KH" "greg@kroah.com" "<20200819171111.GA3705068@kroah.com>" "21" "Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free" nil nil nil "8" "2020081917:11:11" "[oss-security] Linux Kernel 5.7.9 DRM Double Free" (number mark "U       greg@kroah.c Aug 19   21/1117  " thread-indent "\"Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free\"\n") "<20200819165722.GD3698439@kroah.com>" ("<DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>" "<20200819155516.GA3690413@kroah.com>" "<20200819165722.GD3698439@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel 5.7.9 DRM Double Free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3154 invoked by uid 550); 19 Aug 2020 17:11:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3133 invoked from network); 19 Aug 2020 17:11:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=SJsO17vLvCz6ilGoyME1l1ZM7r5
	Bq7vmspdEuBn1WEs=; b=p4S3A+kVze/ztUPvxtCSH5pc6SZV7Da+zj7vZ6IuKlX
	5KEgHDbP3ekaphK51bqhMU9CZxtmCE5ej5jmWx+RkX3KbJRJmwBVep1s3mtFClI0
	O2WrRWhFDUDHcGMpFARyxHFVJdogurKuoz99rj6gW9PSVMHSyeAf5TUrEjHC7CXV
	wHY9XRUNJGXT0ufMcYFJzWA2jEMfqmdVsZ9CN+wxZTWXtcubxVbr2bzkxJdyH93+
	gs2DXKSzQMRBvIlwgXE2JCTK5qPW+eCwq4dLAJ9tpDJFhMgU9+oFYTATJ+1CpTo7
	NXgf5IJlHmH3sxysNGrf7bctlKmRdhvCH/7C8WVbvfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=SJsO17
	vLvCz6ilGoyME1l1ZM7r5Bq7vmspdEuBn1WEs=; b=u5jcGPKEWIWt6Lh7/zv1rh
	t9M4vk9d1BRC3BZsHvRjylNWZvjVPi5auZV9pgsfKNLjz/BeyQc/QQ4m+YykANiZ
	2CvQypBOdJGgKOeZPHcl8kPwMkrLcnGdHeTJja7SS4+BuCxQZxQszC6O6Tqg7bb9
	xB0Amb4vfdHTqtDTZaftBsqT2su5rRgpzTk6QKYwaDn7wwFFqOoyG0ZJbxQFcBNE
	LQpkwj7ek6b4K3OCN2ULyjk/owDzkbsgLanxXwyvGH8a5QjijdeoOiGLBDNDb/cy
	NX9LB6c1Plkmw4tXJffmaZZ3Ehk8MV9k+y1LsN2KnGs5XmW4+1JlWbMGXIYppv8A
	==
X-ME-Sender: <xms:GF09Xwb3PLSYUNDqh8ad1Q_Ms-adecc8bNY5EQdabI_DHu7-md9piA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddtkedgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homh
X-ME-Proxy: <xmx:GF09X7atYrn-WPAQer-uxwGqWQDqcoxlZgEqUBc4FYZiwYHfj40UHQ>
    <xmx:GF09X6_SPYa_uLOstFaNkmiqntVuGSSTEjafUyhOH07IVLz6TTquow>
    <xmx:GF09X6pa0_Oi4zH9_VDt73cx9yXVGO_HV1s9nwxwCI7At2o9W6vODg>
    <xmx:Gl09Xw7GEkan3wJ__k7NyvEubARNHtYfYjAo00MKt1yiloO65yADgQ>
Date: Wed, 19 Aug 2020 19:11:11 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20200819171111.GA3705068@kroah.com>
References: <DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>
 <20200819155516.GA3690413@kroah.com>
 <20200819165722.GD3698439@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200819165722.GD3698439@kroah.com>
Subject: Re: [oss-security] Linux Kernel 5.7.9 DRM  Double Free

On Wed, Aug 19, 2020 at 06:57:22PM +0200, Greg KH wrote:
> On Wed, Aug 19, 2020 at 05:55:16PM +0200, Greg KH wrote:
> > On Wed, Aug 19, 2020 at 03:42:33PM +0000, zdi-disclosures@trendmicro.com wrote:
> > > The specific flaw exists within DRM memory management. The issue results from the lack of validating the existence of an object prior to performing operations on the object. An attacker can leverage this vulnerability to escalate privileges and execute code in the context of the kernel.
> > 
> > Note, this "vulnerability" was only accessible by root, so there's not
> > all that many privileges that could really be escalated there.  Don't
> > know why the original poster did not say that here, as they acknowledged
> > it in the "bug report" they sent many of us.
> 
> And to be specific, as I was asked, this was only an issue in the
> nouveau drm driver, not in the DRM "core" at all.  So only that one
> driver was affected.

And to be more specific, as someone else reminded me, you had to enable
fault injection to be able to trip this up as well, something that only
root could do.

thanks,

greg k-h
