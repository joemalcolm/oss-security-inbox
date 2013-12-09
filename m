X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/09/5
Message-ID: <52A592AB.1020303@redhat.com>
Date: Mon, 09 Dec 2013 15:21:39 +0530
From: Ratul Gupta <ratulg@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: pam: password hashes aren't compared case-sensitively
Content-Type: text/plain; charset=utf-8

https://bugzilla.redhat.com/show_bug.cgi?id=1038555

It was found that in pam_userdb module for Pam, password hashes weren't 
compared case-sensitively, which could lead to acceptance of hashes for 
completely different passwords, which shouldn't be accepted.

After hashing the user's password with crypt(), pam_userdb compares the 
result to the stored hash case-insensitively with strncasecmp(), which 
should be avoided, as it could result in an increased possibility of a 
successful brute-force attack.

Can a CVE be assigned for this?

-- 
Regards,

Ratul Gupta / Red Hat Security Response Team

