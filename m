X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/21/1
Message-ID: <e2321f2c-9e32-1b6f-1558-0c3190883ee6@apache.org>
Date: Thu, 21 Dec 2023 07:04:36 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-48291: Apache Airflow: Improper access control to DAG resources 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow before 2.8.0

Description:

Apache Airflow, in versions prior to 2.8.0, contains a security vulnerability that allows an authenticated user with limited access to some DAGs, to craft a request that could give the user write access to various DAG resources for DAGs that the user had no access to, thus, enabling the user to clear DAGs they shouldn't.

This is a missing fix for CVE-2023-42792 in Apache Airflow 2.7.2 

Users of Apache Airflow are strongly advised to upgrade to version 2.8.0 or newer to mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/34366
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-48291

