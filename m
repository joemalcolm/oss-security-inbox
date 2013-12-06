X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/06/3
Message-ID: <alpine.LFD.2.10.1312061913410.4862@javelin.pnq.redhat.com>
Date: Fri, 6 Dec 2013 19:16:01 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE request: Linux kernel: net: fib: fib6_add: potential NULL pointer dereference
Content-Type: text/plain; charset=utf-8

    Hello,

Linux kernel built with the IPv6 protocol(CONFIG_IPv6) along with the IPv6 
source address based routing support(CONFIG_IPV6_SUBTREE) is vulnerable to a 
NULL pointer dereference flaw. It could occur while doing an ioctl(SIOCADDRT) 
call on an IPv6 socket. User would need to have CAP_NET_ADMIN privileges to 
perform such a call.

A user/program with CAP_NET_ADMIN privileges could use this flaw to crash a
system resulting in DoS.

Upstream fix:
-------------
  -> https://git.kernel.org/linus/ae7b4e1f213aa659aedf9c6ecad0bf5f0476e1e2

Reference:
----------
  -> https://bugzilla.redhat.com/show_bug.cgi?id=1039054


Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
