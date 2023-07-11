X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/11/3
Message-ID: <729502e9-8ccf-ea05-8f3e-4af516a3372f@apache.org>
Date: Tue, 11 Jul 2023 15:19:18 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-46651: Apache Airflow: Security vulnerability on AirFlow Connections 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that allows an unauthorized actor to gain access to sensitive information in Connection edit view. This vulnerability is considered low since it requires someone with access to Connection resources specifically updating the connection to exploit it. Users should upgrade to version 2.6.3 or later which has removed the vulnerability.

References:

https://github.com/apache/airflow/pull/32309
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46651

