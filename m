X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/10/12
Message-ID: <CABEk9YzSs+SRPKeL95=Pd7sMZ4Ud+H67UOZMwjjudMs5n0iknw@mail.gmail.com>
Date: Tue, 10 May 2016 15:35:09 -0400
From: Kangjie Lu <kangjielu@...il.com>
To: oss-security@...ts.openwall.com, Chengyu Song <csong84@...ech.edu>,  Insu Yun <insu@...ech.edu>, Taesoo Kim <taesoo@...ech.edu>
Subject: CVE Request: x25: a kernel infoleak in x25_negotiate_facilities()
Content-Type: text/plain; charset=utf-8

Hello,


In function  x25_negotiate_facilities()  of file net/x25/x25_facilities.c,
the stack object "dte_facilities" is allocated in x25_rx_call_request(),
which is supposed to be initialized in x25_negotiate_facilities. However,
5 fields (8 bytes in total) are not initialized. This object is then copied
to
userland via copy_to_user, thus an infoleak occurs.

Fix info: https://lkml.org/lkml/2016/5/8/59
Patch applied: https://lkml.org/lkml/2016/5/9/1100


Please help assign a CVE to it.


Thanks,
Kangjie Lu

