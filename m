X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/05/30/1
Message-ID: <CAP+3qq608wFjzEuSyGUSa1D8Lwnu7_XxoSuqBM94ZM9iYBfHqw@mail.gmail.com>
Date: Thu, 30 May 2019 10:35:35 +0900
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2018-8029: Apache Hadoop Privilege escalation vulnerability

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:
3.0.0-alpha1 to 3.1.0, 2.9.0 to 2.9.1, 2.2.0 to 2.8.4

Description:
A user who can escalate to yarn user can possibly run arbitrary
commands as root user.

Mitigation:
Users should upgrade to Apache Hadoop 2.8.5, 2.9.2, 3.1.1 or upper.
If you are using the affected version of Apache Hadoop and there are
any users who can escalate to yarn user and cannot escalate to root user,
remove the permission to escalate to yarn user from them.

Credit:
This issue was discovered by Miklos Szegedi.
