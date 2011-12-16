X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/16/2
Message-ID: <20111216221602.GB16606@redhat.com>
Date: Fri, 16 Dec 2011 15:16:02 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: zabbix persistent XSS flaw
Content-Type: text/plain; charset=utf-8

Could a CVE be assigned to this flaw?

Zabbix 1.8.10rc1 was released to correct persistant cross-site
scripting vulnerabilities due to improper sanitization of the gname
variable when creating user and host groups.

References:

http://www.zabbix.com/rn1.8.10rc1.php
https://support.zabbix.com/browse/ZBX-4015
https://bugzilla.redhat.com/show_bug.cgi?id=768525

-- 
Vincent Danen / Red Hat Security Response Team 
