X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/20/1
Message-ID: <28fa9c5e0902192215v27677e83mca222e96854e9722@mail.gmail.com>
Date: Fri, 20 Feb 2009 14:15:36 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: memory disclosure in SO_BSDCOMPAT gsopt
Content-Type: text/plain; charset=utf-8

According to the upstream commit
df0bca049d01c0ee94afb7cd5dfd959541e6c8da "net: 4 bytes kernel memory
disclosure in SO_BSDCOMPAT gsopt try #2" in linux-2.6's git, there is
a missing initialisation of optval v.val that can be directly returned
to userspace when getsockopt() is called with SO_BSDCOMPAT optname
set.

http://patchwork.kernel.org/patch/6816/
https://bugzilla.redhat.com/show_bug.cgi?id=486305
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=df0bca049d01c0ee94afb7cd5dfd959541e6c8da

Thanks, Eugene
