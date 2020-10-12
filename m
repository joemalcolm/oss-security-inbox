X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/12/11
Message-ID: <871ri3p2l4.fsf@canidae.wired.pri>
Date: Tue, 13 Oct 2020 08:16:23 +1100
From: Brian May <brian@...uxpenguins.xyz>
To: oss-security@...ts.openwall.com
Subject: Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022
Content-Type: text/plain; charset=utf-8

Jeffrey Walton <noloader@...il.com> writes:

> [...] like making /home/loser/www available to other users.

Does anybody even do this anymore?

Once upon a time, a shared Unix system account come with an implied web
account which you could use to publish files and create your own
website. But I cannot personally think of any examples where this still
happens. websystems and shell accounts are generally stored on distinct
and independent systems.

Plus even if I was going to implement such a system today, I might
seriously consider using - say "/web/loser" instead. Although this might
have implications if quotas are important. Or maybe something that bind
mounts /home/loser/www to /web/loser, that way the web software doesn't
need access to /home/loser.

Even shared systems - while still around and still very important (HPC
comes to mind) - are a lot less common then they use to be. Most Linux
installs are private non-shared systems. Which I suspect explains why
there isn't a more pressure to fix the default umask issue.
-- 
Brian May <brian@...uxpenguins.xyz>
https://linuxpenguins.xyz/brian/
