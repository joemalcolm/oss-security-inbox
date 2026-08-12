X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/4
Message-ID: <63bbf1ed-70e3-c6cf-1e37-8f7d096ee024@apache.org>
Date: Wed, 12 Aug 2026 13:27:44 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54183: Apache Airflow: Airflow Variables were not masked in the UI for authenticated users 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's secrets masker hides values stored under sensitive key names when they are displayed in the UI. The masker's recursion-depth limit did not descend into values nested inside a list, tuple, or set beyond that limit, so an Airflow Variable holding such a deeply-nested value was shown unmasked in the Variables UI. The exposure is limited to the UI: any authenticated user who can see the Variable in the UI can already read its full value through the Variables REST API, so this does not disclose data the user could not otherwise obtain — the masking is a shoulder-surfing defense for the UI, not an access-control boundary.

This is an incomplete-fix follow-up to CVE-2026-42358, whose fix made only the dictionary walk unbounded; lists, tuples, and sets beyond the depth limit remained unmasked in the UI. Deployments that applied the CVE-2026-42358 fix should also upgrade to address this residual case. Upgrade to apache-airflow 3.3.1 or later.

Credit:

Omkhar Arasaratnam (@omkhar) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/68422
https://www.cve.org/CVERecord?id=CVE-2026-42358
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54183

