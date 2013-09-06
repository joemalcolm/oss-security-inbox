X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/06/1
Message-ID: <20130906162823.GR5194@redhat.com>
Date: Fri, 6 Sep 2013 10:28:23 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: pyOpenSSL hostname check bypassing vulnerability
Content-Type: text/plain; charset=utf-8

pyOpenSSL suffers from the same NULL-byte truncation issue that ruby,
python, php, etc. suffered from (like ruby CVE-2013-4073).

0.13.1 was recently released to correct this.  Could a CVE be assigned?

References:

https://mail.python.org/pipermail/pyopenssl-users/2013-September/000478.html
https://bugzilla.redhat.com/show_bug.cgi?id=1005325

-- 
Vincent Danen / Red Hat Security Response Team 
