X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/21/5
Message-ID: <0dde22b3-a9b9-02c0-b928-2a308ae67699@apache.org>
Date: Mon, 21 Nov 2022 20:33:44 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40189: Apache Airlfow Pig Provider RCE 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') vulnerability in Apache Airflow Pig Provider, Apache Airflow allows an attacker to control commands executed in the task execution context, without write access to DAG files. This issue affects Pig Provider versions prior to 4.0.0. It also impacts any Apache Airflow versions prior to 2.3.0 in case Pig Provider is installed (Pig Provider 4.0.0 can only be installed for Airflow 2.3.0+). Note that you need to manually install the Pig Provider version 4.0.0 in order to get rid of the vulnerability on top of Airflow 2.3.0+ version.

Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for reporting the issue.

References:

https://github.com/apache/airflow/pull/27644

