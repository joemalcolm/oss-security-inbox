X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/14/2
Message-ID: <e300bb4d-e2ce-79e2-42fc-7ddcd4602a42@apache.org>
Date: Sun, 13 Nov 2022 22:48:47 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40127: RCE in Apache Airflow <2.4.0 bash example 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

A vulnerability in Example Dags of Apache Airflow allows an attacker with UI access who can trigger DAGs, to execute arbitrary commands via manually provided run_id parameter.  This issue affects Apache Airflow Apache Airflow versions prior to 2.4.0.

Mitigation:

Do not enable example dags on systems that should not allow UI user to execute an arbitrary command.

Credit:

Apache Airflow PMC would like to thank L3yx of Syclover Security Team.

References:

https://github.com/apache/airflow/pull/25960

