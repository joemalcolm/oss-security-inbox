X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/18/6
Message-Id: <19E83075-9152-4DEB-8630-F442C7D737A4@apache.org>
Date: Wed, 18 Jul 2018 09:57:37 -0400
From: Robert Levas <rlevas@...che.org>
To: oss-security@...ts.openwall.com
Cc: private@...ari.apache.org
Subject: CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari Agent standard out in Apache Ambari
Content-Type: text/plain; charset=utf-8

CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari Agent standard out 

Severity: Important

Vendor: Hortonworks

Versions Affected: Ambari 2.5.x, Ambari 2.6.x

Versions Fixed: Ambari 2.7.0

Description:
Passwords for Hadoop credential stores are exposed in Ambari Agent informational log messages when the credential store feature is enabled for eligible services. For example, Hive and Oozie.

Mitigation:
Ambari 2.5.x installations should be upgraded to Ambari 2.7.0
Ambari 2.6.x installations should be upgraded to Ambari 2.7.0

Credit:
This issue was discovered by Hortonworks.
