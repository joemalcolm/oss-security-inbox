X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/3
Message-ID: <7276c7f1-feac-438c-8030-5ef0def6a462@treenet.co.nz>
Date: Mon, 15 Jun 2026 23:26:10 +1200
From: Amos Jeffries <squid3@...enet.co.nz>
To: oss-security@...ts.openwall.com
Subject: Re: Squid CVE-2026-47729 and CVE-2026-50012
Content-Type: text/plain; charset=utf-8

On 12/06/2026 20:21, Amos Jeffries wrote:
> Hi all,
> 
> Squid 7.6 release contains fixes for and releases the embargo on 
> CVE-2026-47729 and CVE-2026-50012.
> 

Apologies, this first one (CVE-2026-47729) embargo is over, but the fix 
will actually be in Squid 7.7.

> 
> CVE-2026-47729
> 
> Due to a Improper Validation of Syntactic Correctness of Input
> bug, Squid is vulnerable to a Out-of-bounds Read
> attack against the FTP gateway.
> 
> This problem allows a trusted client to perform an Out-of-Bounds
> Read from random unrelated transactions when accessing a
> misbehaving FTP server through Squid's gateway feature.
> 
> <https://github.com/squid-cache/squid/ 
> commit/865a131c7d557e68c965043d98c2eccae26deef8.patch>
> 
