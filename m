X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/28/1
Message-ID: <56A8F223.2050908@knoware.nl.eu.org>
Date: Wed, 27 Jan 2016 17:36:51 +0100
From: Rob Janssen <rob@...ware.nl.eu.org>
To: Luca BRUNO <lucab@...ian.org>, pool@...ts.ntp.org, oss-security@...ts.openwall.com, linuxbrad@...il.com
Cc: team@...urity.debian.org, secalert@...hat.com
Subject: Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes
Content-Type: text/plain; charset=utf-8

Luca BRUNO wrote:
> [cross-posted to pool-ntp and oss-sec]
>
>
> For ntp.org admins: can those rogue server be expunged from the pools, and the whole
> shodan.io situation clarified?

shodan.io are the bad guys!  block them wherever possible, put them in default blocklists suggested
for firewalls, etc.

these guys really don't care.   when submitting networks for exclusion, they reply as if they will do something,
sometimes the scanning may pause for a day or a week, then it always comes back.

Rob
