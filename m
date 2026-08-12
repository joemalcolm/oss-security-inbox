X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/14
Message-ID: <42b5e234-647e-fca6-a64a-0aa6886a5731@apache.org>
Date: Wed, 12 Aug 2026 13:52:16 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68970: Apache Airflow: Values of a list-shaped Variable are not masked in task logs and the Rendered Templates UI 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's Task SDK did not mask the contents of a Variable whose JSON value is a list, so secrets stored in that shape appeared in cleartext in task logs and in the Rendered Templates UI. Masking was applied only when the deserialized value was a string or a dict; a list at the top level matched neither and was returned unmasked. Any authenticated user able to read the logs or rendered templates of a task that references such a Variable could recover the values, with no special configuration required. This is the list-shaped counterpart of CVE-2026-59244, whose fix covered the dict case only, so deployments that upgraded in response to that advisory remain affected and must upgrade again. Users are advised to upgrade to apache-airflow 3.3.1 or later.

Credit:

Raphael Zanarelli (@zanarellidev) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70891
https://www.cve.org/CVERecord?id=CVE-2026-59244
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68970

