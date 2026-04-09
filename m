Received: (qmail 18099 invoked by uid 550); 9 Apr 2026 08:55:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18077 invoked from network); 9 Apr 2026 08:55:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UfZwhLc2U09fovLpls53U8CtNJAyRi5uCDCYs70VAhs=; b=hzGM9O4TFAg3y5Bf89wjbPFupE
	UcK65TKOA6ptRiLuHKBXYXYFgLhOQGzPFOtvnyJTs6Ol3XReVDW3siwCgYtuKzLuVc67xbTQtdmmk
	EDSIoOVgt2jFV93FjxmC+3XanUk8LZjWqC+IDDaIWBgY5Zua4ZvfKpyz4UCNikAJsTqQ1jnJNmekQ
	XfB7VH5E0QJnF2xJMz8jGHdp3Qwn2cmCOdcLIdEV/V2woBYjGY88sjF8EYAV8VWciK/lOTbdyal80
	9R/BuTIRHAXTADKtoHM3egROqtuu584e7E3w3ovwyE4aQXxCpyushoGphgSYwA5k6g4zDibHm84VG
	WKuHk4tg==;
Date: Thu, 9 Apr 2026 09:54:54 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <addpXtrgdf1Dcqkg@definition.pseudorandom.co.uk>
References: <20260409003256.GA12812@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260409003256.GA12812@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] 4 security fixes in Flatpak, including critical
 CVE-2026-34078: Complete sandbox escape leading to host file access and code
 execution in the host context

On Thu, 09 Apr 2026 at 02:32:56 +0200, Solar Designer wrote:
>> Arbitrary read-access to files in the system-helper context
...
>> A malicious user can get read-access to files in the system-helper
>> context if a system OCI repository is configured.

We weren't sure whether this one is even a vulnerability, and only 
handled it like a vulnerability out of an abundance of caution, hence 
the lack of CVE ID. I can't think of a real-world situation where there 
would be files that are readable by the unprivileged system uid that is 
used by the flatpak-system-helper process ("_flatpak" on Debian/Ubuntu, 
or some similar name on other distros), but not readable by the user who 
is running flatpak.

     smcv
