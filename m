X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/12
Message-ID: <a3e0f313-d81f-242b-1a3c-168c6f00de96@apache.org>
Date: Wed, 12 Aug 2026 13:49:21 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68968: Apache Airflow: Authorization bypass in the Backfill API through conflicting interpretations of the backfill id 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's Backfill API authorized a request against a Dag id supplied by the caller whenever the `backfill_id` path segment failed to parse. The authorization dependency parsed it with `int()` while the route handler parsed it as pydantic's `NonNegativeInt`, which accepts values `int()` rejects (`1.0` coerces to `1`); FastAPI resolves dependencies before endpoint validation, so the two acted on different Dags. An authenticated user holding edit permission on any single Dag could therefore read, pause and cancel backfills belonging to any other Dag, including moving another Dag's queued runs to `failed`. No non-default configuration is required and backfill ids are sequential, so finding a target is trivial. Users are advised to upgrade to apache-airflow 3.3.1 or later, which parses the backfill id with the same type the routes declare.

Credit:

Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70889
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68968

