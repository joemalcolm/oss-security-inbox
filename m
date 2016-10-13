X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1051" "Thursday" "13" "October" "2016" "14:57:17" "+0200" "Greg KH" "greg@kroah.com" "<20161013125717.GA16563@kroah.com>" "29" "Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" "^Date:" nil nil "10" "2016101312:57:17" "[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" (number mark "        greg@kroah.c Oct 13   29/1051  " thread-indent "\"Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)\"\n") "<1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>" ("<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>" "<1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11595 invoked by uid 550); 13 Oct 2016 12:57:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11577 invoked from network); 13 Oct 2016 12:57:20 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=zxzMO7MZ5reTvcq8CkCbaEw8JEY=; b=iX/sA
	5UGp6+S3p28JCRNTruFybpC7RR9DbzC36gT19CtH1LVjx0wSyy9il7Ah0bunf/AT
	ot5/vlngtEA1amHl+YrQXai+aun3IsHwdWPnm/04sBaJcjjuO+8euD4tLxQyniFw
	LzpFacJdOsEfOv0JuGvSHUuCJEee+/7pnmQcI4=
X-Sasl-enc: pyZdoWMPfvANEyjFVgehEVcbUtrmOi2EH6rQg0pSPClA 1476363427
Message-ID: <20161013125717.GA16563@kroah.com>
References: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>
 <1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Date: Thu, 13 Oct 2016 14:57:17 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Stack corruption while reading /proc/keys
 (CVE-2016-7042)
To: oss-security@lists.openwall.com

On Thu, Oct 13, 2016 at 08:46:51AM -0400, Vladis Dronov wrote:
> Hello,
> 
> It was found that when gcc stack protector is turned on, proc_keys_show() can
> cause a panic in the Linux kernel due to the stack corruption. This happens
> because xbuf[] is not big enough to hold a 64-bit timeout value rendered as weeks.
> 
> CVE-2016-7042 was assigned to this flaw internally by the Red Hat. Please, use it
> in the public communications regarding this flaw.
> 
> References:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1373966 (patch)
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1373499 (reproducer, patch)
> 
> Note: Unfortunately, I'm not sure if the patch was already sent to security@kernel.org
> or alike by the patch author.

Nope, I don't think that security@kernel.org was sent the patch, but if
the maintainer of the subsytem already knows about it (it looks like he
wrote the patch), then there was no need to let that alias know about
it, right?

Any idea if this is going to be submitted to be merged upstream?

thanks,

greg k-h
