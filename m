Received: (qmail 7815 invoked by uid 550); 16 May 2026 16:51:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7779 invoked from network); 16 May 2026 16:51:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description; bh=KfLH8uFQpZns6EP22R/pXSgDLoGp6nAqHtSw9HD4szw=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1778950303;
	x=1779598303; b=UXOGqVxM59knyJOIjtUs2c5CunkLyGf9ceYQyO0LJ4XRN22DOR2muYfWfXZ8I
	DYCXHGYRvdTRdprYRByl/GfYDIpbtk6x4Z5ZovhfBa2qdHWqZ3pN/AzSvsA697CyBEZjBkqUCVc9G
	juitBOkrMyznpfjy4pJvR3GV9HkYVvbXFr5mAR5IGSGWtaEA7veyRU/Jz91jdxb4TKupOupDxmFdz
	sN9YCUFgg+Vv/ACGVIcioKEppkonJ0UU3XzegoZ3EmbaJxuqo7Iu/GA8flHu5igAa0wwPFy4Xh+mz
	pvMvVdA3b39Lo/gpIHUQt4zMseq37mqNfzSJj/wtTQ9wSx2Pzw==;
Date: Sat, 16 May 2026 19:51:26 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <agidthNsti0CcGcE@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20260516150545.7570323b@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260516150545.7570323b@hboeck.de>
User-Agent: NeoMutt/20251211-3-1d6324
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

On Sat, May 16, 2026 at 03:05:45PM +0200, Hanno Böck wrote:
> However, there's a broader point here: I think it's common these
> days that Linux distributions install most or all kernel modules by
> default, and loading them happens automatically. Which, in many cases,
> means people are potentially affected by security flaws in features
> they never use.
> "Attack surface reduction" is widely considered to be a good security
> principle, and I wonder if we can do better here.
> 
> To pick the example of IPSEC, i wonder if it wouldn't be better to
> have, e.g., a separate "linux-modules-ipsec" package that isn't
> installed by default. People who use and need IPSEC will likely know
> that they need it, and can install it separately.
> 
> I'm aware this doesn't come for free, and will add increased
> complexity to kernel packaging. But think about it like this: If we had
> that separation, three of the recent kernel local root exploits would've
> been much less impactful, and wouldn't have affected most systems.

FWIW OpenWRT has had separate packaging for a long time for most driver and
protocol type kernel modules. I assume it was originally done for space-saving
reasons, but it has now become a useful feature for other reasons too. Their
strongswan package depends on the needed kmod packages, to continue with the
ipsec example.

So splitting up modules on a physical machine or VM seems fairly tractable. I
would expect that container users might be the most unhappy constituency about
this, because having all the modules available and autoloaded on demand by the
host has made deployment workflows easier for certain workloads (tunnel
protocols and proxies utilizing something like kTLS come to mind).

 -Valtteri
 
