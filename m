X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/12/1
Message-ID: <121afd25-2b10-705f-3278-42ef440f41e0@apache.org>
Date: Tue, 12 Sep 2023 09:00:47 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-40712: Apache Airflow: Secrets can be unmasked in the "Rendered Template"  
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow before 2.7.1

Description:

Apache Airflow, versions before 2.7.1, is affected by a vulnerability that allows authenticated users who have access to see the task/dag in the UI, to craft a URL, which could lead to unmasking the secret configuration of the task that otherwise would be masked in the UI.

Users are strongly advised to upgrade to version 2.7.1 or later which has removed the vulnerability.

Credit:

klexadoc (finder)

References:

https://github.com/apache/airflow/pull/33512
https://github.com/apache/airflow/pull/33516
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-40712

