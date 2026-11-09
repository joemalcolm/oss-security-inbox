X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/19
Message-ID: <9c27f753-d578-cc10-378e-22b8d850d355@apache.org>
Date: Mon, 09 Nov 2026 06:06:32 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113504: Apache Airflow: Secrets masker: pattern-based masking bounded at depth 5 returns deeply-nested registered secrets in cleartext 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's secrets masker stopped descending into nested structures after five levels, so a secret registered with the masker — for example a Connection password or a Variable value — that appeared more than five containers deep under non-sensitive keys was shown in cleartext in task logs and rendered template fields. A user who can read task logs or rendered templates, but is not meant to see those secrets, could read them. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Gjoko Krstic, Zero Science Lab (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73793
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-113504

