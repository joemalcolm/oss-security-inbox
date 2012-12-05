X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/05/3
Message-ID: <50BEF03A.1000309@redhat.com>
Date: Wed, 05 Dec 2012 12:26:58 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
CC: Kurt Seifried <kseifried@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: Mysql/Mariadb insecure salt-usage
Content-Type: text/plain; charset=utf-8

Hi,

Noticed another post by kingcope on full-disclosure, which basically
boils down to re-use of a salt-value when transmitting passwords
over a network.

If you could MITM/capture network packets, you could use this
weakness to determine the passwords.

References:
http://seclists.org/fulldisclosure/2012/Dec/58
https://bugzilla.redhat.com/show_bug.cgi?id=883719

Should this a CVE be assigned to this issue?


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
