X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/11/2
Message-ID: <74f238d9-5533-2bc4-0597-1c662235b0a1@apache.org>
Date: Tue, 11 Jul 2023 15:18:21 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22887: Apache Airflow path traversal by authenticated user 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that allows an attacker to perform unauthorized file access outside the intended directory structure by manipulating the run_id parameter. This vulnerability is considered low since it requires an authenticated user to exploit it. It is recommended to upgrade to a version that is not affected

Credit:

Zhipeng Zhang (@Timon8) (finder)

References:

https://github.com/apache/airflow/pull/32293
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22887

