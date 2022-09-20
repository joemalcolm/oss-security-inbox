X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/20/3
Message-ID: <276b2fdb-440f-5ed0-d9a5-6acc21202659@apache.org>
Date: Tue, 20 Sep 2022 18:53:42 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40604: Apache Airflow: Format String Vulnerability 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow 2.3.0 through 2.3.4, part of a url was unnecessarily formatted, allowing for possible information extraction.

Credit:

The Apache Airflow PMC would like to thank L3yx of Syclover Security Team for reporting this issue.

References:

https://github.com/apache/airflow/pull/26337


