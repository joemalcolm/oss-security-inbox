X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/19/2
Message-ID: <alpine.LFD.2.10.1402191227060.30795@javelin.pnq.redhat.com>
Date: Wed, 19 Feb 2014 12:29:04 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE Request New-djbdns: dnscache: potential cache poisoning
Content-Type: text/plain; charset=utf-8

   Hello,

+-- On Mon, 17 Feb 2014, Michael Samuel wrote --+
| I think I've come around to a yes for this one. Pushing attacker-chosen 
| entries out of the cache after only 100 packets is clearly not what the 
| admin wants.  It makes a secondary attack (DNS over UDP blind cache 
| poisoning) much more viable than it was.
|
| I can think of some DoS scenarios where this vector would assist another
| attack.

  Could we have a CVE for this please?

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
