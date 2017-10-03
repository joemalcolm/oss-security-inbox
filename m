X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1542" "Tuesday" "3" "October" "2017" "13:27:09" "+0200" "Greg KH" "greg@kroah.com" "<20171003112709.GA30134@kroah.com>" "36" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "10" "2017100311:27:09" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Oct  3   36/1542  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20170928213721.GA5119@grsecurity.net>" ("<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170928073533.mlntvkfnzl6sann7@eldamar.local>" "<20170928143420.GB6123@kroah.com>" "<20170928213721.GA5119@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28206 invoked by uid 550); 3 Oct 2017 11:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28182 invoked from network); 3 Oct 2017 11:27:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=2A7t1cIm/QvQ5PWxfT
	Fm46nfxYIaqmaOo7TlvLiYiVo=; b=N6Kily2+hIFGBDtIVRM65SUMUDKApqZ13z
	iY2kGoCVmZQMNRE4IJTwE5eLO2FKkSb18QthNIH5vzgHmNfinYxHptpn8arPxZ4N
	+YLB5eN2gifuNcOA4lWSf464URiA7ukhaFasGQwYwOJZkDurj56GFtoJkLrG+Q1x
	fG8pQVD0GfY0ES8PaZkkBqc9aAG7PDgcQLqh6fmbue0aFi1VPJSwYHL5NFuxTklx
	vjksAPbIGq7miBmIv1gS/c69xtuspQokPlq4GoIdZulmIMNe/jhtV3eIfcEuRMCq
	VXBh9+110KbTLR2sRj6T0fzoBIZN3u84e8/nl+hwbhEWpGp/IG8A==
X-ME-Sender: <xms:A3TTWX2dF0AsNzL7VZ3Ow15PKK3mo9pb0EdWTCclC62sjyOxeyJj6w>
X-Sasl-enc: 9ynJv0D3K9pOhMl3MzkW7XJ4T29XsV1+1/AwLYtY4oFR 1507030018
Message-ID: <20171003112709.GA30134@kroah.com>
References: <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
 <20170927130424.GA19695@kroah.com>
 <20170928073533.mlntvkfnzl6sann7@eldamar.local>
 <20170928143420.GB6123@kroah.com>
 <20170928213721.GA5119@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170928213721.GA5119@grsecurity.net>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Tue, 3 Oct 2017 13:27:09 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Thu, Sep 28, 2017 at 05:37:21PM -0400, Brad Spengler wrote:
> > > CVE-2017-0605:
> > > --------------
> > > https://security-tracker.debian.org/tracker/CVE-2017-0605
> > > upstream: (4.12-rc1) [e09e28671cda63e6308b31798b997639120e2a21]
> > > 
> > > is e.g. includedin 3.16.44 (a1141b19b23a0605d46f3fab63fd2d76207096c4),
> > > 3.2.89 (e39e64193a8a611d11d4c62579a7246c1af70d1c) but not in 4.9.
> > > 
> > > (afaics not Cc'ed to stable).
> > 
> > Ouch, thanks for letting me know, that's not good, we don't want to get
> > the trees out of sync for obvious reasons.
> 
> The above CVE shouldn't exist; the patch doesn't fix any vulnerability
> as the upstream commit message itself notes, and didn't need to be
> backported to any of the kernels it was backported to.  Not only that, the
> above advisory marked it as a remote vulnerability with critical severity.
> It looks like Debian and Ubuntu released updated kernels, while Red Hat and
> SuSE marked it as WONTFIX and unaffected, respectively.  I am not sure why
> neither simply rejected the CVE.

Yeah, this one keeps trying to get re-introduced as a "fix", when it
really isn't (see the archives of the stable@vger mailing list for
details.

I don't know how you can "reject" a CVE, is there a proceedure
somewhere?  There's lots of CVEs out there that people create against
the kernel that just aren't issues at all, but I've been ignoring them
as it makes people happy to assign and track them for no reason.

Is there some way a project can get them rejected?

thanks,

greg k-h
