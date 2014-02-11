X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/11/3
Message-ID: <alpine.LFD.2.10.1402111219460.19485@javelin.pnq.redhat.com>
Date: Tue, 11 Feb 2014 12:24:21 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE Request New-djbdns: dnscache: potential cache poisoning
Content-Type: text/plain; charset=utf-8

   Hi,

+-- On Mon, 10 Feb 2014, P J P wrote --+
| I'll check with the upstream author for more clarification.

Upstream author's reply:

 > On Tuesday, 11 February 2014 4:28 AM, Frank Denis wrote:
 >
 > The shorter the TTL of a record is, the easier a cache can be poisoned.
 > It is when a record is NOT cached that spoofed authoritative replies
 > can be sent and get a chance to reach the resolver before the
 > legitimate one.
 > 
 > As soon as a valid response is received, dnscache invalidates the state, 
 > discarding further responses, even if these are valid.


Hope it helps. Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
