X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/04/1
Message-ID: <6fb88b6d-9aa2-cf2c-5b4e-4168425ba462@apache.org>
Date: Wed, 04 May 2022 21:26:45 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28890: Apache Jena: Processing external DTDs 
Content-Type: text/plain; charset=utf-8

Severity: medium

Description:

A vulnerability in the RDF/XML parser of Apache Jena allows an attacker to cause an external DTD to be retrieved.  This issue affects Apache Jena version 4.4.0 and prior versions.  Apache Jena 4.2.x and 4.3.x do not allow external entities.

Mitigation:

Users are advised to upgrade to Apache Jena 4.5.0 or later.

Credit:

Apache Jena would like to thank Feras Daragma, Avishag Shapira & Amit Laish (GE Digital, Cyber Security Lab) for their report.

