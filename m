X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/02/1
Message-ID: <4A2FDA56-491B-4C2A-915F-C9D4A4BDB92A@apache.org>
Date: Fri, 02 Jun 2017 11:10:55 +0530
From: Varun Vasudev <vvasudev@...che.org>
To: <general@...oop.apache.org>, user <user@...oop.apache.org>, "<security@...oop.apache.org>" <security@...oop.apache.org>, security <security@...che.org>, <bugtraq@...urityfocus.com>, <oss-security@...ts.openwall.com>
Subject: CVE-2017-7669: Apache Hadoop privilege escalation
Content-Type: text/plain; charset=utf-8

CVE-2017-7669: Apache Hadoop privilege escalation

Severity: Critical

Vendor: The Apache Software Foundation

Versions affected: Hadoop 2.8.0, Hadoop 3.0.0-alpha1 and Hadoop 3.0.0-alpha2

Description:
The LinuxContainerExecutor runs docker commands as root with
insufficient input validation. When the docker feature is enabled,
authenticated users can run commands as root

Mitigation:
Users of Apache Hadoop 2.8.0 should leave Docker functionality disabled until Hadoop 2.8.1 is released.
Users of Apache Hadoop 3.0.0-alpha1 and Hadoop 3.0.0-alpha2 should upgrade to Hadoop 3.0.0-alpha3 or later.

Credit:
This issue was discovered by Allen Wittenauer.


