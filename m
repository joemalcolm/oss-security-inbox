X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/10
Message-ID: <3ab5c86a-6056-addb-d82f-237a4cb4c9e9@apache.org>
Date: Thu, 15 Oct 2026 21:08:04 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94134: Apache Airflow SSH provider, Apache Airflow SFTP provider: SSH hook disables host-key verification by default 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow SSH provider before 7.0.0
- Apache Airflow SFTP provider before 7.0.0

Description:

The Apache Airflow SSH provider hook disables SSH host-key verification by default: unless `host_key` is configured or `no_host_key_check` is explicitly set to false, it accepts any server key. This affects SSH and SFTP connections that rely on the default. An attacker in a machine-in-the-middle position between the worker and the SSH or SFTP server can impersonate the server and capture the credentials or data a task sends.

Users of apache-airflow-providers-ssh and apache-airflow-providers-sftp are recommended to upgrade to apache-airflow-providers-ssh 7.0.0 and apache-airflow-providers-sftp 7.0.0 or later. The deferrable SFTP code paths had the same default and are covered separately by CVE-2026-94135; apache-airflow-providers-sftp 7.0.0 fixes both.

Credit:

Claude Security Scans (tool)
Igor Stepansky, OX Security (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73419
https://www.cve.org/CVERecord?id=CVE-2026-94135
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94134

