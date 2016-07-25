X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["375" "Sunday" "24" "July" "2016" "18:13:19" "-0700" "Greg KH" "greg@kroah.com" "<20160725011319.GA17899@kroah.com>" "16" "Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Date:" nil nil "7" "2016072501:13:19" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "        greg@kroah.c Jul 24   16/375   " thread-indent "\"Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>" ("<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1465 invoked by uid 550); 25 Jul 2016 01:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1444 invoked from network); 25 Jul 2016 01:13:17 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=c245RK5O/MhCqneB8E97b+9034o=; b=egTqC
	mWV6YCA0xTDtaRMOdoBzBT05O3Dyq/FL9ypn033jVN79BIDDCgK0T4ev8mRbixJP
	g9yoqb9TGPu77GWOz2Nrogzs8PENj9hLyUcoJGODZ41bxsr4lfdLnPXkHcUEGIqJ
	hYAm6LsRhpsoIxBcMNeA4ZMbEl7tBiNZMlpshs=
X-Sasl-enc: X4vsxrfAhUnZRDPugW6OEPtpdjCzI3aW59AkiwxAnir7 1469409183
Message-ID: <20160725011319.GA17899@kroah.com>
References: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
 <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Sun, 24 Jul 2016 18:13:19 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of
 service in airspy USB driver.
To: oss-security@lists.openwall.com

On Mon, Jul 25, 2016 at 10:51:16AM +1000, Wade Mealing wrote:
> Hit send too early,
> 
> 
> Upstream patch:
> https://git.linuxtv.org/media_tree.git/commit/?id=eca2d34b9d2ce70165a50510659838e28ca22742
> 
> Maintainer has yet to send to LKML.

If it's in the media tree, it doesn't go to lkml.

Any reason why this isn't tagged for a stable kernel release?

thanks,

greg k-h
