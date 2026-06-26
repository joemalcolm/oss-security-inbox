X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/1
Message-ID: <140c26a3-a80a-6040-df34-2217dad28515@apache.org>
Date: Fri, 26 Jun 2026 05:18:07 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49486: Apache Airflow FTP provider: FTP Provider does not protect FTPS data channel (missing PROT_P) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FTP provider (apache-airflow-providers-ftp) before 3.15.1

Description:

The Apache Airflow FTP provider's `FTPSHook.get_conn()` created an `ftplib.FTP_TLS` connection but never called `prot_p()`, so although the control channel was TLS-protected the data channel was transmitted in cleartext. Any deployment using `FTPSHook` or `FTPSFileTransmitOperator` to move files over FTPS exposed file contents and credentials-in-transit to a network attacker able to observe the data connection. Upgrade apache-airflow-providers-ftp to `3.15.1` or later, which issues `PROT P` to encrypt the data channel.

Credit:

Andrew Rukin (Arenadata) (finder)
Shubham Raj (remediation developer)

References:

https://github.com/apache/airflow/pull/67946
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49486

