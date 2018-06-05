X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/05/1
Message-Id: <AC205FFE-711A-4E19-AE73-00D404071375@apache.org>
Date: Tue, 5 Jun 2018 10:35:54 -0400
From: "P. Taylor Goetz" <ptgoetz@...che.org>
To: user@...rm.apache.org, dev@...rm.apache.org, announce@...che.org, Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com
Subject: [CVE-2018-1332] Apache Storm user impersonation vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2018-1332: Apache Storm user impersonation vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Storm 1.2.1
Apache Storm 1.1.2

Description:
Apache Storm version 1.0.6 and earlier, 1.2.1 and earlier, and version 1.1.2 and earlier expose a vulnerability that could allow a user to impersonate another user when communicating with some Storm Daemons.


Mitigation:
1.2.1 users should upgrade to version 1.2.2.
1.1.2 users should upgrade to version 1.1.3.
1.0.6 users should upgrade to version 1.1.3.

Apache Storm 1.2.2 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.2.2/

Apache Storm 1.1.3 artifacts are available for immediate download here:

http://www.us.apache.org/dist/storm/apache-storm-1.1.3/

Credit:
This issue was discovered by Bobby Evans of the Apache Storm PMC

References:
http://storm.apache.org/2018/06/04/storm122-released.html
http://storm.apache.org/2018/06/04/storm113-released.html

P. Taylor Goetz
