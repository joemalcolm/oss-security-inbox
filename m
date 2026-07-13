X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/3
Message-ID: <12869722-1c2d-8c2f-fdfe-3fb31fb40c81@apache.org>
Date: Mon, 13 Jul 2026 14:17:24 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58065: Apache Airflow Git provider: Git provider hook defaults to StrictHostKeyChecking=no, disabling SSH host-key verification 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Git provider (apache-airflow-providers-git) before 0.4.1

Description:

The Apache Airflow Git provider runs its git-over-SSH operations with `StrictHostKeyChecking=no` by default, disabling SSH host-key verification. An attacker who can intercept the network path between an Airflow worker and the Git server can impersonate the server (man-in-the-middle), capturing the SSH deploy key or injecting malicious repository content. Deployments that use the Git DAG bundle or Git provider to clone over SSH with a deploy key are affected. The fix changes the default to verify host keys; upgrade to apache-airflow-providers-git `0.4.1` or later and configure a `known_hosts` file.

Credit:

Siyang Wu (independent researcher) (finder)
Ephraim Anierobi (remediation developer)

References:

https://github.com/apache/airflow/pull/69103
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58065

