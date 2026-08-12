X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/10
Message-ID: <b6277264-9900-a76a-9090-881651c1347c@apache.org>
Date: Wed, 12 Aug 2026 13:45:53 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67587: Apache Airflow: DAG-author remote code execution on the Scheduler via a Serde `Callback` deserialization gadget 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) 3.3.0 before 3.3.1

Description:

Apache Airflow's Task SDK rebuilt a `Callback` object from serialized data by re-running its constructor, which imports the module named by the stored callback path. Because `SyncCallback` is itself an Airflow class it passes the default `allowed_deserialization_classes` allow-list, so tightening that setting does not help. A Dag author — who controls a task instance's `next_kwargs` through the task execution API — can therefore cause an arbitrary module to be imported inside the scheduler process, when the scheduler's `awaiting_input` timeout sweep deserializes that value. No non-default configuration is required; the sweep runs unconditionally. Versions before 3.3.0 are not affected: the class existed, but the scheduler sweep that reaches it did not. This is a separate code path from CVE-2026-58076 and CVE-2026-67260, which cover different gadgets reaching deserialization — applying either of those fixes does not address this one. Users are advised to upgrade to apache-airflow 3.3.1 or later.

Credit:

Nguyen Van Hiep (@hypnguyen1209), MBBank (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70704
https://www.cve.org/CVERecord?id=CVE-2026-58076
https://www.cve.org/CVERecord?id=CVE-2026-67260
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67587

