X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/15/2
Message-ID: <632698ac-e78b-79ac-3a37-7a6a3acf782c@apache.org>
Date: Wed, 15 Jun 2022 14:10:21 +0000
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-33036: Apache Hadoop Privilege escalation vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: Critical

Description:

In Apache Hadoop 2.2.0 to 2.10.1, 3.0.0-alpha1 to 3.1.4, 3.2.0 to 3.2.2, and 3.3.0 to 3.3.1, a user who can escalate to yarn user can possibly run arbitrary commands as root user.  Users should upgrade to Apache Hadoop 2.10.2, 3.2.3, 3.3.2 or higher.

Mitigation:

If you are using the affected version of Apache Hadoop and some users can escalate to yarn user and cannot escalate to root user, remove the permission to escalate to yarn user from them.

Credit:

Apache Hadoop would like to thank Hideyuki Furue for reporting and fixing this issue.

