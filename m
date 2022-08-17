X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/18/4
Message-ID: <CAF+kE=S3-PVFZA2zGQBBuFsAsosXwZ04ONy3g10-SJqGCZywEQ@mail.gmail.com>
Date: Wed, 17 Aug 2022 15:42:09 -0500
From: Justin Bertram <jbertram@...che.org>
To: dev@...ivemq.apache.org, users@...ivemq.apache.org,  Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com
Subject: CVE-2022-35278: Apache ActiveMQ Artemis: HTML Injection in ActiveMQ Artemis Web Console
Content-Type: text/plain; charset=utf-8

Description:

An attacker could show malicious content and/or redirect users to a
malicious URL in the web console by using HTML in the name of an address or
queue.

Mitigation:

Upgrade to Apache ActiveMQ Artemis 2.24.0.

Credit:

Apache ActiveMQ would like to thank Yash Pandya (Digital14), Rajatkumar
Karmarkar (Digital14), and Likhith Cheekatipalle (Digital14) for reporting
this issue.

