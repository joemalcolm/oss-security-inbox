X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/13/5
Message-ID: <4e9ea108-acec-8d88-1ad3-9bec3c9b26dc@apache.org>
Date: Fri, 13 Oct 2023 15:13:49 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42780: Apache Airflow: Improper access control vulnerability in the "List dag warnings" feature 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.7.2

Description:

Apache Airflow, versions prior to 2.7.2, contains a security vulnerability that allows authenticated users of Airflow to list warnings for all DAGs, even if the user had no permission to see those DAGs. It would reveal the dag_ids and the stack-traces of import errors for those DAGs with import errors.
Users of Apache Airflow are advised to upgrade to version 2.7.2 or newer to mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/34355
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-42780

