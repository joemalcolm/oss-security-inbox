X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/04/1
Message-ID: <14378199-be13-16b2-fd4e-c57b92064820@apache.org>
Date: Sun, 04 Jul 2021 12:50:26 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-33192: Apache Jena Fuseki: Display information UI XSS 
Content-Type: text/plain; charset=utf-8

Severity: Medium

Description:

A vulnerability in the HTML pages of Apache Jena Fuseki allows an attacker to execute arbitrary javascript on certain page views.  This issue affects Apache Jena Fuseki from version 2.0.0 to version 4.0.0 (inclusive).

Mitigation:

Users are advised to upgrade to Apache Jena 4.1.0 or later.

Credit:

Apache Jena would like to thank Luka Safonov for reporting this issue.

