X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/24/2
Message-ID: <CA+rthh-9kouDr_Y8BFcE4aOrFsT-78bKQBnweeWf4q-Ph09_2Q@mail.gmail.com>
Date: Sun, 24 Feb 2013 10:10:45 +0100
From: Mathias Krause <minipli@...glemail.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: kernel - sock_diag: Fix out-of-bounds access to sock_diag_handlers[]
Content-Type: text/plain; charset=utf-8

An unprivileged user can send a netlink message resulting in an
out-of-bounds access of the sock_diag_handlers[] array which, in turn,
allows userland to take over control while in kernel mode.

Patch (already in net/master):
http://thread.gmane.org/gmane.linux.network/260061

Affected versions:
v3.3 - v3.8

PoC is not attached this time but can be requested on demand. Hint:
Works well on Fedora 18, bypassing all mmap_min_addr checks. ;)


Thanks,
Mathias
