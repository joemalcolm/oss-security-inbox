Received: (qmail 11410 invoked by uid 550); 4 Jun 2025 16:20:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9757 invoked from network); 4 Jun 2025 10:23:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1749032600;
	bh=GRK/5OVJvPZmFvCMR2goT6wwF6p1xGtm8nmp0uvMSQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rg4lmlWgJbdgxTNtwiEBZA/rMwg3pJrvNNHn0eElL4GjduGIY+r5ZeR+bMea/ZtsE
	 +7D0PoviPdd72tUchB5R8dA+7L7gvGg58xqaHER2BnN/4ouF0m+Z7yPcQ4Nwx/iU9W
	 8rJuqwkwrjvdhewATaUY6ZV1EloQ7tsTj0ttfFrE=
Date: Wed, 4 Jun 2025 12:23:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>,
	Muhammed =?iso-8859-1?Q?H=FCsam?= Alzeyyat <hussamalzeyyat@gmail.com>
Message-ID: <2025060441-startup-online-8541@gregkh>
References: <20250603025919.GA11183@openwall.com>
 <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
Subject: Re: [oss-security] Re: Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

On Tue, Jun 03, 2025 at 12:38:11PM +0200, Attila Szasz wrote:
> Hi,
> 
> I believe I’ve already shared my main thoughts on this topic on LKML. The
> discussion between Vyukov and Ts’o is particularly insightful. As I
> mentioned earlier, it's worth remembering that unprivileged mounting via
> user namespaces was seriously considered for even block filesystems before,
> but it was ultimately deemed too difficult—largely due to economic
> constraints rather than purely technical ones.
> 
> That said, there are four points I still feel are worth adding:
> 
> 1) Maintainers may have missed this, but regardless of the rejected CVE,
> their CVE automation tooling seems to have picked up the fix as a regular
> patch. It included an ASAN report with the "out-of-bounds" keyword, so
> there is now (again) a CVE for my finding:
> 
> https://lore.kernel.org/linux-cve-announce/2025050117-CVE-2025-37782-7cc2@gregkh/
> 
> NVD may not yet realize it, but CVE-2025-37782 and CVE-2025-0927 refer
> to the same bug.

The kernel CNA did not realize it either, and so this CVE is now
rejected.  Next time you can let us know directly :)

thanks,

greg k-h
