Received: (qmail 15479 invoked by uid 550); 30 Jan 2024 16:33:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15453 invoked from network); 30 Jan 2024 16:33:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1706632536; x=1706718936; bh=nBj7T+TEFT
	r+IXQo6ppGotZ5aq3iJPdLMsKTv86Cf7Q=; b=GvjOBO1jvUsYWAPrvp5KMS5ppN
	/yMhgrSQ/LosEqzWNdVc5TfMv+jeke+xRUSwZAXHWh56g669Wj9QqHKRRX8tXJ/p
	7a3bZeb1m7U06A1vVxghEXhECko+FJeMAhye92G8OwDpdnkKukHJY0s51in7HHsO
	qagY3CYeF+XMyBodcgTbnuwPsKvh/TMb8E+uiTc0/JJKdTVy9c44TjVkHNBs4IyU
	DK01tuhwQqbcD2wbIEm4Pw6Z7BDJSO+81G/5RjVOug1XCQu4Jsuk0OMOV3dIZfDi
	te42wo956aXxSHgjEPbWegx5moUL1H54vf9pNg7KDWvqR3WDHVBREj2Gg+tw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1706632536; x=1706718936; bh=nBj7T+TEFTr+IXQo6ppGotZ5aq3i
	JPdLMsKTv86Cf7Q=; b=jv4yXlXAPZAMbyT2WcwjBrrOQ4AckJQK0+f+qctw76Uc
	o0OvnTZo+Gn+FEZQ0rgflRQQ4fHo4sFI0aY9+U8JNQochgMxp3yh6agD/pRu/v85
	Qk1R8SXZe1EQEmacuOoS2J0vyCFM73U5i7vd1ujjCd/ne800FQex3oksebYcelXI
	VnoYT56mFOtau3T+ViGDeAlTUKKBds/AvZt19Op7/9RJ40+vNfoQUgzuMI67L2YM
	oIrUhqrfX9S2pKmM00ZH4cRzd5it3JwtkYvX6wiQTxhyQz0EI7SbYbrCKRRwXKXg
	0E9PCp+TPxak7SeCfY1rL9HGYv7fhBd1vDbCMDfvYg==
X-ME-Sender: <xms:VyW5Zeeokq5wTcruWigr6J0JgBADIUVsK5-R0H5z6ZSX4GrbfSpcGQ>
    <xme:VyW5ZYOQG2dBcyHyk7nQgxgABhCrNOyolkDFArf_n_ZI8k0dP1uXXJG4Vt-8Ec-_8
    tEMjA_Ws7R00g>
X-ME-Received: <xmr:VyW5ZfiRtnR3N0aSIxpnglVYCZjiKcnae8AnrGSp0qzRl5l0gTWGvDia3OdG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtjedgvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    gfrhhlucfvnfffucdlqdeimdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddt
    tddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeevffehjeekteehlefhheejfeeujefhgefffeffhfefjeejgfev
    iefhfefhteevteenucffohhmrghinhepnhhishhtrdhgohhvpdhkvghrnhgvlhdrohhrgh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgv
    gheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:VyW5Zb9iZJ4L_yEorNZP2daZ3z-hzQff6d6ECiTe30rTRC9AtkStZA>
    <xmx:VyW5ZatpzYfhgMLdGP9dVA6svUXzuRwU62oRPDFJw-cgotM9bLIOmQ>
    <xmx:VyW5ZSE88JP51r9VLNuGxZGFsPfIUXZaygqpgvHvAQjnq0Vw7Z9xRQ>
    <xmx:WCW5ZcLfzbOdR2pUxVrqP6FKdRXwPvRAzKvp-jPFtT-lZ-2tc7FpZw>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 30 Jan 2024 08:34:03 -0800
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Armin Kuster <akuster@mvista.com>
Message-ID: <2024013010-jockey-kindred-c6cd@gregkh>
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130142524.GA21216@openwall.com>
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

On Tue, Jan 30, 2024 at 03:25:24PM +0100, Solar Designer wrote:
> On Tue, Jan 30, 2024 at 08:46:56AM -0500, Armin Kuster wrote:
> > I noticed these two openEuler CVEs were assigned two weeks ago affecting
> > some K.O stable branches.
> > 
> > https://nvd.nist.gov/vuln/detail/CVE-2021-33630
> 
> This says:
> 
> "NULL Pointer Dereference vulnerability in openEuler kernel on Linux
> (network modules) allows Pointer Manipulation. This vulnerability is
> associated with program files net/sched/sch_cbs.C. This issue affects
> openEuler kernel: from 4.19.90 before 4.19.90-2401.3."
> 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3e8b9bfa110896f95d602d8c98d5f9d67e41d78c
> 
> This mainline commit is from 2019, "net/sched: cbs: Fix not adding cbs
> instance to list".
> 
> > https://nvd.nist.gov/vuln/detail/CVE-2021-33631
> 
> This says:
> 
> "Integer Overflow or Wraparound vulnerability in openEuler kernel on
> Linux (filesystem modules) allows Forced Integer Overflow.This issue
> affects openEuler kernel: from 4.19.90 before 4.19.90-2401.3, from
> 5.10.0-60.18.0 before 5.10.0-183.0.0."

The commit above was fixed in the following kernels:
	5.2.19 5.3.4 5.4
and was fixing an issue that showed up in the 4.19.99 and 5.2 kernel
releases.

I can queue this up to the 4.19.y kernel tree next week if people really
think this is needed, would have been nice if whom ever created the CVE
would have done so :(

> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5c099c4fdc438014d5893629e70a8ba934433ee8
> 
> 2022, "ext4: fix kernel BUG in 'ext4_write_inline_data_end()'"
> 
> So the concern is that upstream longterm 4.19.y and 5.10.y (and perhaps
> some others) may still be affected.

This commit is fixed in the following kernel trees:
	4.14.312 4.19.280 5.4.240 5.10.177 5.15.87 6.0.18 6.1.4 6.2
So I think that all actively supported kernel.org releases are ok.

> The above links don't say anything about attack vectors and required
> access - I guess CAP_NET_ADMIN and raw block device write (e.g., to a
> USB flash drive on another computer), respectively, are the
> prerequisites?  The CVSS scores look exaggerated, especially NVD's score
> of 7.8 for CVE-2021-33631.

Yeah, that looks really high but who knows how CVSS scores really are
calculated :)

thanks,

greg k-h
