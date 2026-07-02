X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/02/2
Message-ID: <cc189a61-fca4-4afd-a268-089d0e38d558@oracle.com>
Date: Thu, 2 Jul 2026 15:37:55 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Solar Designer <solar@...nwall.com>
Cc: Rafael Gonzaga <work@...aelgss.dev>
Subject: Re: Fwd: Node.js security updates for all active release lines, June 2026
Content-Type: text/plain; charset=utf-8

On 6/19/26 10:33, Solar Designer wrote:
> ## HTTP Response Queue Poisoning via TOCTOU Race Condition in `http.Agent` (CVE-2026-48931) - (low)
> 
> A flaw in Node.js HTTP Agent can cause a client to accept as valid a response that is send before the client has sent the request.
> 
> This vulnerability affects all supported release lines: **Node.js 22**, **Node.js 24**, and **Node.js 26**.
> 
> Thank you, to yushengchen for reporting this vulnerability and thank you Matteo Collina for fixing it.

Matteo Collina has posted a blog about things learned about this fix since the
security releases were published.   It begins:

> I reported and fixed the HTTP/1.1 response queue poisoning issue in
> Node.js http.Agent that became CVE-2026-48931, and the Node.js team
> reviewed it and shipped it through the security process. Looking back,
> two things about that were mistakes, and one of them broke a lot of
> people's deploys. This post is me owning the parts that were mine.
> 
> The short version:
> 
>  1. The underlying behavior is real and worth hardening against. The guard
>     I added is good defense in depth and should stay.
>  2. Treating it as a vulnerability and pushing it onto the security-release
>     track was the wrong instrument for the problem. This is something HTTP/1.1
>     does by design, not a bug specific to http.Agent.
>  3. The fix I wrote carried a publicly observable side effect that made
>     node-fetch@2 emit false ERR_STREAM_PREMATURE_CLOSE errors, which cascaded
>     into Google API auth, Firebase, Backstage, and the official Docker images.
>     That one is squarely on me.

https://adventures.nodeland.dev/archive/cve-2026-48931-shouldnt-have-been-a-cve/
goes into much further detail.


-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
