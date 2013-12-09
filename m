X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/09/3
Message-ID: <52A552CB.10808@redhat.com>
Date: Mon, 09 Dec 2013 15:19:07 +1000
From: Nick Coghlan <ncoghlan@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CPython hash secret can be recoved remotely
Content-Type: text/plain; charset=utf-8

Software: CPython
Vendor: Python Software Foundation
Vulnerability: remote target-specific CPU usage DOS

This is a followup to CVE-2012-1150 (hash table collision CPU usage DOS
in CPython)

http://bugs.python.org/issue14621 points out that the hash secret in
CPython can be recovered remotely, so while the original fix addressed
the "blind DOS" problem (of being able to DOS any Python based service
with a single prepared payload), it didn't completely eliminate the
potential for remote DOS attacks based on hash collisions.
(http://bugs.python.org/issue14621#msg173455 has the details)

Python 3.4+ will use SipHash by default
(http://www.python.org/dev/peps/pep-0456), which should resolve the
vulnerability completely.

Regards,
Nick.

-- 
Nick Coghlan
Red Hat Hosted & Shared Services
Software Engineering & Development, Brisbane

Testing Solutions Team Lead
Beaker Development Lead (http://beaker-project.org/)
