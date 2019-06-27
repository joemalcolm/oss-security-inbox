X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["652" "Friday" "28" "June" "2019" "00:42:06" "+0800" "Greg KH" "greg@kroah.com" "<20190627164206.GA9692@kroah.com>" "18" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "6" "2019062716:42:06" "[oss-security] linux-distros membership application - Microsoft" (number mark "        greg@kroah.c Jun 28   18/652   " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190627140321.GA29338@openwall.com>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28019 invoked by uid 550); 27 Jun 2019 16:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27972 invoked from network); 27 Jun 2019 16:44:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=Ohu7vgixuw2kjCJ+FgjcU3Bwoxe
	NefeXG79Wpcue1fI=; b=WHT4+lUIBUFiROsmHFeQeiCdFt4YCb7WO8quB25DwCO
	wv/ORTcjZrywxoDwkG2WuQez8cy+4W1nr2P3gy5B8rSzRuStRZfIe8dCETMEijWx
	VzTKf71bhPPRAEToZEDFk7It5c38hf0+0A6ZiYR3nNAKKvuBWbKZBBB162NoBju5
	MS/w7ZflJzGMN3Q7wJnfe0xCKI0PaLISXbF/h/+9k7Au8DMSxMKb2rwgBRdGZdjX
	ovIhGsgSXGsqdsOQZYGef87HafJcsTXyumepBuA7KrFDilVUCAmcV0EwYm8WPK4h
	rKXFX11/9OZYxfffEOR1TWJ5yJ+Mt2WGJNXTyZpyhog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Ohu7vg
	ixuw2kjCJ+FgjcU3BwoxeNefeXG79Wpcue1fI=; b=DhZl0Of0u4AzgNxYPQWPJr
	BgW2VKFeW9ROakFJahtHgHUtl483orwWpRY9p02Ks6oMA0dOjnVVi5Wfl86+T0Kc
	qCONwkjSbM1Ys6bT8TKuhU7fJSYnga/IFtBlHboexxMjsAC/xBU6CaglXTm1WcE+
	zk5Oed6m0jHHwzho1WnbOvYHG4T0BoXT7dYh0HLCfyOMElHvMnpCGefizPAXRNZ5
	pjasOf0onyV/MV7L6f2KXgWd9Ix+SgTOuNseqne17ZvhpHeBuO6iQ06KVi3LMZ94
	jlGHaAi0jHRFIWQC3pmppxL9xTtnZIlZ8j1lhZNPKqgbCV8vf3JsmTsKOPwd7CPA
	==
X-ME-Sender: <xms:W_IUXXuDswYv8EyxJ6VHTF7bs4J4dzKbCdx-sPeVS8K2MapoYgaJ9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekgddutdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeelrddvtdehrddufeeirddvvdeinecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:W_IUXWJkBwsO7MKy3FLOq4w_uRxYQJe8oeTy6Ip5v8jQNUHuSRMROw>
    <xmx:W_IUXcizIDAOwsVJU_uBlZcFMZLGOSsg4STx-KZ1d1D04Xc4Qxvxuw>
    <xmx:W_IUXSv1PYczw1jCQJ4JnwOQBXG3oDP8mn4tR9fbIGrXVtxhroGb4A>
    <xmx:XPIUXfpNotZOfyHUMcmT-2cRD46x2XKo3tlHnszpO_mL6p-Q7S5yTw>
Message-ID: <20190627164206.GA9692@kroah.com>
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190627140321.GA29338@openwall.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 28 Jun 2019 00:42:06 +0800
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

On Thu, Jun 27, 2019 at 04:03:21PM +0200, Solar Designer wrote:
> Hi Sasha,
> 
> Thank you for posting this application.
> 
> Are you also on security@k.o?  If so, then on one hand also being on
> linux-distros would probably be of less use to you since I suspect most
> of the issues relevant to Microsoft are in the Linux kernel, but on the
> other hand you could serve as a liaison to that group.

Sasha is not on security@k.o, someone else there is _supposed_ to be the
liason to the linux-distros list, but I don't know how well that is
working at the moment as I am not on -distros (nor do I want to be at
this point in time.)

thanks,

greg k-h
