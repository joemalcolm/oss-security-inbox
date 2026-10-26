X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/20
Message-ID: <e4c72c38-1842-b8ee-d4c8-b0b23c0e674e@apache.org>
Date: Mon, 26 Oct 2026 22:29:59 +0000
From: Hussein Awala <husseinawala@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111422: Apache Airflow SSH provider: SSHRemoteJobOperator: `environment` values are executed as shell on the remote host 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow SSH provider 4.3.0 before 7.0.1

Description:

In apache-airflow-providers-ssh before 7.0.1, SSHRemoteJobOperator quoted the values of its templated `environment` parameter only once, although they are placed inside an already-quoted wrapper script, so shell syntax such as `$(...)` in a value was executed on the remote SSH host. In a Dag that passes trigger-time input such as `params` or `dag_run.conf` into `environment`, a user who can trigger that Dag but cannot author Dags could run arbitrary commands on the remote host as the SSH connection's user. Users are advised to upgrade apache-airflow-providers-ssh to 7.0.1 or later.

Credit:

Enrico Maria Carmona, Serasoft S.r.l. (finder)
Kaxil Naik (remediation developer)

References:

https://github.com/apache/airflow/pull/74810
https://airflow.apache.org/docs/apache-airflow-providers-ssh/7.0.1/changelog.html
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111422

