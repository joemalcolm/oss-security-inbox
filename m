X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1207" "Monday" "13" "November" "2017" "16:15:24" "+0100" "Greg KH" "greg@kroah.com" "<20171113151524.GA16983@kroah.com>" "31" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111315:15:24" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       greg@kroah.c Nov 13   31/1207  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" "<20171107202237.GA10679@kroah.com>" "<640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1549 invoked by uid 550); 13 Nov 2017 15:15:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1488 invoked from network); 13 Nov 2017 15:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=eS74B5FyKgLUU5TSWPdAfCszOMtr5
	kHHdbltoz7Q9Eo=; b=CSnVwi8tjJVvQJaMLgSMLDdOb7qt6eIdE7AtGkQh4i1AX
	5cE/wYIshIEhDNNzV5561qYNSWBb5jfP934PVM+HprhlfUnhkEBzYiufxRmUcB7v
	0bDZwELlPd+18alJWKxE8Gf17LMhfdANAcevLAg1Suq0v+JUIhZSQ+TN1ahHJkxK
	BDQhBFuZ7X6KZsZiTPluYKxNGZDt7NLIl+FPGkc84n+qXec3aMwMWHb+JODBue+B
	334E/NtWQI8q++g/+eNkegNGALRuLX35DZOVaeRtr4bxv7wPVNNUi+wd/IKOKTXq
	sNPKU3S6X0QKbuRCw8BG4CNgnUs0FNaLsFgkBIynw==
X-ME-Sender: <xms:BLcJWoy0poG2EyL7QCrOgAn1X54KxzGVZq2dQdxgLgJI9Fjpww_uaw>
Date: Mon, 13 Nov 2017 16:15:24 +0100
From: Greg KH <greg@kroah.com>
To: Vladis Dronov <vdronov@redhat.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20171113151524.GA16983@kroah.com>
References: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>
 <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
 <20171107202237.GA10679@kroah.com>
 <640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On Mon, Nov 13, 2017 at 10:07:00AM -0500, Vladis Dronov wrote:
> Hello, Greg, all,
> 
> My fault here was indeed not stating that a Red Hat's product is
> vulnerable (thus, a CVE was assigned), but stating that only Linux
> kernel is vulnerable (while indeed it was fixed a long ago). Please,
> accept my apologies.

Ok, not a problem, thanks for the apology.

> > I hate to ask, but why are you getting CVEs for bugs fixed over a year
> > ago, and are already in all stable kernel releases a year ago?  Why does
> > it matter?
> 
> I'm afraid, you won't like the answer, but in a short word, the Red Hat
> is a CNA (CVE Numbering Authority) for Red Hat's products and the Linux
> kernel and we've decided to assign this CVE.

So the answer is just "we've decided to", right?

If so, that's fine, you are allowed to do so being a CNA, but what is
keeping you from doing the same for the thousands of other bugs that
have been fixed since this one that is in a specific Red Hat product?

It's the arbitrarily nature here that I am curious about, it feels like
it should be "all or nothing", for CVEs to mean much here.  Right now it
seems like it is just, "all that we care to track"?  :)

thanks,

greg k-h
