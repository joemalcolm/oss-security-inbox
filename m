X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/24/4
Message-ID: <01e07723-a942-3faf-824a-17585ab7a6d1@apache.org>
Date: Mon, 24 Apr 2023 19:03:51 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22665: Apache Jena: Exposure of arbitrary execution in script engine expressions. 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

There is insufficient checking of user queries in Apache Jena versions 4.7.0 and earlier, when invoking custom scripts. It allows a remote user to execute arbitrary javascript via a SPARQL query.

Credit:

L3yx of Syclover Security Team (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22665

