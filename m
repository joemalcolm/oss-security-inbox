X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/07/1
Message-ID: <9cb8f8f7-e532-c9df-3e6b-511067d921a9@apache.org>
Date: Sun, 07 May 2023 17:02:53 +0000
From: Pierre Jeambrun <pierrejeambrun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-29247: Stored XSS on Apache Airflow 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Airflow before 2.6.0

Description:

Task instance details page in the UI is vulnerable to a stored XSS.This issue affects Apache Airflow: before 2.6.0.

Credit:

taidh from VNPT - VCI (finder)
kuteminh11 (finder)

References:

https://github.com/apache/airflow/pull/30447
https://github.com/apache/airflow/pull/30779
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-29247

