X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/09/9
Message-ID: <Pine.GSO.4.51.0809091033250.6699@faron.mitre.org>
Date: Tue, 9 Sep 2008 10:37:18 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...re.org
Subject: Re: CVE request: mybb < 1.4.1
Content-Type: text/plain; charset=utf-8


On Tue, 9 Sep 2008, Hanno [utf-8] Böck wrote:

> http://community.mybboard.net/showthread.php?tid=36022
>
> Hmm, they mention vulns, but they don't give any info about...

That post links to a patch file that gives a lot of clues:

http://community.mybboard.net/attachment.php?aid=10579

Looks like:


CVE-2008-3965
-------------
misc.php - SQL injection


CVE-2008-3966
-------------
usercp2.php, inc/functions_online.php,  moderation.php - XSS


CVE-2008-3967
-------------
moderation.php also has some privilege/permission checking (see
"is_moderator_by_tids")


These will be filled in later.

- Steve
