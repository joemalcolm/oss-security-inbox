X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/10/5
Message-ID: <525257199.1863781289402866690.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
Date: Wed, 10 Nov 2010 10:27:46 -0500 (EST)
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE request: kernel: L2TP send buffer allocation size overflows
Content-Type: text/plain; charset=utf-8

"Both PPPoL2TP (in net/l2tp/l2tp_ppp.c, pppol2tp_sendmsg()) and IPoL2TP (in
net/l2tp/l2tp_ip.c, l2tp_ip_sendmsg()) make calls to sock_wmalloc() that
perform arithmetic on the size argument without any maximum bound. As a result,
by issuing sendto() calls with very large sizes, this allocation size will wrap
and result in a small buffer being allocated, leading to ugliness immediately
after (probably kernel panics due to bad sk_buff tail position, but possibly
kernel heap corruption)."

Credit: Dan Rosenberg

Reference:
http://www.spinics.net/lists/netdev/msg145673.html
https://bugzilla.redhat.com/show_bug.cgi?id=651892

Thanks,
--
Petr Matousek / Red Hat Security Response Team
