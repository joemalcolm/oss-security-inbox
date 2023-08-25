X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/08/25/3
Message-ID: <8e892059-fa27-7086-13eb-6779d073dc58@apache.org>
Date: Fri, 25 Aug 2023 17:24:51 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-40195: Apache Airflow Spark Provider Deserialization Vulnerability RCE 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow Spark Provider before 4.1.3

Description:

Deserialization of Untrusted Data, Inclusion of Functionality from Untrusted Control Sphere vulnerability in Apache Software Foundation Apache Airflow Spark Provider.

When the Apache Spark provider is installed on an Airflow deployment, an Airflow user that is authorized to configure Spark hooks can effectively run arbitrary code on the Airflow node by pointing it at a malicious Spark server. Prior to version 4.1.3, this was not called out in the documentation explicitly, so it is possible that administrators provided authorizations to configure Spark hooks without taking this into account. We recommend administrators to review their configurations to make sure the authorization to configure Spark hooks is only provided to fully trusted users.

To view the warning in the docs please visit  https://airflow.apache.org/docs/apache-airflow-providers-apache-spark/4.1.3/connections/spark.html

Credit:

happyhacking-k (finder)

References:

https://github.com/apache/airflow/pull/33233
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-40195

