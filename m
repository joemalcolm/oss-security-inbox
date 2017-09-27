X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1382" "Wednesday" "27" "September" "2017" "15:04:24" "+0200" "Greg KH" "greg@kroah.com" "<20170927130424.GA19695@kroah.com>" "29" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092713:04:24" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Sep 27   29/1382  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20170927125149.GA2500@openwall.com>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5514 invoked by uid 550); 27 Sep 2017 13:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5490 invoked from network); 27 Sep 2017 13:04:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=Tar4jM8RChRCoCKRkk
	YdVfhZXXhjIS4QPk/mlQ2Vsoc=; b=Yus0JdVF4906YrNJURLWTSWKwn+v8voqlF
	l5nS6xBTyO8nWXuxxbHPOJNqYD9glLhwvGLqEFFw6Eq5zLxs69bxwug0fSKnpXEQ
	BLiP4gHyj5RdBbxuktbiVwaSGLTUFWDe1ZsWqAcj8EudJH5ppdQIX9OaGN7XE2aV
	Ko45C8VjyEguh4PDnAqiYWdDWX6ifS7+xqy1G0H22o8p+qiz7Ua89rsYt1bp7SQa
	8it01tAFqZbz6sH3ctI1L5wdYe128ekn8T3k/0AjmNtYmvTLRkxeOxJ3ePnVbH+x
	8kaREYrhkzY4cg63/XFNIVPWlb6Cf80WG1sqHRiwEdTOSiYUpVpA==
X-ME-Sender: <xms:2qHLWbvXxT3NPLN63Bch5vX0XW_hBlL5D8pqeqgeV9BswiRQgRQUcg>
X-Sasl-enc: 8UvwIqfSXvIf5pOEoznG8H9m8bXi6zVwnxYK+qd7AOPE 1506517465
Message-ID: <20170927130424.GA19695@kroah.com>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda>
 <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927125149.GA2500@openwall.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Wed, 27 Sep 2017 15:04:24 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Wed, Sep 27, 2017 at 02:51:49PM +0200, Solar Designer wrote:
> Besides, Greg focuses on the problem that some ignore the stable kernels
> or the "curated and tested stream of fixes" that could be seen in there,
> whereas another concern mentioned earlier in the thread is that the
> stream is also incomplete because some security fixes are not marked as
> such and not CC'ed to stable.  So that's two problems mentioned in the
> thread, but vendor-sec was not / linux-distros is not related to either.

For that second issue, I've not ever really run into any "known security
fix" not being cc:ed to stable.  Do you have any known examples where I
can go poke the maintainers to do better?

We have plenty of the normal "bugfix was merged that a few years later
turned out to be a 'security' issue, but no one realized it at the time"
changes that get merged.  And to help combat that, we are doing more and
more "smart mining"[1] of the kernel commits to try to catch patches
that match those types of fixes and get them merged into the stable
kernels.

You can see the initial results of this work with the huge increase in
patches being merged to the 4.9 and 4.4 stable kernels vs. any older
stable kernel trees in the past.

thanks,

greg k-h

[1] yes, we know people have been doing this for years, but they almost
    never notify upstream about this for various reasons.
