X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/08/17/1
Message-ID: <4d92373c-e3c9-c1ef-56f7-0cfb4cc8b10f@apache.org>
Date: Thu, 17 Aug 2023 13:07:16 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-40272: Apache Airflow Spark Provider Arbitrary File Read via JDBC 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow Spark Provider before 4.1.3

Description:

Apache Airflow Spark Provider, versions before 4.1.3, is affected by a vulnerability that allows an attacker to pass in malicious parameters when establishing a connection giving an opportunity to read files on the Airflow server.
It is recommended to upgrade to a version that is not affected.

Credit:

sw0rd1ight (finder)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-40272

