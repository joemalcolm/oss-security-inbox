X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/5
Message-ID: <18d377f4-1b89-b06d-f4a2-ede09c8e4c8e@apache.org>
Date: Wed, 12 Aug 2026 13:22:24 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58076: Apache Airflow: Unguarded import_string() of airflow_exc_ser / base_exc_ser exception nodes in BaseSerialization.deserialize enables DAG-author RCE on Scheduler / API Server 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.3.1

Description:

Apache Airflow's serialization layer reconstructed exception nodes by calling `import_string()` on a class name taken from the serialized blob and instantiating it with arguments from the same blob, with no restriction on what could be imported. An operator's `executor_config` reaches that branch, so a Dag author could place a value there that causes an arbitrary callable to be imported and invoked -- for example `subprocess.check_output`, or `builtins.eval` on the `builtins`-prefixed variant. The code runs in the **Scheduler**, which reconstructs serialized Dags in its normal loop with no request involved, and in the **API server**, on any authenticated read of the Dag such as `GET /api/v2/dags/{dag_id}/details`. Both are components the Airflow security model states must never execute Dag-author code, and both hold the metadata database credentials and the JWT signing secret. No non-default configuration is required. This is a **different sink from CVE-2026-33264**, which covered only the trigger branch of the same deserializer: deployments that upgraded in response to that advisory are still affected through the exception branch and must upgrade again. Users are advised to upgrade to apache-airflow 3.3.1 or later, which restricts the imported class to a subclass of `BaseException`.

Credit:

Jan Kahmen (turingpoint), GitHub: @kah-ja (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/68511
https://www.cve.org/CVERecord?id=CVE-2026-33264
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58076

