X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/26/1
Message-ID: <bf62b2f3-3a37-779f-93b0-d716a2012150@apache.org>
Date: Fri, 26 May 2023 19:54:52 +0000
From: Elad Kalif <eladkal@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-33234: Apache Airflow CNCF Kubernetes Provider: KubernetesPodOperator RCE via connection configuration 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow CNCF Kubernetes Provider 5.0.0 through 6.1.0

Description:

Arbitrary code execution in Apache Airflow CNCF Kubernetes provider version 5.0.0 allows user to change xcom sidecar image and resources via Airflow connection.

In order to exploit this weakness, a user would already need elevated permissions (Op or Admin) to change the connection object in this manner.  Operators should upgrade to provider version 7.0.0 which has removed the vulnerability.

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-33234

