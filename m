Received: (qmail 5959 invoked by uid 550); 6 Oct 2022 15:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5938 invoked from network); 6 Oct 2022 15:40:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=qI73TRIpZWBLPaAlpGbUfozEbsUCplSkpu8EmAQdgOQ=; b=Zb7WVIu7HxXcWafjes62+7inZR
	g9mU0EPjXZI/z3MuNcfF/VssPQpNTtuD1HMWFdWaowzuZOxNnfutpYLJEfjiZpwv5XBPW/bX53hPj
	zuyEEjZYDJC+6EE994ldkNwKRyYRpm1fiskWuWrIFsdk46RhxymZT7WlLueqa+wUXQk3Kos4xI7tG
	OFIw4bcwYBbcDS2/f8rPwvfOY6yEp16DD7XofGUZBkzm2AiRyfZlB+no6kt3msuWhACmoLqDIrcXY
	mRdWZsvAD1h9MiLxGHfPe0GEEExnoMeoRknRnS9h6cYIDigOzqGZ5/XJNz4tZcq9SBklLFvMPVdfE
	I9xVGD3Q==;
Date: Thu, 6 Oct 2022 16:40:10 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com, dbus-security@lists.freedesktop.org
Cc: Demi Marie Obenour <demi@invisiblethingslab.com>
Message-ID: <Yz722hsDFWr/hqGb@momentum.pseudorandom.co.uk>
References: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
 <Yz7r3ke7oXMBHJ5A@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yz7r3ke7oXMBHJ5A@itl-email>
X-Debian-User: smcv
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

On Thu, 06 Oct 2022 at 10:53:15 -0400, Demi Marie Obenour wrote:
> Is the memory corruption potentially exploitable for local privilege
> escalation?

It is not known to be, but also not known not to be. I'm sure a
sufficiently creative attacker can convert almost any memory corruption
into arbitrary code execution, but exploit development is not my job
(I'd rather fix the vulnerabilities!), so I have not attempted to
weaponize this.

> Are clients using libdbus vulnerable if they are behind dbus-broker?

I don't maintain dbus-broker and have not tested or audited it, so
I don't know how much validation it does. I would hope that it would
detect and prevent CVE-2022-42011 and CVE-2022-42010 (which involve
invalid messages), but probably not CVE-2022-42012 (which involves a
message that is odd but technically valid).

    smcv
