X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["491" "Monday" "26" "June" "2017" "08:43:55" "+0200" "Greg KH" "greg@kroah.com" "<20170626064355.GA14009@kroah.com>" "13" "Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" "^Date:" nil nil "6" "2017062606:43:55" "[oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" (number mark "        greg@kroah.c Jun 26   13/491   " thread-indent "\"Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?\"\n") "<CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>" ("<CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14105 invoked by uid 550); 26 Jun 2017 07:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14084 invoked from network); 26 Jun 2017 07:02:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=v7SxkVIB4mu09FnPTn
	pmWfEx5TZQW2xyRt4hNjfW1kY=; b=JcuVzSUZPPkyXjCfPvp1uahxuOCEM/UJKY
	OtSLe5rPpEDsrYeKb7wvbTAV8IIeDZlzu8ZB3Jaffo5wx6MuxIfUtOMBi7D9KIBd
	GNUPj1cChIKA5lPARxFFYt4zmk+DL07FH2lh3uhX3C3wyTYkZgLKpWOLoGoHXohM
	VNZUS2IHI4wyNCMS1TRlYrLVtYCGyLU1XJ7VghkAACY8LDf1Eqn8YsWsCx0X7Vwx
	Lcax9i9ob6c6LJ17/GXvzfMbX3BQ6Y+bbktyz/+Udxb/WbWtN7ovckYf1QYl0eMX
	TkXNv6ivIKHUAqRqLcpvjtc8w3QRYAyvyv79jj1mQB9OZZhODPkg==
X-ME-Sender: <xms:lbFQWTooA3XmluBZUbXuhFsaL4vKZ8iBslpbtd5qlKFKjBhQoh7MvQ>
X-Sasl-enc: 6J+8msMKW9KNCLgnS10K6o0ajphEQdRzYcGzDyCJJegD 1498460564
Message-ID: <20170626064355.GA14009@kroah.com>
References: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Mon, 26 Jun 2017 08:43:55 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Can someone explain all the CONFIG_VMAP_STACK
 CVEs lately?
To: oss-security@lists.openwall.com

On Sun, Jun 25, 2017 at 08:49:43PM -0700, Andy Lutomirski wrote:
> I haven't checked what USB does, but I suspect it's a wildly
> out-of-bounds DMA transfer that's more likely to result in a
> straight-up abort than easily exploitable corruption.

For USB, yes, it's just a totally failed DMA transaction and the driver
will not work at all.  It's been that way since the 2.2 kernel days,
nothing new there, it's just that this can now happen on "common"
architectures :)

thanks,

greg k-h
