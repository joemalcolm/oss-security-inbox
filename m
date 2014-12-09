X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/09/9
Message-Id: <4F9F4067-2AA7-48D2-93E9-ECBD0AD3CC6A@netherlabs.nl>
Date: Tue, 9 Dec 2014 08:54:15 +0100
From: Peter van Dijk <peter.van.dijk@...herlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Re: PowerDNS Security Advisory 2014-02
Content-Type: text/plain; charset=utf-8

Hello,

On 09 Dec 2014, at 8:16 , Peter van Dijk <peter.van.dijk@...herlabs.nl> wrote:

> Somebody asked me to (help him) check djbdns today, which we’ll do. Any other implementations you are interested in?

Vanilla djbdns 1.05 manages a counter called ‘loop’ (look for ‘z->loop’ in the code); if this counter hits 100, it simply aborts the current query. This is similar to the fixes now present in PowerDNS, BIND and Unbound.

Breakpoint 4, doit (z=0x611660 <u>, state=1) at query.c:452
452	  if (++z->loop == 100) goto DIE;
1: z->loop = 99
(gdb) cont
Continuing.

It then logs 'drop 1 input/output error’ and aborts resolution of this query. Note that it actually drops the query, the client will eventually timeout; PowerDNS Recursor sends a SERVFAIL, and I presume so do BIND and Unbound.

Kind regards,
-- 
Peter van Dijk
Netherlabs Computer Consulting BV - http://www.netherlabs.nl/


Download attachment "signature.asc" of type "application/pgp-signature" (842 bytes)
