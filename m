X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/9
Message-ID: <ed72ed34-1c50-c0c7-af27-19050dd1a94a@apache.org>
Date: Thu, 15 Oct 2026 21:12:30 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92228: Apache Airflow Keycloak provider: Keycloak multi-team provisioning grants every team role global audit-log read 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow Keycloak provider before 0.11.1

Description:

The Apache Airflow Keycloak provider's multi-team provisioning (`_attach_team_permissions`) granted every team role global read access to audit logs. Deployments that enable multi-team mode with the Keycloak auth manager and provision teams through it are affected: any authenticated member of one team could read other teams' audit events through the UI or the event-log API.

Users of apache-airflow-providers-keycloak are recommended to upgrade to apache-airflow-providers-keycloak 0.11.1 or later.

Credit:

OpenSec Intelligence (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73696
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92228

