X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/15
Message-ID: <f1c5a816-45db-474c-8aa9-a22e62c192c1@apache.org>
Date: Tue, 15 Sep 2026 18:28:19 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86792: Apache Airflow Apache Kafka provider: Connection-editor remote code execution on the Scheduler via Kafka connection callback configuration 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Apache Kafka provider (apache-airflow-providers-apache-kafka) 1.15.0 before 2.0.0

Description:

Apache Airflow Apache Kafka provider versions 1.15.0 before 2.0.0 resolve dotted-path strings found in a Kafka connection's `extra` field into Python callables via `import_string`, with no allowlist, and hand them to the confluent-kafka client which invokes them. Deployments that have enabled the Kafka event producer — `dag_run_events_enabled` or `task_instance_events_enabled`, both disabled by default — build that client inside the scheduler process, so a user whose only privilege is editing Airflow connections gains arbitrary code execution in the control plane; the Airflow security model limits connection-configuration users to code execution on workers, not the scheduler. Deployments using Google Managed Kafka are not affected, because that code path overwrites any user-supplied `oauth_cb`; plain brokers and Amazon MSK are exposed. Users are recommended to upgrade to apache-airflow-providers-apache-kafka 2.0.0 or later, which adds an allowlist configuration option for connection-string callbacks.

Credit:

Claude Security Scans (tool)
Christos Bisias (remediation developer)

References:

https://github.com/apache/airflow/pull/72208
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86792

