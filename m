X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/1
Message-ID: <a5a99027-6a8f-580c-a37a-5f92128fa991@apache.org>
Date: Thu, 26 Nov 2026 14:53:03 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120353: Apache Airflow Standard provider, Apache Airflow CNCF Kubernetes provider, Apache Airflow Common SQL provider, Apache Airflow Common Ai provider: Code execution on the worker via Jinja in Dag run conf or task arguments passed to @task.bash and similar TaskFlow decorators 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow Standard provider 0.3.0 before 1.22.0
- Apache Airflow CNCF Kubernetes provider 10.5.0 before 11.0.0
- Apache Airflow Common SQL provider 1.32.0 before 3.0.0
- Apache Airflow Common Ai provider 0.1.0 before 1.2.0

Description:

The Apache Airflow TaskFlow decorators @task.bash, @task.sql, @task.analytics, @task.kubernetes_cmd and the common.ai decorators (@task.llm, @task.agent, @task.llm_sql, @task.llm_branch, @task.llm_file_analysis, @task.llm_schema_compare) rendered Jinja templates a second time after the task runner had already rendered them, so any value copied into env, op_args, op_kwargs or the returned prompt, command or SQL was evaluated as a template on the worker. An attacker who can only trigger a Dag run (for example a user with trigger permission supplying run conf), or who controls text that a Dag passes into one of these decorators as an argument or prompt (for example a ticket or a downloaded document), could run arbitrary commands on the worker and read connection passwords and Variables, in any deployment that uses an affected decorator in a Dag that passes such input through env, parameters or prompt. Users are recommended to upgrade apache-airflow-providers-standard to 1.22.0, apache-airflow-providers-cncf-kubernetes to 11.0.0, apache-airflow-providers-common-sql to 3.0.0 and apache-airflow-providers-common-ai to 1.2.0 or later.

Credit:

Claude Security Scans (tool)
Sonar (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/76244
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120353

