X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["459" "Thursday" "22" "June" "2017" "21:38:13" "+0800" "Greg KH" "greg@kroah.com" "<20170622133812.GA1672@kroah.com>" "14" "Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels" nil nil nil "6" "2017062213:38:13" "[oss-security] stackguard fix in Red Hat and Ubuntu kernels" (number mark "U       greg@kroah.c Jun 22   14/459   " thread-indent "\"Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels\"\n") "<20170622121833.GI32005@suse.de>" ("<20170622121330.GA18550@openwall.com>" "<20170622121833.GI32005@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19476 invoked by uid 550); 22 Jun 2017 13:38:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18427 invoked from network); 22 Jun 2017 13:38:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=HZZyRpE7V6smasmChb
	Z7UUK6l8U7dPst9aRZiqB8yCU=; b=SykB0uJB3J1I+6Ih2IRSzaY2DI0ei0MSDj
	OOHEr11q4UqfR4RByjEktxKAxgu6xHYj6+9g7ATgFSq/JOfxGUc1fZKs1WOMFtfn
	zTFgXrjh0dB3vYxQ6rkUgKit97PV9sj5h/rwY8g+4IobUfaovKZaSsCYPl3V1SSI
	llX4Ay3BvGjixH3I5jxLGq4/0X3Y277+nbBpP68oEAPOklvYXwOOLM+prCxTwFx+
	ML7XAZDk2QSxSy1LaZfmVInAYAJuNl1D2oqBwKC2p0aBT5aS7Xro/h0cwCpoS8u3
	7zw9O/fcQY7H/1WKu25z7gDMOO1q7HPJ+uvqhRC961EFMb4LZY0Q==
X-ME-Sender: <xms:TshLWStYTZ4HXgSOAovhvByF2dA6s5WWtJ78xmlYDeqIutPc9KlMSg>
X-Sasl-enc: wDBq0qz1hVPw1PfD31IKy5epxkUBWNT4ymTQ3MZQvFis 1498138701
Date: Thu, 22 Jun 2017 21:38:13 +0800
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Vasily Averin <vvs@virtuozzo.com>,
	Konstantin Khorenko <khorenko@virtuozzo.com>
Message-ID: <20170622133812.GA1672@kroah.com>
References: <20170622121330.GA18550@openwall.com>
 <20170622121833.GI32005@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170622121833.GI32005@suse.de>
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels

On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
> Hi,
> 
> Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!

The patches upstream in Linus's tree should resolve these crashes,
correct?  If not, please let the kernel developers know, as we ended up
going with a different set of changes than the distros shipped, and are
still working on getting these backported to older stable kernels at the
moment.

thanks,

greg k-h
