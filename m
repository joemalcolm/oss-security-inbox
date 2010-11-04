X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/04/9
Message-ID: <20101104194416.GI5144@ksplice.com>
Date: Thu, 4 Nov 2010 15:44:16 -0400
From: Nelson Elhage <nelhage@...lice.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: logic error in INET_DIAG bytecode auditing
Content-Type: text/plain; charset=utf-8

INET_DIAG is inconsistent about how it looks up the bytecode contained in a
netlink message, making it possible for a user to cause the kernel to execute
unaudited INET_DIAG bytecode.

This can be abused to make the kernel enter an infinite loop, and possibly other
consequences, although I haven't thought of anything else interesting.

Reference:
http://www.spinics.net/lists/netdev/msg145899.html

- Nelson
