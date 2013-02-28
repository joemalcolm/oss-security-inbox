X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/28/13
Message-ID: <20130228171744.GI1722@dhcp-25-225.brq.redhat.com>
Date: Thu, 28 Feb 2013 18:17:45 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Mike Burns <mburns@...hat.com>, Fabian Deutsch <fdeutsch@...hat.com>
Subject: CVE-2013-0293 -- ovirt-node: Lock screen accepts F2 to drop to shell
Content-Type: text/plain; charset=utf-8

F2 on the lock screen will cause the UI to drop to a root shell. This
means the screen is not really locked and an unprivileged user that has
access to the console or the ssh session can elevate his privileges.

Acknowledgements:

This issue was discovered by Mike Burns of Red Hat.

Versions affected:
oVirt Node 2.6.0-1 

References:
https://bugzilla.redhat.com/show_bug.cgi?id=911699

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
