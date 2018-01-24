X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/24/2
Message-ID: <20180124060817.GE19133@sin.redhat.com>
Date: Wed, 24 Jan 2018 16:38:18 +1030
From: Doran Moppert <dmoppert@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-1000018: ovirt-engine-setup: root password disclosed in provisioning logs
Content-Type: text/plain; charset=utf-8

Distributions of ovirt using hosted-engine-setup should check if their
configuration is affected by this issue, as the default log file
permissions were 0755 and the root password was not correctly filtered.

https://gerrit.ovirt.org/#/c/86635/
https://gerrit.ovirt.org/#/c/62679/

https://bugzilla.redhat.com/show_bug.cgi?id=1537904


-- 
Doran Moppert
Red Hat Product Security

Content of type "application/pgp-signature" skipped
