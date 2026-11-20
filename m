X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/3
Message-ID: <av-YIntXr75-vmym@codewreck.org>
Date: Fri, 20 Nov 2026 09:45:22 +0900
From: Dominique Martinet <asmadeus@...ewreck.org>
To: Jose R Rodriguez <jose.r.r@...ztli.com>, oss-security@...ts.openwall.com
Cc: Greg KH <greg@...ah.com>, Edward Shishkin <edward.shishkin@...il.com>, Reiserfs Devel <reiserfs-devel@...r.kernel.org>
Subject: Re: NoisyTCP — CVE-2026-99288 (Was Re:  Backports available - cBPF JIT spray hardening)
Content-Type: text/plain; charset=utf-8

Hi Jose,

(not sure why this comes as a reply to the bpf hardening CVE..)

Jose R Rodriguez wrote on Thu, Nov 19, 2026 at 03:25:25PM -0800:
> Since the time of your comment I have been keeping up with reiser4 -enhanced
> 5.15 LTS build iterations -- with the latest being 5.15.224.
> Notwithstanding, 'NoisyTCP — CVE-2026-99288' came along and the latest
> 5.15.225 LTS iteration did not address the critical vulnerability. I have
> the 5.15 LTS kernel(s) deployed online and I got spooked. Accordingly, on a
> best effort basis, I backported the patch from upstream:

The patch "inet: reject unhashed sockets during established lookups"
marked as fixing this CVE already has been backported to older trees,
including 5.15 already and is in the 5.15.226-rc1 (which will likely be
released today (11/20) or tomorrow)

You can already pull the patch from
git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
if you want to rebuild your own kernel early


OTOH if you want quick fixes it's best to upgrade to a newer release if
possible - except for embedded or platforms with specific hardware it's
generally not too hard to switch to the latest LTS.

-- 
Dominique Martinet | Asmadeus
