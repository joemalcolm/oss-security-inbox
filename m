X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/6
Message-ID: <76ec400e-7377-6c51-cb1c-597da5456bc8@apache.org>
Date: Mon, 09 Nov 2026 05:56:26 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76185: Apache Airflow Task SDK: Task SDK SecretCache: non-injective team cache key enables cross-team secret disclosure in multi-team mode 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow Task SDK 1.2.0 before 1.4.0

Description:

Apache Airflow's Task SDK secret cache built its keys from the team name and secret id with unescaped `_` delimiters, so different (team, secret id) pairs could collide. In multi-team deployments a Dag author could read another team's Variable or Connection value by crafting a colliding secret id. Only deployments with both `core.multi_team = True` and `secrets.use_cache = True` are affected.

Users are advised to upgrade to apache-airflow 3.4.0 or later. Deployments that cannot upgrade can set `secrets.use_cache = False`.

Credit:

Nurmuhammad Davronbekov (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72201
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76185

