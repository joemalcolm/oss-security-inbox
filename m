X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/6
Message-ID: <3939d037-a0b9-b287-a2c5-9f8dcaf522b3@apache.org>
Date: Thu, 19 Nov 2026 08:11:59 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120404: Apache OpenNLP: Denial of service via inefficient regular expression in the coordinate name finder 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-tools) 2.0.0 before 2.5.13
- Apache OpenNLP (org.apache.opennlp:opennlp-runtime) 3.0.0-M1 before 3.0.0

Description:

The built-in regular expression name finder for latitude and longitude coordinates uses a pattern that is vulnerable to excessive backtracking. An attacker who can supply text that an application analyzes with this name finder can cause high CPU consumption, leading to denial of service. Users are recommended to upgrade to version 2.5.13 or 3.0.0, which fix the issue.

Credit:

Alex Palinkash / https://github.com/alex-sc (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120404

