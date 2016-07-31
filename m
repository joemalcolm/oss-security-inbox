X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1480" "Sunday" "31" "July" "2016" "06:39:56" "-0700" "Greg KH" "greg@kroah.com" "<20160731133956.GB15386@kroah.com>" "40" "Re: [oss-security] badUSB exploit - affects all Linux distros" "^Date:" nil nil "7" "2016073113:39:56" "[oss-security] badUSB exploit - affects all Linux distros" (number mark "U       greg@kroah.c Jul 31   40/1480  " thread-indent "\"Re: [oss-security] badUSB exploit - affects all Linux distros\"\n") "<~001579DDE384E5CD7001385@walla.co.il>" ("<~001579DDE384E5CD7001385@walla.co.il>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22250 invoked by uid 550); 31 Jul 2016 13:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22232 invoked from network); 31 Jul 2016 13:39:54 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=onkOBmg1zR4Q5fe
	dSCXTmCjoX2M=; b=rlMSuRoSZIyJHdGFljG6cujWReISPaEBz7lM8RqRVB3N8TD
	Dxj0kEodU7gNwpqBoracKzuSW+imTuJJPpCBxgoZvGHtvLNbOOLAs/nC3ONtUV1N
	5YvhUuprtGFzA5xOzS+teLYmqFUDF+KUbCqlnotqg2GmzS+YLectsXj5grWE=
X-Sasl-enc: FGYGOgOiKqmpqQ7Pbyidaz6RWRWK6RZpjQ4lw0+Q3Q+Y 1469972381
Message-ID: <20160731133956.GB15386@kroah.com>
References: <~001579DDE384E5CD7001385@walla.co.il>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <~001579DDE384E5CD7001385@walla.co.il>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Sun, 31 Jul 2016 06:39:56 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] badUSB exploit - affects all Linux distros
To: oss-security@lists.openwall.com

On Sun, Jul 31, 2016 at 01:34:02PM +0200, פאי פי wrote:
> Title: badUSB exploit - affects all Linux distros
> ---------------------------------------------------------
> 
> Dear oss-security mail list members,
> 
> Please, I urge you to fix the known badUSB security exploit that exists in any Linux distro.

First off, it is not an "exploit", is is "working as designed". :)

> There is available (to the general public) a relatively cheap product
> which does the "rubberducky" attack, it uses the badUSB exploit.

Not really, that device just acts like the USB device it said it is (a
keyboard).  This device has been around for years and is very useful for
development efforts.

>     1. Copy-paste a bash script
>     2. chmod it so that it will execute (under normal user - NOT root)
>     3. malware is active... 

So can your USB keyboard :)

Anyway, Linux (the kernel), provides you the abilities to disable all
USB devices and only enable the ones you deem "safe", whenever you
decide to.  It is up to you how you determine this.  By default, most
Linux distros do not enable this option for obvious reasons.

> Note that by default - Linux's firewall is disabled, therefore
> allowing an easy access to the attacker via internet.

No, that's your distro's decision, many enable it by default.

Anyway, best of luck, but this is a distro-specific issue and I suggest
working with your distro to enable that option by default if you so
desire it.

thanks,

greg k-h
