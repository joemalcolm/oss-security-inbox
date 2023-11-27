X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/27/2
Message-ID: <ec83c66b-4748-f48b-7396-e9fd654ffdff@apache.org>
Date: Mon, 27 Nov 2023 09:31:05 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-40610: Apache Superset: Privilege escalation with default examples database 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 2.1.2

Description:

Improper authorization check and possible privilege escalation on Apache Superset up to but excluding 2.1.2. Using the default examples database connection that allows access to both the examples schema and Apache Superset's metadata database, an attacker using a specially crafted CTE SQL statement could change data on the metadata database. This weakness could result on tampering with the authentication/authorization data.

Credit:

LEXFO for Orange Innovation and Orange CERT-CC  at Orange group (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-40610

