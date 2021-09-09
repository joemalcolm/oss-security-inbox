X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/09/09/1
Message-ID: <e2aab54c-0042-d9fd-7df6-386cb1b498e1@apache.org>
Date: Thu, 09 Sep 2021 11:22:49 +0000
From: Kaxil Naik <kaxilnaik@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-38540: Apache Airflow: Variable Import endpoint missed authentication check 
Content-Type: text/plain; charset=utf-8

Description:

The variable import endpoint was not protected by authentication in Airflow >=2.0.0, <2.1.3. This allowed unauthenticated users to hit that endpoint to add/modify Airflow variables used in DAGs, potentially
resulting in a denial of service, information disclosure or remote code execution.

This issue affects Apache Airflow >=2.0.0, <2.1.3.

Credit:

Apache Airflow would like to thank Nathan Jones, National Australia Bank’s Offensive Security Team

