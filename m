Received: (qmail 11274 invoked by uid 550); 26 Sep 2023 09:50:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10210 invoked from network); 26 Sep 2023 09:50:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1695721843; x=1695808243; bh=Zu
	m+eLk+vvEy9DOcoAuEOEof6QKvF4eVjI2ltLJwoac=; b=BkQC9+c0CXIE0BJ1WI
	MJKOSsqYVSCmgQFWeSxZs0d/ku67Sfg2e8c2cLeJbY4qrNuhOv2oiWNUlUAd1XmR
	+1KOU2h8dKU4q/9lS7jRp51S72cjjSQWZPBCr7x4As1ecDe3IdRKgWm9dZS7+Ok0
	Ch6Myg9jMAaoZ0F/s50+G1vy3oPJ8ZTTyI/+mUBUIMfaRauvmIZoes/pd93/Cnjc
	oua6UcN5UF0IIuWITYW5iQKrMFfbG9JiR2FMLjHiuCkITfNwjSIOc6wuOyCDrgJm
	Pu9KDSvunLb4uOEgYWjJbl42elUg5joIgqL9m/DQMw+FX01IdtOU9nJLORfveWdl
	YdrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1695721843; x=1695808243; bh=Zum+eLk+vvEy9
	DOcoAuEOEof6QKvF4eVjI2ltLJwoac=; b=lcYxLtYKZqlkperFkJVv+kQ/0gs0w
	WV+joTCa6H6rl4qr0yijb3x2EjyzERY6MD1cs3/HjErkN5zkWvJ5Ydp5C7JG4dlM
	k0nzU1F4TgCKxudxZ2OGmPCCCvcrPJeo+XgJtuRXWx9GD822Set1e52GKZXHU2mw
	btY2f2bwaivZ9vRIxGFKDelOPdxs9VnGKQWNqdsPzUXAQXIWGTRnQFJj/rWP2ON/
	I3ag4wNdWiNZG2iPFOhhUQH+VkZSxlcmURYO6Nxc9/FlMnKglqYpqeOICsY8oELX
	uMJEPHIIJ72hS1S/kDankeuqqqWFYrTj4kwGfZ+WmyZUhO2GE8ogbpPqA==
X-ME-Sender: <xms:cqkSZaJSvgSc6hHyQ4WRYwlvcGVTuY3yk7s5i_IhWpuVlHdOogazrw>
    <xme:cqkSZSLXlPR5aMV2mMoWHaxZpeHJ6gVBnypiQwUppzJNXBJr2Mk3veo9ysZmE_w8K
    bv4lUupS4ZQAw>
X-ME-Received: <xmr:cqkSZat9YKOT0NPmnkfBLN0pfgxEEO7RY4-n36lhRlFOLLhzWnlchtPGjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudeliedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepueelledtheekleethfeludduvdfhffeuvdffudevgeehke
    egieffveehgeeftefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:c6kSZfaPhKlYA8suu4q7bboTOmbkdTSmE0NK_GNru5L9QZ9eYVDBxA>
    <xmx:c6kSZRYU1I1YoNjrZo2mtrfPrpc_I8eR3d7fqITW1z6_mYXqCJKB1w>
    <xmx:c6kSZbDthgbGnTOdjV_7vowz-_qPEjeD1qfNDEIhuZ_kd--ubGAYXg>
    <xmx:c6kSZSCFgYST913S17mf4S-Or4Hnh_XOzcdAbna004JEN6tx9fvckQ>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 26 Sep 2023 11:50:37 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRKpbYtTL0OYpzKy@kroah.com>
References: <ZRHp39Aa3dOf1y/O@westworld>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRHp39Aa3dOf1y/O@westworld>
Subject: Re: [oss-security] [CVE-2023-42755] Linux kernel wild pointer access
 <= v6.2

On Mon, Sep 25, 2023 at 01:13:19PM -0700, Kyle Zeng wrote:
> [Patch]
> The patch is to follow the upstream and retire the rsvp classifier in
> all the stable trees.
> And it is queued in all the stable trees, but not merged yet.
> For example, the patch for v6.1 can be found here:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/diff/queue-6.1/net-sched-retire-rsvp-classifier.patch?id=f75b6fc19b6ec061f59b4e18d72ebb32ceea8587

This change is in released kernels already, specifically all of the
following ones:
	4.14.326 4.19.295 5.4.257 5.10.197 5.15.133 6.1.55 6.3

Perhaps this advisory was written before those kernels were released?

> [Affected Version]
> I confirmed that this bug affects v6.2, v6.1, v5.15, v5.10, v5.4,
> v4.19, and v4.14.

v6.2 is long end-of-life, sorry, that's not going to be fixed.  But for
all of the other versions you quote above, it should now be resolved.

thanks,

greg k-h
