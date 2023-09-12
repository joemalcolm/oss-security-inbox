X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/12/2
Message-ID: <1e0d6c23-49ff-d833-ed26-bbdbeae93fd5@apache.org>
Date: Tue, 12 Sep 2023 09:01:32 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-40611: Apache Airflow Dag Runs Broken Access Control Vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.7.1

Description:

Apache Airflow, versions before 2.7.1, is affected by a vulnerability that allows authenticated and DAG-view authorized Users to modify some DAG run detail values when submitting notes. This could have them alter details such as configuration parameters, start date, etc.

Users should upgrade to version 2.7.1 or later which has removed the vulnerability.

Credit:

happyhacking (finder)

References:

https://github.com/apache/airflow/pull/33413
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-40611

