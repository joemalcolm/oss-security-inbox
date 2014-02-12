X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/12/4
Message-ID: <alpine.LFD.2.10.1402121157210.10524@javelin.pnq.redhat.com>
Date: Wed, 12 Feb 2014 12:02:02 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE Request New-djbdns: dnscache: potential cache poisoning
Content-Type: text/plain; charset=utf-8

   Hello Michael,

+-- On Wed, 12 Feb 2014, Michael Samuel wrote --+
| but I was referring to having a pool of IP addresses attached to the DNS 
| server for the purpose of sending outbound requests,

  Well, a resolver always starts by sending queries to one of the 13 root 
servers and then descends towards authoritative name servers as directed by 
the top ones.

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
