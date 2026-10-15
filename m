X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/11
Message-ID: <f1401db5-ae08-2ad9-614a-596e73afda38@apache.org>
Date: Thu, 15 Oct 2026 21:07:03 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94135: Apache Airflow SFTP provider: Async SFTP hook disables host-key verification by default 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow SFTP provider before 7.0.0

Description:

The Apache Airflow SFTP provider's deferrable code paths (`SFTPTrigger`, `SFTPHookAsync`, `SFTPClientPool`) disable SSH host-key verification by default unless the connection explicitly sets `no_host_key_check` to false. Deployments that run SFTP sensors or operators in deferrable mode are affected. An attacker in a machine-in-the-middle position between the triggerer and the SFTP server can impersonate the server and capture the credentials or data exchanged.

Users of apache-airflow-providers-sftp are recommended to upgrade to apache-airflow-providers-sftp 7.0.0 or later. This is a separate defect from CVE-2026-94134 (the synchronous SSH hook default, which also affects the SFTP hook); users who applied the fix for one also need this release for the other - apache-airflow-providers-sftp 7.0.0 fixes both.

Credit:

Claude Security Scans (tool)
Igor Stepansky, OX Security (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73419
https://www.cve.org/CVERecord?id=CVE-2026-94134
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94135

