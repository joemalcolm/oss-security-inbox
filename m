X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1153" "Monday" "5" "September" "2016" "15:57:48" "+0200" "Greg KH" "greg@kroah.com" "<20160905135748.GA11745@kroah.com>" "32" "Re: [oss-security] CVE request: Linux kernel mbcache lock contention denial of service." nil nil nil "9" "2016090513:57:48" "[oss-security] CVE request: Linux kernel mbcache lock contention denial of service." (number mark "U       greg@kroah.c Sep  5   32/1153  " thread-indent "\"Re: [oss-security] CVE request: Linux kernel mbcache lock contention denial of service.\"\n") "<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>" ("<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21643 invoked by uid 550); 5 Sep 2016 13:58:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21624 invoked from network); 5 Sep 2016 13:58:14 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=3oo4dvvQZkjsGyt
	jcd/emSOTzpA=; b=I5GasQv9ubwluJoAGJ19X1pe5MCS50mWrIx4KJBV8VwCXbo
	v8XSmpqB9OfIpsxp2dvqqEkDcFRVP17+nqcLB/tmKVcKNRbz33P/3oRp3Rc8moJf
	ezetrvsfZimAkfJ6ORKpGCcnN8Ntf6/IRJbN73Ih5ht16154cQJYHGJY1rPg=
X-Sasl-enc: hUpyq6CEwoiTxQ3lFgQkbpe5aTrdepXRM/9YCGHYWLdO 1473083881
Date: Mon, 5 Sep 2016 15:57:48 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160905135748.GA11745@kroah.com>
References: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)
Subject: Re: [oss-security] CVE request: Linux kernel mbcache lock contention
 denial of service.

On Mon, Aug 22, 2016 at 03:28:51PM +1000, Wade Mealing wrote:
> Gday,
> 
> A design flaw was found in the file extended attribute handling of the
> linux kernels handling of cached attributes.  Too many entries in the
> cache cause a soft lockup while attempting to iterate the cache and
> access relevant locks.
> 
> Upstream has replaced the mbcache code with an updated version which
> was not a patch but a clear-cut reimplementation of the code, no
> single diff
> 
> Soft lockup information is in both the bugzilla.kernel.org and
> referred to in the LWN article.  This would affect containers running
> with ext4 as it shares the same mbcache between all containers/host.
> 
> This did not affect Red Hat Enterprise Linux versions 5,6 or 7, so I
> can't validate the claim that it does affect other newer kernels.
> This may be worthwhile tracking for others who are affected by this
> flaw.
> 
> For those following along at home, this seemed to be fixed in:
> 
>  ±  git tag --contains be0726d33cb8f411945884664924bed3cb8c70ee
> v4.6

That commit is for only the ext2 filesystem, how would it fix an issue
in ext4?

totally confused,

greg k-h
