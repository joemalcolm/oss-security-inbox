X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/24/3
Message-ID: <e22399f1-15c2-da7b-5786-1368aaf87a4d@apache.org>
Date: Thu, 24 Feb 2022 18:01:16 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-24288: Apache Airflow: RCE in example DAGs 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

In Apache Airflow, prior to version 2.2.4, some example DAGs did not properly sanitize user-provided params, making them susceptible to OS Command Injection from the web UI.

Mitigation:

This can be mitigated by ensuring `[core] load_examples` is set to `False`.

Credit:

The Apache Airflow PMC would like to thank Kai Zhao of the TToU Security Team for reporting this issue.

