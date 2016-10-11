X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Tuesday" "11" "October" "2016" "17:01:03" "+0200" "Greg KH" "greg@kroah.com" "<20161011150103.GA4569@kroah.com>" "17" "Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory access" nil nil nil "10" "2016101115:01:03" "[oss-security] linux kernel do_blockdev_direct_IO invalid memory access" (number mark "U       greg@kroah.c Oct 11   17/709   " thread-indent "\"Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory access\"\n") "<20161011144645.GB3606@kroah.com>" ("<CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>" "<20161011144645.GB3606@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32685 invoked by uid 550); 11 Oct 2016 15:01:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32664 invoked from network); 11 Oct 2016 15:01:07 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=7+u33TEyVhRS2AThjUMTx+FfF7w=; b=Gxi0H
	3wPAkMXmq8YDgTKjZueTYcVSXlYzhIHs0r32CW6wQybuAEej/rPPt7U82mglMoAT
	AHZOnSTSsxSAPh1V3jlaSAA5VzKJphQEshSebLgyal+wXxe2U3JtmYXZgVc4Usxi
	xhfkGFp09NsxuYjYFI1rWrAFD45lhiRvj7ItaA=
X-Sasl-enc: esH2oAUIUAWY0M5fnq08CFIuvhkrG0qkqUSVfWolQlrC 1476198055
Date: Tue, 11 Oct 2016 17:01:03 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161011150103.GA4569@kroah.com>
References: <CAFkTriL_sGQ=0ym3ALDXjWMYNJxKC3UH02Lx7v9Zj_CsX9NOiA@mail.gmail.com>
 <20161011144645.GB3606@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011144645.GB3606@kroah.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] linux kernel do_blockdev_direct_IO invalid memory
 access

On Tue, Oct 11, 2016 at 04:46:45PM +0200, Greg KH wrote:
> On Tue, Oct 11, 2016 at 10:22:48PM +0800, Marco Grassi wrote:
> > Hello,
> > 
> > I posted this to ask feedback on security at kernel dot org, but I think my
> > mail got bounced back. Not sure if from the mailing list or from some
> > single recipient.
> 
> It got there, you could have given us a few more hours to respond,
> especially as most of the USA was still asleep, and others of us were in
> a conference during the day in Europe. :(

To be specific, you only gave us one hour advance notice.  Now normally
the kernel security team is fast, but expecting a response that quickly
is a bit disingenuous...

greg "even I sleep sometimes" k-h
