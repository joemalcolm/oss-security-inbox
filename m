X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/09/7
Message-ID: <CAEwge-FQAHe37U1zdM19NCj8NkAuyVUx7=ii5WHz_3=EY+BkLw@mail.gmail.com>
Date: Tue, 9 Jan 2018 14:07:14 -0800
From: Anthony Baker <abaker@...che.org>
To: user@...de.apache.org, dev@...de.apache.org, announce@...che.org,  asf-security <security@...che.org>, oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2017-12622 Apache Geode gfsh authorization vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2017-12622 Apache Geode gfsh authorization vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.2.1

Description:
When an authenticated user connects to a Geode cluster using the gfsh
tool with HTTP, the user is able to obtain status information and
control cluster members even without CLUSTER:MANAGE privileges.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.3.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Patrick Rhomberg from Pivotal.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3685
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities

---
The Geode PMC
