X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/15/1
Message-ID: <92d6d5d6-bee4-aa21-96f5-d1a5975b6eb5@apache.org>
Date: Fri, 15 Oct 2021 13:02:54 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-32609: Apache Superset: XSS vulnerability on Explore page 
Content-Type: text/plain; charset=utf-8

Description:

Apache Superset up to and including 1.1 does not sanitize titles correctly on the Explore page. This allows an attacker with Explore access to save a chart with a malicious title, injecting html (including scripts) into the page.

Credit:

Apache Superset team would like to thank Oscar Arnflo for reporting this issue

