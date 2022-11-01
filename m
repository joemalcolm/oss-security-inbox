X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/01/22
Message-ID: <70b4e691-2031-ca2c-1cb1-2d0d204b4e12@apache.org>
Date: Tue, 01 Nov 2022 20:59:06 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43982: Apache Airflow: Reflected XSS via Origin Query Argument in URL 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow versions prior to 2.4.2, the "Trigger DAG with config" screen was susceptible to XSS attacks via the `origin` query argument.

Credit:

The Apache Airflow PMC would like to thank id_No2015429 of 3H Security Team for reporting this issue.

References:

https://github.com/apache/airflow/pull/27143


