X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/7
Message-ID: <c4b978c5-7692-8b73-b4ef-3650fc2600f5@apache.org>
Date: Wed, 12 Aug 2026 13:23:58 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59244: Apache Airflow: Secrets masker: `var.json` Variable values not masked in the Rendered Templates UI 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's secrets masker did not mask `var.json` Variable values whose value is a dict in the Rendered Templates UI — the dict value failed an `isinstance(str)` guard — so a secret stored as a JSON Variable and referenced in a template via `var.json` was displayed in cleartext to any user with access to that task's Rendered Templates view. Users are advised to upgrade to apache-airflow 3.3.1 or later, which masks nested Variable values regardless of type.

Credit:

Juan Pablo Guereca (@jpgerek) (finder)
Juan Pablo Guereca (@jpgerek) (remediation developer)

References:

https://github.com/apache/airflow/pull/68975
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59244

