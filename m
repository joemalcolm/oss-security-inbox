X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3203" "Thursday" "28" "September" "2017" "16:33:13" "+0200" "Greg KH" "greg@kroah.com" "<20170928143313.GA6123@kroah.com>" "61" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092814:33:13" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Sep 28   61/3203  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20170927145713.GA2847@openwall.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170927145713.GA2847@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9891 invoked by uid 550); 28 Sep 2017 14:33:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9873 invoked from network); 28 Sep 2017 14:33:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=0MgSEL2PIdMkO6KEXh
	cX/8lQeBL26qkeYVkgNl2iMjY=; b=rhKvXoliA5R4uLcM60fTIWLYercIqVj0a4
	qcOvewqub4JXPYVnZ3bC41m5Ib5m1QCBteefPEqu+xlVt/FLN0VlemzRF0GRItr4
	uXM4LCWrwKQ6jfax8qks96UdKsgO46VnD+z3WoDtrHkVlff3/CKFFhIe3/+SOqio
	fK/6pAK+GPSb/QzwaXQ6Le9ylRVGRnatYS1HcrtHRKSxce2Tu762mwJYp4xbynrs
	eH1S6nv94H7OCCJt8rJPiBeMFy3dgnyZeDp10rz1T4kjDR3o8cl3sRsvMmaQ8VxZ
	DKTKJ8BMZBVhO2AHxnlLgMmIEiz+0ACYuL6E2eRAjkJFJBvGYbcw==
X-ME-Sender: <xms:KwjNWYXQY902NWRE8Ri0fRO6TeU4HENJTGeOxBR1HUqYDsWyAsz55Q>
X-Sasl-enc: YEqbWYK0IcACNSRn0lYG5BlytfEMDQhZoucWdGfAfvB4 1506609194
Message-ID: <20170928143313.GA6123@kroah.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
 <20170927130424.GA19695@kroah.com>
 <20170927145713.GA2847@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927145713.GA2847@openwall.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Thu, 28 Sep 2017 16:33:13 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Wed, Sep 27, 2017 at 04:57:13PM +0200, Solar Designer wrote:
> On Wed, Sep 27, 2017 at 03:04:24PM +0200, Greg KH wrote:
> > I've not ever really run into any "known security
> > fix" not being cc:ed to stable.  Do you have any known examples where I
> > can go poke the maintainers to do better?
> 
> I haven't been keeping track, but as you're aware Brad Spengler brought
> these up from time to time, including recently on this list:
> 
> http://www.openwall.com/lists/oss-security/2017/08/05/1
> 
> > We have plenty of the normal "bugfix was merged that a few years later
> > turned out to be a 'security' issue, but no one realized it at the time"
> > changes that get merged.
> 
> It feels unlikely Al Viro didn't realize the commit on 2017-07-07 was a
> security fix, given the description of the race condition and the kernel
> panic triggerable by an unprivileged user posted to linux-fsdevel on
> 2017-05-31, and the Red Hat private Bug created on 2017-07-06.  Rather,
> it could have been intended to give distros some time to patch (4 weeks
> to Red Hat, 1 week to the rest?) before drawing even more attention to
> the problem.  But this also resulted in stable not CC'ed on the commit.
> 
> I am not blaming anyone - it's a tough tradeoff.  For an already public
> issue (since 2017-05-31 on linux-fsdevel), the committed fix doesn't
> literally leak it (can't leak what's already public), although it does
> create some additional exposure (minimized by not mentioning security
> relevance and not CC'ing stable).  I am also not blaming Red Hat for
> giving linux-distros less time - that's possibly caused by linux-distros
> policy of 14 days max, 7 days preferred.  I think the 7 or 8 days was
> just right.  I think Red Hat should learn to handle such issues much
> quicker, though, so that up to 14 days would be comfortable for their
> own handling as well.  Especially for semi-public issues (in this case
> technically public, but obscure).
> 
> I am primarily saying that we should admit that such cases exist, I
> suppose for varying reasons, when stable is not CC'ed on what's known to
> be a security issue at time of commit.

Yes, fair enough, you are right.  Those cases do exist, this one fell
through the cracks, which will always happen, we are all human, even Al :)

> I don't know if you should "go poke" Al Viro "to do better".  While many
> would disagree with resolving the tradeoff like that, some would support
> that.  As an option, you could acknowledge that such cases will come up
> from time to time, and ask to be notified of them by means other than
> CC'ing stable.  Maybe this was already in place for that one occasion?

I don't have access to my email archives at the moment, but I _think_
this one was my fault as it was on my list of things "go look at", and I
never go to it in time.  My current list of patches that fall into that
category is rather large, due to my recent travels, hopefully I'll catch
up on that by the end of this month.

I always suggest that if I do miss things, please let me know through
whatever way you want to (public list, security@k.o, private email,
poking me on irc, taking me out to drinks, etc.)

thanks,

greg k-h
