X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/21/9
Message-Id: <5B402C50-41A3-48F9-AB0A-2ED0CA934C3C@saltstack.com>
Date: Thu, 21 Aug 2014 10:44:55 -0600
From: "C. R. Oldham" <cr@...tstack.com>
To: oss-security@...ts.openwall.com
Subject: Revised: Salt 2014.1.10 released
Content-Type: text/plain; charset=utf-8

Greetings,

We are pleased to announce the 2014.1.10 release of Salt. The release notes can be found here: 

http://docs.saltstack.com/en/latest/topics/releases/2014.1.10.html

The sources are available on pypi:

https://pypi.python.org/pypi/salt/2014.1.10

Salt 2014.1.10 fixes security issues documented by CVE-2014-3563: Insecure tmp-file creation in seed.py, salt-ssh, and salt-cloud. Upgrading is recommended.

Special thanks to Kurt Seifried at Red Hat for investigating these issues and bringing them to our attention (and also letting me know that my first post got mangled somehow).

-- 
C. R. Oldham, Platform Engineer, SaltStack, Inc.
801-564-4673 / cr@...tstack.com / https://github.com/cro


Download attachment "signature.asc" of type "application/pgp-signature" (456 bytes)
