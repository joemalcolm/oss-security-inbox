X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/19/1
Message-ID: <979919144.1848807.1348076592319.JavaMail.root@redhat.com>
Date: Wed, 19 Sep 2012 13:43:12 -0400 (EDT)
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: oss-security@...ts.openwall.com
Subject: CVE Request Smarty / php-Smarty: XSS in Smarty exception messages
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

  a cross-site scripting (XSS) flaw was found in the way Smarty
sanitized exception messages:
[1] http://secunia.com/advisories/50589/
[2] http://code.google.com/p/smarty-php/source/browse/trunk/distribution/change_log.txt

Upstream patch:
[3] http://code.google.com/p/smarty-php/source/detail?r=4658

Could you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

P.S.: Going through the OSS archive from 2012-09 it doesn't seem
      this has got a CVE identifier yet (but didn't look to posts
      from previous months).
