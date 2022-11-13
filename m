X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/14/3
Message-ID: <1b84d432-4696-5e87-8b43-fa704b5d57d4@apache.org>
Date: Sun, 13 Nov 2022 23:50:40 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-27949: Apache Airflow: sensitive values in rendered template 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

A vulnerability in UI of Apache Airflow allows an attacker to view unmasked secrets in rendered template values for tasks which were not executed (for example when they were depending on past and previous instances of the task failed). This issue affects Apache Airflow prior to 2.3.1.

References:

https://github.com/apache/airflow/pull/22754

