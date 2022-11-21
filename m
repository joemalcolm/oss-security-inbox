X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/21/4
Message-ID: <d342cc67-4b93-1ea2-1e9e-6bdf17605f7c@apache.org>
Date: Mon, 21 Nov 2022 20:24:03 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38649: Apache Airflow Pinot Provider, Apache Airflow: PinotAdminHook Command Injection 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') vulnerability in Apache Airflow Pinot Provider, Apache Airflow allows an attacker to control commands executed in the task execution context, without write access to DAG files. This issue affects Apache Airflow Pinot Provider versions prior to 4.0.0. It also impacts any Apache Airflow versions prior to 2.3.0 in case Apache Airlfow Pinot Provider is installed (Apache Airflow Pinot Provider 4.0.0 can only be installed for Airflow 2.3.0+). Note that you need to manually install the Pinot Provider version 4.0.0 in order to get rid of the vulnerability on top of Airflow 2.3.0+ version.

Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for reporting the issue.

References:

https://github.com/apache/airflow/pull/27641

