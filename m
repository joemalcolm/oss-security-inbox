X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/05/06/1
Message-ID: <5ae336cf-623c-6aee-e50f-9d60c6dc15a4@nanthrax.net>
Date: Mon, 6 May 2019 09:33:49 +0200
From: Jean-Baptiste Onofré <jb@...thrax.net>
To: user@...af.apache.org, Karaf Dev <dev@...af.apache.org>, Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com, malingtao1019@....com
Subject: [SECURITY] New security advisory for CVE-2019-0226 released for Apache Karaf
Content-Type: text/plain; charset=utf-8

A new security advisory has been released for Apache Karaf, that is
fixed in recent 4.2.5 release.

CVE-2019-0226: Arbitrary file write vulnerability in Config service

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.2.5

Description:

Apache Karaf Config service provides a install method (via service or
MBean) that could be used to travel in any directory and overwrite
existing file.

The vulnerability is low if the Karaf process user has limited
permission on the filesystem.

The mitigation is to prevent travel "outside" of Karaf etc folder by
checking the path argument of the method and prevent use of ".." in the
path.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=fe3bc41
https://gitbox.apache.org/repos/asf?p=karaf.git;h=bf5ed62

Mitigation: Apache Karaf users should upgrade to 4.2.5
or later as soon as possible, or limit filesystem permission for the
Karaf process user.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-6230

Credit: This issue was reported by 马凌涛 <malingtao1019@....com>


