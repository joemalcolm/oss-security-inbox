X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/24/5
Message-ID: <4D8B7875.6060606@redhat.com>
Date: Thu, 24 Mar 2011 17:59:33 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>, David Malcolm <dmalcolm@...hat.com>
Subject: CVE Request -- Python (urllib, urllib2): Improper management of ftp:// and file:// URL schemes
Content-Type: text/plain; charset=utf-8


Hello Steve, vendors,

   A security flaw was found in the way handlers for ftp:// and
file:// URL schemes in the Python urllib and urllib2 extensible
libraries processed the urllib open URL request. A remote attacker
could use this flaw to access sensitive information or cause
a denial of service (excessive CPU and memory use) of a Python
web application, processing URLs, via a specially-crafted urllib
open URL request.

References:
[1] http://bugs.python.org/issue11662
[2] https://bugzilla.redhat.com/show_bug.cgi?id=690560

Could you allocate a CVE id for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
