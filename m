X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/18
Message-ID: <a35b00f7-9603-7b8b-d367-dcb1d15f2f57@apache.org>
Date: Mon, 14 Sep 2026 08:42:00 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78318: Apache Syncope: Unauthenticated reflected XSS in Console and Enduser 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-common-ui) 4.0.4 through 4.0.7
- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-common-ui) 4.1.0-M0 through 4.1.2

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Syncope.



The notification message, as optionally shown by Console's and Enduser's login pages can be instructed to display HTML tags with unsafe JS inline, via malicious HTTP link generation.



This issue affects Apache Syncope: from 4.0.4 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

Alon Galili (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78318

