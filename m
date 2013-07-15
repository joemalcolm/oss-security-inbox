X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/15/6
Message-ID: <20130715195356.GS4441@dhcp-25-225.brq.redhat.com>
Date: Mon, 15 Jul 2013 21:53:56 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- Linux kernel: vhost-net: use-after-free in vhost_net_flush
Content-Type: text/plain; charset=utf-8

vhost_net_ubuf_put_and_wait has a confusing name: it will actually also
free it's argument. vhost_net_flush tries to use the argument after
passing it to vhost_net_ubuf_put_and_wait, this results in use after
free.

Upstream fix:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=dd7633ecd553a5e304d349aa6f8eb8a0417098c5

Introduced by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1280c27f8e29acf4af2da914e80ec27c3dbd5c01

Introduced in upstream version:
v3.8-rc1

References:
https://bugzilla.redhat.com/show_bug.cgi?id=984722
https://bugzilla.redhat.com/show_bug.cgi?id=980643
http://pkgs.fedoraproject.org/cgit/kernel.git/commit/?h=f19&id=da4ebd83da1869778909f394f6ebd50850ef5fec

-- 
Petr Matousek / Red Hat Security Response Team
