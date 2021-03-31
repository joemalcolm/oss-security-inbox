X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/01/1
Message-ID: <s6oo8s-46ps-5o2p-2164-31s0no13r759@inai.de>
Date: Thu, 1 Apr 2021 01:20:24 +0200 (CEST)
From: Jan Engelhardt <jengelh@...i.de>
To: oss-security@...ts.openwall.com
Subject: Re: kopano-core 11.0.1: Remote DoS by memory exhaustion
Content-Type: text/plain; charset=utf-8

On Friday 2021-03-19 13:44, Jan Engelhardt wrote:
>Initial publication, no CVE number yet (will request).
>[…]
>The "kopano-ical" program implements a network service/trivial HTTP server.
>It imposes no length restrictions on HTTP headers, which can be exploited
>to memory-exhaust the process and have it terminate.

This was assigned CVE-2021-28994.
