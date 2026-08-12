X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/9
Message-ID: <df378c3e-342c-dd79-db4c-881eacf53b3a@apache.org>
Date: Wed, 12 Aug 2026 13:43:31 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67260: Apache Airflow: DAG-author remote code execution on the Scheduler via awaiting_input next_kwargs deserialization 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) 3.3.0 before 3.3.1

Description:

Apache Airflow 3.3.0 moved human-in-the-loop tasks from the triggerer to a new `awaiting_input` task state swept by the scheduler. That sweep deserializes the task instance's `next_kwargs` without an allow-list, so a Dag author — who controls that value through the task execution API — can cause an arbitrary module import and object instantiation inside the scheduler process, or terminate the scheduler job. No non-default configuration is required: the sweep runs unconditionally every 15 seconds, and the default `allowed_deserialization_classes` setting does not cover this code path. Versions before 3.3.0 are not affected, because human-in-the-loop tasks deferred onto the triggerer instead. This is a different code path from CVE-2026-58076, which covers the same unguarded exception-node deserialization reached elsewhere — deployments that applied that fix must upgrade for this issue as well. Users are advised to upgrade to apache-airflow 3.3.1 or later.

Credit:

Erik Villegas (GitHub: @erik-451) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70685
https://www.cve.org/CVERecord?id=CVE-2026-58076
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67260

