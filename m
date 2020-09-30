X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["996" "Wednesday" "30" "September" "2020" "08:32:54" "+0200" "Greg KH" "greg@kroah.com" "<20200930063254.GB1474755@kroah.com>" "37" "Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." "^Date:" nil nil "9" "2020093006:32:54" "[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." (number mark "        greg@kroah.c Sep 30   37/996   " thread-indent "\"Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs.\"\n") "<CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>" ("<CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9616 invoked by uid 550); 30 Sep 2020 06:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9595 invoked from network); 30 Sep 2020 06:33:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=LiWd1tmqutBDoRD0oxWY2kYQIlC
	jxW6tFuArmDOXOAs=; b=JMnI630z5cvYckD8uqcvytwD5tNEVMcIhf6FXQTlITt
	03uBSeod94Ob0EwoHR82GgTz3vxR5oxG1cDeZNoQLaYWL28YT2X6Eaz6TflxY0vB
	jnI1sdtvQKFAI1Vx1mc+W8sbsQjqLQmeJ+Hm7qI9/ljnS2pmdjoKdO5CsMxQGUQ9
	P9JCg8BoI7pZv64eUesSxzfEd9sQxOF/NTy5AL05rmRSEy1TgMSSE13bV/Sd1xIE
	x13isyiyFt2fG4jMy+JgoG9Q4rvKnrj1WMM0UbM4n5zO0vOvbetSg7TXHVnQEtKX
	Nnxg4xN5PBs9bn8lOsW6YtG4BHNElp4MqzD49/tAdgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LiWd1t
	mqutBDoRD0oxWY2kYQIlCjxW6tFuArmDOXOAs=; b=NDGXc2fSDt05ZbVTScdlnS
	tLJzhtTi3rF6+GYJ2b+/KEYrAMvZdIOCa06Q5R/epE6BGyczIxEvPv04lfyb9onk
	5VxdREwxJerfJ66V/EC+0fWtKewTHANwOzj3/N5LagyHW1AcTDzwxUZcMG6xskcq
	rZ6dRkPpI/DKglv+xRW8nl9VvpuM1GaOtZJyjGPkqp/oTUGyBmxG8TbXrou98agH
	gxF3+qo3PRseQJLtJvNTkS4RYZDwKTBvSimCKex5C9nUFhX1cXEGyWML0LSYFgB8
	GMoIDhYcutAjvfHLT4ijrfbd/ew8rjvLcMjLRfAYHizHu1e3A1nLVzVNmMP7qFbw
	==
X-ME-Sender: <xms:kyZ0X5erR7log-e7okor_77V-wHa_VL0Wq3XdEN_qKUIIY3cbxH2VQ>
    <xme:kyZ0X3PV17C3XVI3fBlwKzedGETNNI41meMH-NrMdr_22FYSMlEWBLD3iln183nby
    eoQAJ3cbjuwXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrfedtgddutdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hm
X-ME-Proxy: <xmx:kyZ0XyiMD61Pbi1Mi_UWW0_VESYq2mp8TI2gEwVmK22rMu8HOX4X-Q>
    <xmx:kyZ0Xy8JTtGSv86gHH27MQZfc_5tvXxR_bWMs7pOoxWm0SC1OyIwiQ>
    <xmx:kyZ0X1vnEbB6vYl4yvFoUnLGTR0_b7SPvd_YTcDyTfXxue3I5L07sw>
    <xmx:lCZ0Xz5S84fcU-toVT0Zref2aAAyN1Zmf9PG--2nVccAi1IDzvyHbw>
Message-ID: <20200930063254.GB1474755@kroah.com>
References: <CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>
Date: Wed, 30 Sep 2020 08:32:54 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-25641 kernel: soft lockup when
 submitting zero length bvecs.
To: oss-security@lists.openwall.com

On Wed, Sep 30, 2020 at 10:35:56AM +1000, Wade Mealing wrote:
> Gday,
> 
> A flaw was found in the Linux kernels implementation of biovec usage.  A
> zero-length biovec request issued to the block subsystem could cause the
> kernel to enter an infinite loop causing a denial of service. An attacker
> with a local account can issue requests to a block device can cause a
> denial of service.
> 
> This has been assigned CVE-2020-25641,
> 
> According to the fix commits "Introduced in":
> # git tag --contains 1bdc76aea115 | head -n 1
> v4.10

That's odd, and not the best way to do this, the commit really showed up
in 4.8-rc1:
	$ git describe --contains 1bdc76aea115
	v4.8-rc1~162^2~21

You forgot to sort by "version", which is what you need to do if you
want to try to look at tags, but then it's still a bit off:
	$ git tag --contains 1bdc76aea115 | sort -V | head -n 10
	v4.8
	v4.8-rc1
	v4.8-rc2
	v4.8-rc3
	v4.8-rc4
	v4.8-rc5
	v4.8-rc6
	v4.8-rc7
	v4.8-rc8
	v4.9

hope this helps,

greg k-h
