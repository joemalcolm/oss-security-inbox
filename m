X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["759" "Tuesday" "26" "September" "2017" "09:32:14" "+0200" "Greg KH" "greg@kroah.com" "<20170926073214.GA8108@kroah.com>" "22" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Cc:" nil nil "9" "2017092607:32:14" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Sep 26   22/759   " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<1978278.8CZP0B31Sj@wanheda>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10235 invoked by uid 550); 26 Sep 2017 07:32:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10214 invoked from network); 26 Sep 2017 07:32:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=F7a0xQGweQWqPXAu2o
	0a5qGAqOZWWLjhYYAgrzgIJuo=; b=bw7o3frjs8UO4kFdt4zJHCBn3q+e8+NWC+
	coPYaHM2tLole93feOvJ+BwBX30UyfWngExV6+ueXXpB29EVwqSPVXFvmV9/0Lse
	3yyGtoFVEd2hHL3BS4Uev0L5x2mQUqwyWPFhjZXxpzhq23HCbFSei8/OEsC7eFky
	UsRGNTpT8m+zdnMgNkhmNSbygYKajYp299PkyhqvurkIsmkzEkIgXzr0ZYSct6p6
	fMntoGF5Lpd3Hwy4QzmdLfyzarWS/+KcnVc48DznrLpt8aeDx0Mgw4ABXk5xUVVt
	1UICnqQj8VASezgE+rkZ2/PcfDgZs/AgMt2NKVumqLBiob0/1ATw==
X-ME-Sender: <xms:dALKWSg1mCHQBKonBUvdYFns_3jiNniP51_z-FnCsKYrs6Ruhz98Ig>
X-Sasl-enc: SK9ZEVZWWrN6Vd5z7DX8XweXK9kjvzd0S7rnns+2TRc0 1506411124
Message-ID: <20170926073214.GA8108@kroah.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1978278.8CZP0B31Sj@wanheda>
User-Agent: Mutt/1.9.1 (2017-09-22)
Cc: oss-security@lists.openwall.com, "Priedhorsky, Reid" <reidpr@lanl.gov>
Date: Tue, 26 Sep 2017 09:32:14 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: Agostino Sarubbo <ago@gentoo.org>

On Tue, Sep 26, 2017 at 09:08:20AM +0200, Agostino Sarubbo wrote:
> This certainly does not answer to the original question, but upstream should 
> consider to do something like ffmpeg does here:
> https://www.ffmpeg.org/security.html
> 
> I guess this would be benefit for all.

Define "all" :)

Anyway, as many people know, there are various reasons why the kernel
security team works the way it works, let's not debate that issue again
please.

But it turns out it's not all written down anywhere in one place, for
people to easily understand, so I've started to do so.  I'm giving a
talk about this very topic tomorrow at a conference, and should be
turning it into a document sometime in the near future that I will
publish somewhere.

thanks,

greg k-h
