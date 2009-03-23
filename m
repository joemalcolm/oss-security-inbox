X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/23/1
Message-ID: <28fa9c5e0903222108v5d6862q42894df0d05ddb4a@mail.gmail.com>
Date: Mon, 23 Mar 2009 12:08:45 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: nfsd did not drop CAP_MKNOD for non-root
Content-Type: text/plain; charset=utf-8

According to the upstream commit 76a67ec6, an unprivileged client can,
for example, create a device node on a filesystem exported with
root_squash as CAP_MKNOD is not among the capabilities dropped when an
nfsd thread handles a request from a non-root user. I believe this
problem was introduced in upstream commit e338d263a (follows: v2.6.24;
precedes: v2.6.25-rc1).

http://groups.google.com/group/fa.linux.kernel/browse_thread/thread/665b99fdc970bee3

Thanks, Eugene
