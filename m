X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/02/2
Message-ID: <77145bb1-a648-e46c-1159-5286c4f3b000@apache.org>
Date: Sun, 02 Jul 2023 10:16:17 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-35797: Apache Airflow Hive Provider Beeline RCE with Principal 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow Apache Hive Provider before 6.1.1

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apache Airflow Hive Provider.
This issue affects Apache Airflow Apache Hive Provider: before 6.1.1.

Before version 6.1.1 it was possible to bypass the security check to RCE via
principal parameter. For this to be exploited it requires access to modifying the connection details.

It is recommended updating provider version to 6.1.1 in order to avoid this vulnerability.

Credit:

id_No2015429 of 3H Secruity Team (reporter)

References:

https://github.com/apache/airflow/pull/31983
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-35797

