Received: (qmail 25723 invoked by uid 550); 12 Jan 2026 13:43:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25696 invoked from network); 12 Jan 2026 13:43:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1768225420;
	 x=1768311820; bh=NZMA7v8DPcCNctIai63XhDPmVCbXsYkiBku+ls7oIP4=; b=
	TQL/MS0jAB+tK7vgzVYG4U4SBDr3mQIqPxkXycBceiy3zCIeaN6ZT1KIoRPzrrKx
	mNCmKqRatAlFGeZK/QKfQknB1E5lcOT9swz+tHL84RNsdJjQgupzJ5w3HyEFwmMV
	d0t/jHEBoEGytXvHxOS1jRPsN062JJjy+RXyQ1H6jXt/qaXYK8fugyN5bC9+Bhax
	6MCqGpt7mL3sZ2R3YOHHD4V5pRRnHVtX6AY9o+jC7atbCxSp9G2LIOMm2iLJOeYc
	IOfcbIX4RHCLD5QO4zI9fnc8QFtKLYUMlvy4ZJJxZub+gfGJpXHjuhfiIZxi+uFH
	yUb7dXcylk1a+U3DRb/rhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1768225420; x=
	1768311820; bh=NZMA7v8DPcCNctIai63XhDPmVCbXsYkiBku+ls7oIP4=; b=b
	r+6OiZhwHIQtKqCthVu6TfAk/MtjFDsR/N7LzLMe2D4tU4OxXnhoZsd2jVt1d9E5
	uQndbhIjvDgU5mo/YVnnQw+DYAh76EXjVpZS5xy06lwSByp99r6RxUaQ+ia32ob2
	/p82UltBzvtK6W4VzZN35Yj97aBEXkw89BTFdOSriWNBu+ps/BfJWnGn4ANwehf5
	VfuwZ1sXuQv+EsaHg+HjEzGbpvqFW5V1zf4AZq6vjkPnBi4I5gTAl6qdu1vBZShG
	pR3TNPqS63JuhHgSVfNdnRI2jkSVdq0zH78JPs/6ElrPyaQzxE6yczrq8H0yzeVH
	Glbj/Es/017g8ndAxD1Rw==
X-ME-Sender: <xms:jPpkaUU4ZR1TWjEFCjJ_3G1yP6vEQc5T4yQLICQ6KsnlnxjrlcgrvQ>
    <xme:jPpkaWYBYwPPh82WApaYViooveeToG8TETBWhaNQocFsrzZV5tRxcocAywIiaoLS1
    a4Rt2uzrR6_2amjNBg-kU6-Qh582yzb9k7Gtyif4aSKrhp1>
X-ME-Received: <xmr:jPpkaS1yss8seJ2dR42UEpwr4LfOaxo_85aKU7ywa7v2tUhW68gq3jJMmA-2TJzWoyfCTahXLoCDc48cac07dxpEd8J2yUznUhB9Ew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduudejiedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttddunecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeegveevte
    fgveejffffveeluefhjeefgeeuveeftedujedufeduteejtddtheeuffenucffohhmrghi
    nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopeeg
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslh
    hishhtshdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtoheprghlrghnrdgtohhophgv
    rhhsmhhithhhsehorhgrtghlvgdrtghomh
X-ME-Proxy: <xmx:jPpkaQhZoVcKfJo48PYUpCelZrncH8c8OfVpRIvODBm02HHD8mLHYg>
    <xmx:jPpkaeYr-9AhXwa5hW_mkLD9M0z-nYp96cyum_zljqjXCsI_T07CiA>
    <xmx:jPpkaYQ7l6v4tIl9u790pHbnUDRdbnPIzXSzogdWDn4wcR_l9iqR3Q>
    <xmx:jPpkaRSCn-dYPvnyWAK3ecaMgnfsRkcj43IaiBTjfhJdW4144aPJ9w>
    <xmx:jPpkaYO2av7U8H8IkS8tc1A8nWfdn7nlyr6xV3coP-cHKn9Ap3DTxc0j>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 12 Jan 2026 14:43:38 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <2026011249-radiantly-scrambled-299e@gregkh>
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
 <9151rn19-0on4-96s6-p3oq-qq07188p9n0r@vanv.qr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9151rn19-0on4-96s6-p3oq-qq07188p9n0r@vanv.qr>
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On Mon, Jan 12, 2026 at 10:42:33AM +0100, Jan Engelhardt wrote:
> 
> On Monday 2026-01-12 04:09, Jacob Bachmeyer wrote:
> >
> > In short, this is a crash bug, but not a security issue.  This is different
> > from (for example) a parser bug that results in NULL being dereferenced if
> > crafted input is processed.
> >
> > Are we now using CVE IDs as some kind of global bug tracker?
> 
> Isn't that how the Linux kernel works these days,
> as per <https://docs.kernel.org/process/cve.html>:
> 
> "almost any bug might be exploitable to compromise the security of
> the kernel, but the possibility of exploitation is often not evident
> when the bug is fixed"

The kernel might be a bit "different" here, given that any type of bug
that happens at the level of Linux can cause a system failure (i.e.
vulnerability), while I don't know if harfbuzz is at that same level
(i.e. does it claim to support any invalid input, like the kernel does?)

thanks,

greg k-h
