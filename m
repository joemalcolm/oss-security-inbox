X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Tuesday" "14" "November" "2017" "08:37:20" "+0100" "Greg KH" "greg@kroah.com" "<20171114073720.GA27647@kroah.com>" "19" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111407:37:20" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       greg@kroah.c Nov 14   19/774   " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<E1eEPJ5-0006vL-TF@rmmprod07.runbox>" ("<20171113151524.GA16983@kroah.com>" "<E1eEPJ5-0006vL-TF@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9900 invoked by uid 550); 14 Nov 2017 07:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9882 invoked from network); 14 Nov 2017 07:37:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=ATctr443kFiHWCaoZsLv7NG62UbZv
	bl8f8Rs9xmMcpA=; b=MlRWB3ieqdJp0yEO16CSpXydn6ooO91wSu00V6dOmOcsy
	dYf8VFhUCXExL0wsxTRtbkldwU/qBZhnSA/+mRPA6jgb9XS/OmUYp6aIR5s0JcXA
	bh06DL3LPqRNMAyQ+GHYiOHZp5i5fD3iS3tHzqO5u18HrtRr4T9kb1RbSypXOmNi
	+OEpcwC2uhN2Ddbzhi8PndyHpVQMnr/rwAv79Oab3pLwSuBAIzFl/w6izxm0jJzM
	p7e5yMv2cgm18oRf4YdTRizOVZHnYmyH4z6O4l1aKGHd5sYXXsFE9z+v8u/LUlvS
	cysei7gznnmSOKnUVFC0d7csyGrJLIbdsTMb7l1Fg==
X-ME-Sender: <xms:Kp0KWvbQ3Y4SH_FPrNHHmCzxC2jKdKE_l3SbxgXYg7k8QHBW_NEcIw>
Date: Tue, 14 Nov 2017 08:37:20 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Vladis Dronov <vdronov@redhat.com>
Message-ID: <20171114073720.GA27647@kroah.com>
References: <20171113151524.GA16983@kroah.com>
 <E1eEPJ5-0006vL-TF@rmmprod07.runbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1eEPJ5-0006vL-TF@rmmprod07.runbox>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On Mon, Nov 13, 2017 at 07:42:27PM -0500, David A. Wheeler wrote:
> On Mon, 13 Nov 2017 16:15:24 +0100, Greg KH <greg@kroah.com> wrote:
> > It's the arbitrarily nature here that I am curious about, it feels like
> > it should be "all or nothing", for CVEs to mean much here.  Right now it
> > seems like it is just, "all that we care to track"?  :)
> 
> "All" would be awesome, though unlikely.  But even if that's the eventual goal,
> "good starts" are still good starts.

But really, this isn't even a "good start", it's identifying a bug fixed
over a year ago for a kernel that only one company seems to care about
because they are _not_ following the recommended upstream stable kernel
patches because they "know better" :)

That's my objection here.

thanks,

greg k-h
