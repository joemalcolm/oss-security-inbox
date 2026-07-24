X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/6
Message-ID: <4707e2d0-9ed3-4924-9de9-848bead53a9d@frasunek.com>
Date: Fri, 24 Jul 2026 08:43:38 +0200
From: Przemyslaw Frasunek <przemyslaw@...sunek.com>
To: oss-security@...ts.openwall.com
Subject: Re: Knot Resolver 6.3.0 DNS-over-QUIC heap buffer overflow (RCE)
Content-Type: text/plain; charset=utf-8

> Hello,
> 
> The following is a report of a remotely triggerable heap buffer
> overflow in Knot Resolver's DNS-over-QUIC (DoQ) receive path, leading
> to remote code execution. The issue was reported to CZ.NIC on
> 2026-06-08 and fixed in Knot Resolver 6.4.1, released on 2026-07-22.

It seems the vendor did not request a CVE for this issue, so I am asking for one.


