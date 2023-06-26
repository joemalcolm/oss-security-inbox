X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/06/26/3
Message-ID: <db7ff106-1c0f-48b1-8073-91ecce24448a@apache.org>
Date: Mon, 26 Jun 2023 15:59:46 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22886: Apache Airflow JDBC Provider: RCE Vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow JDBC Provider before 4.0.0

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apache Airflow JDBC Provider.
Airflow JDBC Provider Connection’s [Connection URL] parameters had no
restrictions, which made it possible to implement RCE attacks via
different type JDBC drivers, obtain airflow server permission.
This issue affects Apache Airflow JDBC Provider: before 4.0.0.

Credit:

heart Y (finder)
happyhacking (finder)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22886

