X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/20/4
Message-ID: <d3f78cdd-6521-812e-2914-1a289f602f3c@apache.org>
Date: Tue, 20 Sep 2022 18:55:11 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40754: Apache Airflow: Open Redirect 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow 2.3.0 through 2.3.4, there was an open redirect in the webserver's `/confirm` endpoint.

Credit:

The Apache Airflow PMC would like to thank Konstantin Weddige (Lutra Security) for reporting this issue.

References:

https://github.com/apache/airflow/pull/26409


