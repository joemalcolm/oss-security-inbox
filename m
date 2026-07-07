X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/3
Message-ID: <56a8f073-57a7-a8cc-3c2b-0c596939da39@apache.org>
Date: Tue, 07 Jul 2026 08:29:32 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48891: Apache Airflow: /ui/dependencies scheduling graph leaks unreadable Dag identifiers via trigger/sensor dep.source/dep.target 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.0

Description:

A bug in Apache Airflow's `/ui/dependencies` scheduling graph endpoint applied the caller's readable-Dag filter to the top-level serialized Dag key but still emitted referenced Dag IDs through the `dep.source` and `dep.target` fields of trigger / sensor dependency entries. An authenticated UI user with read permission on some Dags could enumerate the identifiers of other Dags they were not authorized to read by inspecting the dependency graph for trigger / sensor references. Affects deployments that rely on per-Dag read scoping to keep Dag identifiers private across teams. This is a residual gap in the fix for CVE-2026-28563, which filtered the top-level Dag key but did not propagate the filter into the trigger / sensor dep-source / dep-target fields. Users who already upgraded for CVE-2026-28563 should additionally upgrade to `apache-airflow` 3.3.0 or later to cover the residual trigger / sensor dependency leak.

Credit:

Mitchell Benjamin / Revamp Studio (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67627
https://www.cve.org/CVERecord?id=CVE-2026-28563
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48891

