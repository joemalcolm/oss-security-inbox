X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/6
Message-ID: <23a4e7b4-1db4-9ab1-0a79-48484874b5b3@apache.org>
Date: Wed, 06 Sep 2023 09:34:41 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-39265: Apache Superset: Possible Unauthorized Registration of SQLite Database Connections 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

Apache Superset would allow for SQLite database connections to be incorrectly registered when an attacker uses alternative driver names like sqlite+pysqlite or by using database imports. This could allow for unexpected file creation on Superset webservers. Additionally, if Apache Superset is using a SQLite database for its metadata (not advised for production use) it could result in more severe vulnerabilities related to confidentiality and integrity. This vulnerability exists in Apache Superset versions up to and including 2.1.0.

Credit:

Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-39265

