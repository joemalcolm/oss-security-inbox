X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/8
Message-ID: <84b0901f-132a-7b01-b926-fe268764dab4@apache.org>
Date: Mon, 09 Nov 2026 06:03:00 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86468: Apache Airflow: CLI argv masking misses Variable values and --conn-extra, persisting secrets in audit logs 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's CLI records its arguments in the audit log but masks secrets by argument position, so some supported command shapes leave secrets in cleartext, for example a trailing `--description` on Variable commands, `--conn-extra`, and the inline `--password` of `airflow keycloak-auth-manager` commands. A user who can read audit events but is denied Variable and Connection access can retrieve those values through the event-log API.

Users of apache-airflow are recommended to upgrade to 3.4.0 or later. Audit-log entries written before the upgrade keep the cleartext values: purge the affected entries and rotate the secrets they contain.

Credit:

OpenSec Intelligence (finder)
hothaot (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72650
https://www.cve.org/CVERecord?id=CVE-2026-50204
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86468

