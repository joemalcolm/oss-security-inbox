Received: (qmail 5975 invoked by uid 550); 6 May 2024 18:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28599 invoked from network); 6 May 2024 18:32:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1715020324;
	bh=bHgo/S16nvhhvyCvAYdSmIRCLQDSXVfYkIwt7Nw5iUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EIgeNJORBRVN/F+H6t8GDFyAPQyEUxXLcnmfBKVh+bHKaTryRy/UN/rGO4l/8YeKN
	 AePwPtu7WBgE1yk17FNQJTUwO4DrTzOh9irSCZ/yiks7sj2nVQ92cmbe2m1alWE1tB
	 yYhgle5PibXOjyZUTR8eJ9GS1aMz9hS2bSOrPmP7jfVwBgB8Ebylqq18kcZd9wUZVB
	 Ei1VIJHGo1SAzIISRK+KdrOJJ26HyVIGZ/IlB8XMa31UB+sGHVOGsVGNYdYGBW2fqk
	 P9HBEl48ClP4takHiGimnQ9FuUT0oW6LeMccRl/uVts4HKPL0Pu3TxXNnFeo+Se5rY
	 TFzH0OxfLDNkQ==
Date: Mon, 6 May 2024 20:32:01 +0200
From: "Yann E. MORIN" <yann.morin.1998@free.fr>
To: Ben Hutchings <ben.hutchings@mind.be>
Cc: oss-security@lists.openwall.com, buildroot@buildroot.org
Message-ID: <ZjkiIepSLogcd1zY@landeda>
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
 <ZhgCNMQXfxPXuqvs@cephalopod>
 <Zjiv9wzmqtfy8DYr@cephalopod>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zjiv9wzmqtfy8DYr@cephalopod>
Subject: [oss-security] Re: [Buildroot] Buildroot: incorrect permissons on /dev/shm

Ben, All,

On 2024-05-06 12:24 +0200, Ben Hutchings via buildroot spake thusly:
> On Thu, Apr 11, 2024 at 05:31:02PM +0200, Ben Hutchings wrote:
> > Buildroot is a Linux distribution and system builder for embedded
> > systems.  Starting in Buildroot 2011.08, its default /etc/fstab
> > included an entry for /dev/shm with incorrect permissons (sticky bit
> > not set). (CWE-276)
> > 
> > Buildroot 2017.08 removed this entry for systems using systemd, and it
> > has never been included for systems using OpenRC.  So this only
> > affects Buildroot-built systems that use sysvinit, and some older
> > systems that use systemd.
> [...]
> 
> This has been assigned CVE-2024-34455.

Thanks for th efeedback. The fix has already been committed, with commit
0b2967e158 (package/skeleton-init-sysv: Set sticky bit on /dev/shm) that
I applied on 2024-04-11.

Regards,
Yann E. MORIN.

-- 
.-----------------.--------------------.------------------.--------------------.
|  Yann E. MORIN  | Real-Time Embedded | /"\ ASCII RIBBON | Erics' conspiracy: |
| +33 662 376 056 | Software  Designer | \ / CAMPAIGN     |  ___               |
| +33 561 099 427 `------------.-------:  X  AGAINST      |  \e/  There is no  |
| http://ymorin.is-a-geek.org/ | _/*\_ | / \ HTML MAIL    |   v   conspiracy.  |
'------------------------------^-------^------------------^--------------------'
