X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/16/1
Message-Id: <QEMPGR.4UV0V117D2AA@apache.org>
Date: Tue, 16 Aug 2022 14:20:50 +0100
From: Ash Berlin-Taylor <ash@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38362: Apache Airflow Docker Provider <3.0 RCE vulnerability in example dag
Content-Type: text/plain; charset=utf-8

Description:

Apache Airflow Docker's Provider shipped with an example DAG that was 
vulnerable to (authenticated) remote code exploit of code on the 
Airflow worker host.


Mitigation:

Disable loading of example DAGs or upgrade the 
apache-airflow-providers-docker to 3.0.0 or above

Credit:

Thanks to Kai Zhao of 3H Secruity Team for reporting this


