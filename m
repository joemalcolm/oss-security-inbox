X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/12/2
Message-ID: <13ae48ed-68df-186b-ca74-2b6e1cb56a33@apache.org>
Date: Wed, 12 Apr 2023 15:39:15 +0000
From: Angela Schreiber <angela@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45064: Apache Sling Engine: Include-based XSS 
Content-Type: text/plain; charset=utf-8

Description:

The SlingRequestDispatcher doesn't correctly implement the RequestDispatcher API resulting in a generic type of include-based cross-site scripting issues on the Apache Sling level. The vulnerability is exploitable by an attacker that is able to include a resource with specific content-type and control the include path (i.e. writing content). The impact of a successful attack is privilege escalation to administrative power.




Please update to Apache Sling Engine >= 2.14.0 and enable the "Check Content-Type overrides" configuration option.

Credit:

Lars Krapf (reporter)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-45064

