X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3075" "Thursday" "28" "September" "2017" "16:34:20" "+0200" "Greg KH" "greg@kroah.com" "<20170928143420.GB6123@kroah.com>" "75" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092814:34:20" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Sep 28   75/3075  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20170928073533.mlntvkfnzl6sann7@eldamar.local>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170928073533.mlntvkfnzl6sann7@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19524 invoked by uid 550); 28 Sep 2017 14:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19483 invoked from network); 28 Sep 2017 14:34:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=jRDBRmmyEXSweQVkYV
	CSgdpMLeNM2NWf6SC7tt+rBx8=; b=INhBZJyTjem7rKScNXhWWEqaehl1LR5+hk
	OTbx8LoxDhu42XRiEeWV3SxJ41v6dLGtF7uvy2diqhrF41aDVTF3+//AYGlkOcyx
	V3T5zvjBgSTrz3tfewykAvhbUf97ONtAA/rD+M7JjYC+XiGrxbHHBhKeGHjCYJIG
	lumRYB+e8O6+WXghTHLMwKkE4LRddF1tT2ZdHi2bxSJDLyM6/R9e/1qhdYwxm9HQ
	1tRunsrFFqD5FbXV9k8irPIf6kdF81XLm09OgJ2VCbvZJAFIrz9lV+z4djY2EjO6
	40dz1pYJ4nOxxUt9AtXA0rMfYUfxgzabwzSHDZbS7Jy8c7GMztBQ==
X-ME-Sender: <xms:bgjNWfkbiI-8ZZDZX7YYN3PC4lXPwVw2-n_uJJ3jlU-UCGIAAP0m2g>
X-Sasl-enc: TWF9NB4wnDrPCkccThJRdAiaYesX82625ot5xN5z0AII 1506609262
Message-ID: <20170928143420.GB6123@kroah.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
 <20170927130424.GA19695@kroah.com>
 <20170928073533.mlntvkfnzl6sann7@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170928073533.mlntvkfnzl6sann7@eldamar.local>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Thu, 28 Sep 2017 16:34:20 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Thu, Sep 28, 2017 at 09:35:33AM +0200, Salvatore Bonaccorso wrote:
> Hi Greg,
> 
> On Wed, Sep 27, 2017 at 03:04:24PM +0200, Greg KH wrote:
> > On Wed, Sep 27, 2017 at 02:51:49PM +0200, Solar Designer wrote:
> > > Besides, Greg focuses on the problem that some ignore the stable kernels
> > > or the "curated and tested stream of fixes" that could be seen in there,
> > > whereas another concern mentioned earlier in the thread is that the
> > > stream is also incomplete because some security fixes are not marked as
> > > such and not CC'ed to stable.  So that's two problems mentioned in the
> > > thread, but vendor-sec was not / linux-distros is not related to either.
> > 
> > For that second issue, I've not ever really run into any "known security
> > fix" not being cc:ed to stable.  Do you have any known examples where I
> > can go poke the maintainers to do better?
> > 
> > We have plenty of the normal "bugfix was merged that a few years later
> > turned out to be a 'security' issue, but no one realized it at the time"
> > changes that get merged.  And to help combat that, we are doing more and
> > more "smart mining"[1] of the kernel commits to try to catch patches
> > that match those types of fixes and get them merged into the stable
> > kernels.
> > 
> > You can see the initial results of this work with the huge increase in
> > patches being merged to the 4.9 and 4.4 stable kernels vs. any older
> > stable kernel trees in the past.
> 
> This is defintively not "exhaustive", and not exactly what you are
> pointing out. I thought it might be still of help, so I quickly looked
> what we know in our kernel-sec repository tracking as well fixed which
> are "needed" yet in 4.9:
> 
> CVE-2017-0605:
> --------------
> https://security-tracker.debian.org/tracker/CVE-2017-0605
> upstream: (4.12-rc1) [e09e28671cda63e6308b31798b997639120e2a21]
> 
> is e.g. includedin 3.16.44 (a1141b19b23a0605d46f3fab63fd2d76207096c4),
> 3.2.89 (e39e64193a8a611d11d4c62579a7246c1af70d1c) but not in 4.9.
> 
> (afaics not Cc'ed to stable).

Ouch, thanks for letting me know, that's not good, we don't want to get
the trees out of sync for obvious reasons.

> CVE-2017-12154:
> ---------------
> https://security-tracker.debian.org/tracker/CVE-2017-12154
> from https://marc.info/?l=oss-security&m=150640182829622&w=2
> 
> upstream: released (4.14-rc1) [51aa68e7d57e3217192d88ce90fd5b8ef29ec94f]
> 
> AFAICS, not Cc'ed to stable.
> 
> CVE-2017-14156:
> ---------------
> https://security-tracker.debian.org/tracker/CVE-2017-14156
> upstream: released (4.14-rc1) [8e75f7a7a00461ef6d91797a60b606367f6e344d]
> 
> CVE-2017-1000252:
> -----------------
> https://security-tracker.debian.org/tracker/CVE-2017-1000252
> The reaon that there is no Cc to stable might have been actually a
> safety guard to not sent out the commit to a public list, but not
> sure.
> 
> upstream: released (4.14-rc1) [3a8b0677fc6180a467e26cc32ce6b0c09a32f9bb]
> 
> Hope this might be of help.

Yes, many thanks, I'll add these to the list of things to queue up soon.

thanks again,

greg k-h
