X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/4
Message-ID: <eeeaae98-f8bf-db89-e68b-1bab4527e81a@apache.org>
Date: Mon, 13 Jul 2026 14:18:49 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59245: Apache Airflow FAB provider: FAB auth manager: a DAG named "DAGs" hijacks the global all-DAGs permission (access_control privilege escalation via resource_name() collision) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) before 3.7.2

Description:

In the Apache Airflow FAB auth manager, a DAG whose `dag_id` is `DAGs` collided with the global all-DAGs permission resource name produced by `resource_name()`, so a user granted per-DAG `access_control` on that one DAG was silently granted the global all-DAGs permission (privilege escalation). The escalation triggers when a DAG named `DAGs` exists and a lower-privileged user is given per-DAG access to it, granting that user read/edit access to every DAG. Users are advised to upgrade to `apache-airflow-providers-fab` 3.7.2 or later, which disambiguates the resource-name collision.

Credit:

Tran Hieu (h1tr3xnull) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/69106
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59245

