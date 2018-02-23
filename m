X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/23/9
Message-ID: <CAEwge-EA=armRcEHu5R3zZhyuTm=ZTLKHNJa5wPrsCYd3AeNfA@mail.gmail.com>
Date: Fri, 23 Feb 2018 14:17:15 -0800
From: Anthony Baker <abaker@...che.org>
To: user@...de.apache.org, dev@...de.apache.org, announce@...che.org,  oss-security@...ts.openwall.com, asf-security <security@...che.org>, mmo@...mle.com
Subject: [SECURITY] CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer
Content-Type: text/plain; charset=utf-8

CVE-2017-15692 Apache Geode unsafe deserialization in TcpServer

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.3.0

Description:
The TcpServer within the Geode locator opens a network port that
deserializes data.  If an unprivileged user gains access to the Geode
locator, they may be able to cause remote code execution if certain
classes are present on the classpath.

A malicious user can send a network message to the Geode locator and
execute code if certain classes are present on the classpath.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.4.0 or
later.  In addition, users should set the flag
validate-serializable-objects.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Man Yue Mo from Semmle.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3923
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
