X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/12/1
Message-ID: <125c2ff0-7144-4d1b-a102-4365925b00dc@treenet.co.nz>
Date: Fri, 12 Jun 2026 20:21:38 +1200
From: Amos Jeffries <squid3@...enet.co.nz>
To: oss-security@...ts.openwall.com
Subject: Squid CVE-2026-47729 and CVE-2026-50012
Content-Type: text/plain; charset=utf-8

Hi all,

Squid 7.6 release contains fixes for and releases the embargo on 
CVE-2026-47729 and CVE-2026-50012.


CVE-2026-47729

Due to a Improper Validation of Syntactic Correctness of Input
bug, Squid is vulnerable to a Out-of-bounds Read
attack against the FTP gateway.

This problem allows a trusted client to perform an Out-of-Bounds
Read from random unrelated transactions when accessing a
misbehaving FTP server through Squid's gateway feature.

<https://github.com/squid-cache/squid/commit/865a131c7d557e68c965043d98c2eccae26deef8.patch>



CVE-2026-50012

Due to an Improper Input Validation bug, Squid is vulnerable to
a Heap-based Buffer Overflow attack against cache digests.

This problem allows a trusted server to perform a Heap-based
Buffer Overflow when sending maliciously crafted replies to
cache_digest request messages.

This attack is limited to Squid instances that have been
compiled with the --enable-cache-digests option.

<https://github.com/squid-cache/squid/commit/19fcfe922717c8b255270c032dcde4071c003bcd.patch>



Formal Advisory are still awaiting text polish. We hope to have them 
announced in a few days. Meanwhile with the embargo over, additional 
details and/or attacks may be forthcoming from other sources, thus this 
summary alert.


Amos Jeffries
The Squid Software Foundation

