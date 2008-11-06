X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/06/1
Message-ID: <28fa9c5e0811060612t1b17c4f1p94d102fb04a984e7@mail.gmail.com>
Date: Thu, 6 Nov 2008 22:12:13 +0800
From: "Eugene Teo" <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: Unix sockets kernel panic
Content-Type: text/plain; charset=utf-8

Hi,

We need a CVE name for this issue. This was reported in netdev today.

"The following code causes a kernel panic on Linux 2.6.26:
http://darkircop.org/unix.c

I haven't investigated the bug so I'm not sure what is causing it, and
don't know if it's exploitable.  The code passes unix sockets from one
process to another using unix sockets.  The bug probably has to do
with closing file descriptors."

http://marc.info/?l=linux-netdev&m=122593044330973&w=2
https://bugzilla.redhat.com/show_bug.cgi?id=470201

There isn't a fix yet. Dave is working on it.

Thanks, Eugene
