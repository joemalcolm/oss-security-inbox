X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/11/5
Message-ID: <8fdef484-31c0-fb48-0c7d-f318688b5e7d@apache.org>
Date: Tue, 11 Jul 2023 15:28:03 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22888: Apache Airflow: Scheduler remote DoS 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that allows an attacker to cause a service disruption by manipulating the run_id parameter. This vulnerability is considered low since it requires an authenticated user to exploit it. It is recommended to upgrade to a version that is not affected

Credit:

Zhipeng Zhang (@timon8) (finder)

References:

https://github.com/apache/airflow/pull/32293
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22888

