X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/17/3
Message-ID: <alpine.LFD.2.10.1402171404230.21151@javelin.pnq.redhat.com>
Date: Mon, 17 Feb 2014 14:12:26 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request New-djbdns: dnscache: possible DoS 
Content-Type: text/plain; charset=utf-8

    Hello,

dnscache(8) resolver reads messages over a TCP connection one byte at a time. 
For long messages, it'll trigger as many read(2) calls as the length of a 
message. Thus consuming extra CPU cycles. A malicious remote user could use 
this to cause a DoS.

Upstream fix:
-------------
  -> https://github.com/pjps/ndjbdns/commit/a67293ce12832b55ec4271536282290ed17863f6

Reference:
----------
  -> http://download.pureftpd.org/misc/dnscache-dos.c


Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
