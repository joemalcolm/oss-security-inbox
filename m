Received: (qmail 32265 invoked by uid 550); 26 Sep 2023 11:19:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7673 invoked from network); 26 Sep 2023 04:59:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1695704329;
	bh=zY3A44k+WDtPFRixW1ayLN+ZFZGALByfAQYQvCGG7zs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=SR3Yua773mjQdjoBBvKrxSD35Fs8bGismjBstUYso1zm5PpODY3OHaOufGD8MVK+b
	 GCcVZvDPAQFKWPuJx/L2i91s/HHIK8vuWr/nBISPzxlTkzFdNfuwbeU36mTKrR+FG3
	 7f/ODl7krCKoCvrrsKYgraQLW19q2GEiUCGg8WiA=
Date: Tue, 26 Sep 2023 06:58:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: oss-security@lists.openwall.com
Message-ID: <2023092630-survivor-headrest-02b0@gregkh>
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

v6.2 is long end-of-life, sorry.  But for all of the other versions you
quote above, it should now be resolved.

thanks,

greg k-h
