X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/16/5
Message-ID: <15c3fb26-3eb8-4f52-bbd9-07fbf07e797c@oracle.com>
Date: Thu, 16 Jul 2026 12:25:01 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CERT VU#885548 - Denial-of-service vulnerability in HTTP/2 servers via stalled flow-control conditions
Content-Type: text/plain; charset=utf-8

https://kb.cert.org/vuls/id/885548 was published today, and states:
> Denial-of-service vulnerability in HTTP/2 servers via stalled flow-control
> conditions
> 
> Vulnerability Note VU#885548
> Original Release Date: 2026-07-16 | Last Revised: 2026-07-16
> 
> Overview
> --------
> 
> A denial-of-service (DoS) vulnerability exists in some HTTP/2 server
> implementations that fail to adequately limit resource consumption when
> buffering response data under stalled flow-control conditions. A remote,
> unauthenticated attacker can trigger memory exhaustion and service
> interruption by using standard flow-control parameters such as
> SETTINGS_INITIAL_WINDOW_SIZE = 0 to stall outbound data for multiple
> simultaneous request streams.
> 
> Description
> -----------
> 
> HTTP/2 is a widely used application-layer protocol that supports
> multiplexing, header compression, and flow-control mechanisms to regulate
> the transmission of data between web browsers and servers. Flow control is
> designed to prevent senders from overwhelming receivers and relies on
> client-advertised window sizes to determine the maximum volume of
> unacknowledged data that can be in transit at any given time.
> 
> A client can intentionally stall outbound flow control by withholding
> WINDOW_UPDATE frames or by advertising SETTINGS_INITIAL_WINDOW_SIZE = 0.
> In some HTTP/2 implementations, the server continues processing requests and
> generating complete response bodies even though it is unable to transmit
> them. The resulting response data remains buffered in memory, and each
> stalled stream retains its allocated buffer until the connection closes or a
> timeout occurs.
> 
> An attacker can exploit this behavior by opening many simultaneous streams
> and requesting large resources, causing the server to accumulate large
> amounts of buffered response data. In environments with permissive resource
> limits, this can lead to excessive memory consumption, swap exhaustion,
> service instability, and, in severe cases, system crashes. Even under more
> conservative limits, the attack can exhaust worker or connection resources
> and degrade service availability.
> 
> Impact
> ------
> 
> A remote, unauthenticated attacker can cause denial-of-service conditions on
> affected HTTP/2 server implementations. Under high resource limits, an
> attacker may be able to induce unbounded memory amplification resulting in
> OOM kills, severe swap thrashing, or full system unresponsiveness. Under
> default or lower limits, the attack can exhaust available connections or
> worker resources, temporarily preventing new clients from establishing
> sessions and degrading overall service availability.
> 
> Solution
> --------
> 
> Several vendors have addressed this vulnerability in recent updates; see the
> Vendor Information section for individual CVEs and remediation
> details. Implementations that enforce memory ceilings, restrict concurrent
> stream counts, and actively terminate stalled connections can substantially
> reduce the risk of denial-of-service conditions.
> 
> Acknowledgements
> ----------------
> 
> Thanks to the Okta Red Team for researching and reporting this vulnerability.
> This document was written by Molly Jaconski.
> 
> 
> References
> ----------
> 
>     https://www.cve.org/CVERecord?id=CVE-2026-59762
>     https://www.cve.org/CVERecord?id=CVE-2026-59173
>     https://www.cve.org/CVERecord?id=CVE-2026-44909
>     https://datatracker.ietf.org/doc/rfc9113/
>     https://my.f5.com/manage/s/article/K000162231
> 
> Other Information
> -----------------
> 
> CVE IDs:                CVE-2026-59762, CVE-2026-59173, CVE-2026-44909
> Date Public:            2026-07-16
> Date First Published:   2026-07-16
> Date Last Updated:      2026-07-16 18:41 UTC
> Document Revision:      3

I have not included the Vendor Information above - it contains statements
from many FOSS projects and non-FOSS products, and continues to be updated
as the vendors publish their status.

Some of the FOSS project statuses currently shown:

  - Apache Traffic Server Project - affected, CVE-2026-59173
  - GNU wget - not affected
  - Go programming language - not affected
  - HAproxy - not affected
  - ISC BIND - not affected, "None of tested BIND versions are vulnerable.
    Even in the worst case of artificial 64k DNS responses and 100 concurrent
    queries per connection (default limit), peak memory usage is about 1.6 MB
    per HTTP/2+TLS connection. Inactive connections are closed by timer after
    30 seconds (default limit)."
  - lighttpd  - not affected
  - nghttp2 - not affected

The IETF HTTP Working Group provided a statement saying, in part:
> For this case, RFC 9113 does make some attempt to provide implementers some
> help in dealing with denial of service, but it is very clear that it cannot
> provide comprehensive instructions. It does seem like this is common enough
> bug that it would be worth adding to the advice if we had an opportunity to
> revise the RFC.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

