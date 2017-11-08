X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1401" "Wednesday" "8" "November" "2017" "10:15:17" "+0100" "Greg KH" "greg@kroah.com" "<20171108091517.GA18656@kroah.com>" "36" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017110809:15:17" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       greg@kroah.c Nov  8   36/1401  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<1510086603.29942.2.camel@pnnl.gov>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" "<20171107202237.GA10679@kroah.com>" "<1510086603.29942.2.camel@pnnl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5823 invoked by uid 550); 8 Nov 2017 09:15:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5784 invoked from network); 8 Nov 2017 09:15:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=v9W5o2
	biWHL5KFVppa9x86Ks1yrWumeasEgFnoOrsDU=; b=Bkw94EKIqobuQDhU+x9gGS
	jlhevyPtVUAmYTD2T0fDLIkbItmbwhe7x169TpnmYBPPRP0JJyGc2W8kaROImuyl
	AOmd9DnHcqRt2fYBvqRxAi0mLpg+otfvoqrc/Mco54neElITLqqRxRIcGbNpbTSK
	VjcZLSAKfUHBR5bpX5LgiRCa9+7FzLUx1y6G7AAawQZLizXy48Xo97Q4+OGO0ObP
	AJM21nd+uR+PfSb6adbdPgOjFd4r1704wnMZ+7SD6jusVCCcYKigNQX5q0XPmBEr
	WN+WodtW0WGAAHtngoeSx1xHoNTKCq2JaKxTsS6hym+6rKHY/93tsUsxKPbgfztg
	==
X-ME-Sender: <xms:GcsCWpsXZ-Iub-wdT1ict7Y1euiBeZm7YSDiOMBb058oaAG95U0-JQ>
Date: Wed, 8 Nov 2017 10:15:17 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20171108091517.GA18656@kroah.com>
References: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>
 <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
 <20171107202237.GA10679@kroah.com>
 <1510086603.29942.2.camel@pnnl.gov>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1510086603.29942.2.camel@pnnl.gov>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On Tue, Nov 07, 2017 at 08:30:05PM +0000, Maier, Kurt H wrote:
> On Tue, 2017-11-07 at 21:22 +0100, Greg KH wrote:
> > 
> > I hate to ask, but why are you getting CVEs for bugs fixed over a
> > year
> > ago, and are already in all stable kernel releases a year ago?  Why
> > does
> > it matter?
> > 
> > Unless you happen to have a product that doesn't ever do kernel
> > updates
> > from the stable trees, and well, then you know what you are doing and
> > don't need CVEs assigned either, right?  :)
> > 
> 
> Kernel maintainers' policy is clear, and nobody is asking for that to
> change, but please don't sandbag the process of keeping track of
> vulnerabilities.  The fraction of "products" (regardless of vendor)
> that run linux and never get updates approaches unity.  Being able to
> precisely catalog which linux releases suffer from which
> vulnerabilities is useful to many.

Well, I'm working on fixing the "devices do not get updates" issue
through other means, so don't just give up on that one just yet :)

As for the "keep track of vulnerabilities", is that what is really
happening here?  Why pick a random bug fix from over a year ago for a
CVE vs. the 100 other bugfixes in the past few weeks/months?

I'm really curious as to what triggered this specific CVE request that
somehow misses the hundreds/thousands of other fixes that land in newer
kernel releases?

thanks,

greg k-h
