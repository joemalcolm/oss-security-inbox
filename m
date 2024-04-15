Received: (qmail 9269 invoked by uid 550); 15 Apr 2024 15:47:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9246 invoked from network); 15 Apr 2024 15:47:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+gZSR4hYL6tizJSPZdHIb8w5Ah/cWqRTxibtfTryGbo=; b=ounZmegqHQQGEFI8Z7+wz2cXss
	Wg7DirnoPsOYRbKVmyY1Vjhzc4hnjfRMmn2yTXg8e3fY0ORgQ+EG/0OlmcqzHfY5rQWciPR4B1a0S
	Esa3AaBVeocm1Mi1H0TwIgQI1S7f+YwdNSOMGmnoHd0SUYuaFqfh29lr3sCHUrnhUP2Ixtx5VnQdq
	Kw3xyuqMeZMVmgWJfF8nAcIGMBh8MD0X3Q7XJZXKSnL3RiT8iyhOXgsffTO1ESOiNcIGyJO2CccFe
	/qGoGDrIuutiFp4S6Csht2Le2DwmB/nJhtU2/8anwURZxuMPUJwQn1+VvA++kBa3aSbjczoMUVRme
	fqDNVL/A==;
Date: Mon, 15 Apr 2024 16:47:18 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Zh1MBrBG8YOvqHmM@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
 <ZhxdDyIBazJYRDeR@itl-email>
 <20240415151309.GA15253@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240415151309.GA15253@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Mon, 15 Apr 2024 at 17:13:09 +0200, Solar Designer wrote:
> And/or make Debian's
> kernel.unprivileged_userns_clone official upstream and use that.  Why
> did Debian choose to deprecate (but not yet drop?) theirs and go with
> upstream's user.max_user_namespaces, which doesn't provide exactly the
> same functionality?  Was there an attempt at upstreaming?

I am not a kernel developer, so this is second-hand information; but I
believe the implementation of kernel.unprivileged_userns_clone used in
Debian (and subsequently copied from Debian by various other distros)
is derived from patches that were already proposed and rejected upstream,
so the feeling was that trying again to upstream that feature would be a
waste of time and upstream goodwill, because it would just get rejected
again by the same kernel maintainer.

kernel.unprivileged_userns_clone was a tradeoff between kernel attack
surface and user-space attack surface. Disabling it mitigates various
attacks that user-space can attempt on the kernel, but forces user-space
sandboxing things (such as bubblewrap and the Chromium sandbox) to
be setuid root if they are going to be used, which turns them into a
user-space root privilege escalation risk. Conversely, with unprivileged
namespaces, we can sandbox user-space processes without adding that risk,
but we're relying on a larger kernel attack surface being secure.

(Current versions of Debian still have the kernel.unprivileged_userns_clone
patch, but it's left enabled by default, resulting in behaviour that is
equivalent to upstream kernels.)

    smcv
