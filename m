X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/04/4
Message-ID: <20210204164632.07072b24@fabiankeil.de>
Date: Thu, 4 Feb 2021 16:46:32 +0100
From: Fabian Keil <freebsd-listen@...iankeil.de>
To: oss-security@...ts.openwall.com
Subject: Re: Two DoS issues fixed in Privoxy 3.0.31 stable
Content-Type: text/plain; charset=utf-8

Fabian Keil <freebsd-listen@...iankeil.de> wrote on 2021-01-31:

> --------------------------------------------------------------------
> ChangeLog for Privoxy 3.0.31
> --------------------------------------------------------------------
> 
> - Security/Reliability:
>   - Prevent an assertion from getting triggered by a crafted CGI request.
>     Commit 5bba5b89193fa. OVE-20210130-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20217.

>   - Fixed a memory leak when decompression fails "unexpectedly".
>     Commit f431d61740cc0. OVE-20210128-0001.

CVE-2021-20216.

Fabian

Content of type "application/pgp-signature" skipped
