X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/1
Message-ID: <461b07cf-8117-c048-4eb6-e17c3d573662@apache.org>
Date: Tue, 07 Jul 2026 08:19:19 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-33264: Apache Airflow: DAG author RCE on webserver via unrestricted import_string() in BaseSerialization.deserialize() 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.0

Description:

A bug in `BaseSerialization.deserialize()` allowed unrestricted `import_string()` of attacker-controlled class paths when the Scheduler / API Server loaded a serialized DAG: a DAG author could embed a malicious trigger into a DAG to gain remote code execution on the API Server / Scheduler process, crossing the Airflow security boundary that DAG-author code must never execute in those processes. Users are advised to upgrade to `apache-airflow` 3.3.0 or later. As a defense-in-depth mitigation, deployments where DAG-author trust is limited can restrict the `[core] allowed_deserialization_classes` config to a narrow allowlist.

Credit:

Ziyu Lin (finder)
bugbunny.ai (tool)
intadd (GitHub handle: @intadd) (finder)
K (finder)
Amogh Desai (@amoghrajesh) (remediation developer)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/66002
https://github.com/apache/airflow/pull/68528
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-33264

