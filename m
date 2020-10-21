X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/21/1
Message-ID: <CAP+3qq4w3UX6hdjr2SszhtfXUpbrg16PMyyJPHT+8PXimBTPMg@mail.gmail.com>
Date: Wed, 21 Oct 2020 15:21:39 +0900
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2018-11764] Apache Hadoop Privilege escalation in web endpoint
Content-Type: text/plain; charset=utf-8

CVE-2018-11764: Apache Hadoop Privilege escalation in web endpoint

Severity: Critical

Vendor: The Apache Software Foundation

Versions affected:
3.0.0-alpha4, 3.0.0-beta1, and 3.0.0

Description:
Web endpoint authentication check is broken. Authenticated users may
impersonate any user even if no proxy user is configured.

Mitigation:
Users should upgrade to Apache Hadoop 3.0.1 or upper.

Credit:
This issue was discovered by Daryn Sharp.
