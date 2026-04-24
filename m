X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/24/3
Message-ID: <35e1627d-6116-3625-09e0-8d5a72b5f76d@apache.org>
Date: Fri, 24 Apr 2026 12:19:59 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-38743: Apache Airflow: Dags endpoint might provide access to otherwise inaccessible entities 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.1

Description:

The authenticated /ui/dags endpoint did not enforce per-DAG access control on embedded Human-in-the-Loop (HITL) and TaskInstance records: a logged-in Airflow user with read access to at least one DAG could retrieve HITL prompts (including their request parameters) and full TaskInstance details for DAGs outside their authorized scope. Because HITL prompts and TaskInstance fields routinely carry operator parameters and free-form context attached to a task, the leak widens visibility of DAG-run data beyond the intended per-DAG RBAC boundary for every authenticated user.

Users are recommended to upgrade to version 3.2.1 , which fixes this issue.

Credit:

Jed Cunningham (finder)
Kevin Yang (remediation developer)

References:

https://github.com/apache/airflow/pull/64822
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-38743

