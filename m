X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/02/3
Message-ID: <4C2E0D59.4050404@redhat.com>
Date: Fri, 02 Jul 2010 18:01:29 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- Roundup: XSS by processing PageTemplate template for a named page
Content-Type: text/plain; charset=utf-8

Hi Steve, vendors,

   A deficiency was found in the way Roundup, simple and flexible issue-tracking system,
processed PageTemplate templates for named pages. A remote attacker could
use this flaw to conduct cross-site scripting (XSS) attacks by tricking
a local, authenticated user into visiting a specially-crafted web page.

References:
   [1] http://bugs.gentoo.org/show_bug.cgi?id=326395

Upstream changeset:
   [2] http://roundup.svn.sourceforge.net/viewvc/roundup?view=revision&revision=4486

Could you allocate a CVE identifier for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
