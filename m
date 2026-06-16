X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/3
Message-ID: <450ddad4-fedd-7a27-7470-7c4f649446a3@apache.org>
Date: Tue, 16 Jun 2026 12:15:31 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50203: Apache Airflow SFTP provider: Path traversal in SFTPHook.retrieve_directory allows local file write outside the destination directory via malicious server-supplied directory-entry names 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow SFTP provider (apache-airflow-providers-sftp) before 5.8.1

Description:

A path traversal in the SFTP provider (`SFTPHook.retrieve_directory` / `SFTPOperator(operation=get)`) let a malicious or compromised remote SFTP server write files outside the configured local destination directory via crafted directory-entry names. No Airflow account is required — the attack surface is any deployment downloading directories from an untrusted SFTP server. Upgrade `apache-airflow-providers-sftp` to 5.8.1 or later.

Credit:

secuholic (finder)
Venkatraman Kumar (r3dw0lfsec), Securin (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67985
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50203

