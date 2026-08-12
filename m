X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/6
Message-ID: <03fd03d6-285c-de38-caf0-eb23a82c553c@apache.org>
Date: Wed, 12 Aug 2026 13:26:17 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59242: Apache Airflow: Arbitrary airflow.* class instantiation on the API server via the XCom deserialize endpoint 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's XCom `GET /api/v2/{...}/xcomEntries/{key}?deserialize=true` endpoint passed a string-literal payload through `BaseXCom.deserialize_value` without the `_check_forbidden_xcom_keys` guard, allowing an authenticated API user with XCom write-and-read access to instantiate arbitrary `airflow.*` classes on the API server (CWE-502). An authenticated user who can write an XCom value and then read it back with `deserialize=true` triggers the unsafe instantiation. Users are advised to upgrade to apache-airflow 3.3.1 or later, which rejects reserved XCom serialization keys submitted as JSON string literals.

Credit:

localhost-detect (@localhost-detect) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/69378
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59242

