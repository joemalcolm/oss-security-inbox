Received: (qmail 22121 invoked by uid 550); 19 Apr 2024 17:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22093 invoked from network); 19 Apr 2024 17:25:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=X8A1+QiPlMeYsXF+lHrzDbS6CrKl1IWb001k2b4fLak=; b=wJE4i+dQo0S5aE5U5Nxb1sfpcN
	XtVED/ofFMVBXtmxCXXgDI74T5h/TFH6NaboCWDNDGQpmjiCETV0nEd7h+4xlx6Zsu21CYgAQGNk5
	b+mxVLKRhnORr5fF+NygCIY/hFLD5ZE9nCrb/2pNjE4995Hb7oaMZw07uz3oz0CZHlcVZnQdkEK+a
	R5ztS5K3i/2gkTbixRYO7VC18+Dy5P9TLDWYchsVMHOpye8Ux3l1mWI0hXHMhiPNkmInanzr3rb+x
	VtVcE76VlAMJLn4TJ3KPZ02QtYO1DAHj0f93DBI1CD48y8nO7W3/pWWHGlZ6/TR7gN+QmrKsoWs2M
	KhiSK/Wg==;
Date: Fri, 19 Apr 2024 18:25:02 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240419154435.GA7046@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Fri, 19 Apr 2024 at 17:44:35 +0200, Solar Designer wrote:
> I guess
> systemd's PrivateNetwork services generally don't configure networking
> (they just give up network access), so would continue to work even with
> capabilities disallowed?

I can't speak for systemd's PrivateNetwork services, but for the
bubblewrap use-cases that I described elsewhere in the thread (Flatpak,
libgnome-desktop etc.), `bwrap --unshare-net` does bring up the "lo"
interface with address 127.0.0.1 and a route to 127.0.0.0/8 before it
relinquishes its capabilities and execs the sandboxed program.

Presumably this is because it's common for ordinary user-space applications
to assume that they can "talk to themselves" via loopback, even if there is
no external connectivity.

    smcv
