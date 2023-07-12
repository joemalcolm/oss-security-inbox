X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/12/3
Message-ID: <85b6b155-cfe9-ab68-c93a-cce73046a7af@apache.org>
Date: Wed, 12 Jul 2023 18:24:33 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-37415: Apache Airflow Apache Hive Provider: Improper Input Validation in Hive Provider with proxy_user 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow Apache Hive Provider before 6.1.2

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apache Airflow Apache Hive Provider.

Patching on top of CVE-2023-35797
Before 6.1.2 the proxy_user option can also inject semicolon.

This issue affects Apache Airflow Apache Hive Provider: before 6.1.2.

It is recommended updating provider version to 6.1.2 in order to avoid this vulnerability.

Credit:

Son Tran from VNPT - VCI (reporter)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-37415

