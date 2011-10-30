X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/30/1
Message-ID: <4EACA0B6.6010501@redhat.com>
Date: Sat, 29 Oct 2011 18:56:22 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Hanno Böck <hanno@...eck.de>
Subject: Re: CVE request: serendipity before 1.6 backend XSS in karma plugin
Content-Type: text/plain; charset=utf-8

On 10/29/2011 06:37 AM, Hanno Böck wrote:
> Am Fri, 28 Oct 2011 09:04:43 -0600
> schrieb Kurt Seifried <kseifried@...hat.com>:
>
>> Can you please send more details, i.e. which file is responsible/or a
>> link to a commit fixing this? Thanks.
> Commit is here:
> https://github.com/s9y/Serendipity/commit/a7861fabd328c3c468f0853355686dd7e39cc4ac#plugins/serendipity_event_karma/serendipity_event_karma.php
>
> Responsible file:
> plugins/serendipity_event_karma/serendipity_event_karma.php
>
Ahh our good friend htmlspecialchars().

Please use CVE-2011-4090 for this issue.

-- 

-Kurt Seifried / Red Hat Security Response Team


