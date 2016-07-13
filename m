X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["795" "Thursday" "14" "July" "2016" "07:45:00" "+0900" "Greg KH" "greg@kroah.com" "<20160713224500.GD12156@kroah.com>" "23" "Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" nil nil nil "7" "2016071322:45:00" "[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" (number mark "U       greg@kroah.c Jul 14   23/795   " thread-indent "\"Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount\"\n") "<20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>" ("<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>" "<20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22382 invoked by uid 550); 13 Jul 2016 22:45:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22360 invoked from network); 13 Jul 2016 22:45:25 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=jiXwYy1rf0COkR6tE9ivPmli39o=; b=SRIQP
	4OsWSCUVSyChrjqbfccsDOIH+KFnsmHG5s81/V8Tze7gmna4ORJgF9C81kIhQcdz
	rgQZ0tPlGVTbr2meEXfiNXmG6OfUCzZ1mRoSalUTKo+Rjo8eTncX3CdcB0Zm4Vg2
	McED8/ictFbU8vxtoTBBLEeccQXSYxv/i4Zt/k=
X-Sasl-enc: zHtnZCTr4TuxC7M1AXI5idfMGBF1fc0UqUhvXcNUxntt 1468449912
Date: Thu, 14 Jul 2016 07:45:00 +0900
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: caiqian@redhat.com, cve-assign@mitre.org
Message-ID: <20160713224500.GD12156@kroah.com>
References: <1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>
 <20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.6.2 (2016-07-01)
Subject: Re: [oss-security] Re: cve request: local DoS by overflowing kernel
 mount table using shared bind mount

On Wed, Jul 13, 2016 at 12:59:40PM -0400, cve-assign@mitre.org wrote:
> > It was reported that the mount table expands by a power-of-two
> > with each bind mount command.
> 
> > If the system is configured in the way that a non-root user
> > allows bind mount even if with limit number of bind mount
> > allowed, a non-root user could cause a local DoS by quickly
> > overflow the mount table.
> 
> > it will cause a deadlock for the whole system,
> 
> >> form of unlimited memory consumption that is causing the problem
> 
> Use CVE-2016-6213.

A CVE for an "improperly configured system"?  Huh?  What distro has such
a configuration set by default?  This isn't a kernel bug, so what is
this CVE classified as being "against"?  It better not be against the
Linux kernel...

confused,

greg k-h
