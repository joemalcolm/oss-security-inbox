X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/02/23/8
Message-ID: <fe27c0f0-9a98-137a-5aa6-9cabc13977a5@apache.org>
Date: Thu, 23 Feb 2023 17:48:43 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-25956: Apache Airflow AWS Provider: Arbitrary file read via AWS provider 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Generation of Error Message Containing Sensitive Information vulnerability in the Apache Airflow AWS Provider.

This issue affects Apache Airflow AWS Provider versions before 7.2.1.

Credit:

Son Tran from VNPT - VCI (finder)

References:

https://github.com/apache/airflow/pull/29587
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-25956

