X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/07/5
Message-ID: <Pine.BSM.4.64L.2108070356370.904@herc.mirbsd.org>
Date: Sat, 7 Aug 2021 03:58:07 +0000 (UTC)
From: Thorsten Glaser <tg@...bsd.de>
To: Axel Beckert <abe@...ian.org>
cc: oss-security@...ts.openwall.com, security@...ian.org
Subject: Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)
Content-Type: text/plain; charset=utf-8

Hi XTaran,

>> I *ALWAYS* SAID SNI IS A SHIT THING […]
>
>Don't blame the messenger. ;-)

Not blaming you in the slightest, rather the contrary, thanks for
vindicating me ☻☺

>> Other browsers also need checking.
>
>Good idea.
[…]
>I didn't find any such issue in any of these tools. All cases verified
>via Wireshark's "follow TCP stream" against an Apache 2.4.48 (from
>Debian Unstable as well).
>
>But yeah, there are probably many more to check. But so far it looks
>like a lynx-specific issue.

Good to know.

>> Thanks for the detective work,
>
>You're welcome. Thanks for stumbling over this issue and triggering my
>digging. :-)

Heh, I know the feeling. *adds more mksh commits because a user is
porting it to another weird hobbyist OS…*

bye,
//mirabilos
-- 
„Cool, /usr/share/doc/mksh/examples/uhr.gz ist ja ein Grund,
mksh auf jedem System zu installieren.“
	-- XTaran auf der OpenRheinRuhr, ganz begeistert
(EN: “[…]uhr.gz is a reason to install mksh on every system.”)
