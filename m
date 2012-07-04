X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/04/1
Message-ID: <20120704071950.GE19060@dhcp-25-225.brq.redhat.com>
Date: Wed, 4 Jul 2012 09:19:50 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: epoll: can leak file descriptors when returning -ELOOP
Content-Type: text/plain; charset=utf-8

An epoll_ctl(,EPOLL_CTL_ADD,,) operation can return '-ELOOP' to prevent
circular epoll dependencies from being created.  However, in that case
we do not properly clear the 'tfile_check_list'.

An unprivileged local user could use this flaw to crash the system.

Regression introduced via 28d82dc1c4edbc352129f97f4ca22624d1fe61de
commit.

Upstream fix:
13d518074a952d33d47c428419693f63389547e9

References:
https://lkml.org/lkml/2012/3/27/65
https://lkml.org/lkml/2012/4/17/247
https://bugzilla.redhat.com/show_bug.cgi?id=837502

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
