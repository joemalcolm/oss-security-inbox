X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/8
Message-ID: <d3ec642c-4549-b380-fc88-4c222bb4a916@apache.org>
Date: Tue, 09 Jun 2026 07:37:45 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49818: Apache Airflow Samba provider: Path traversal in GCSToSambaOperator via GCS object names 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Samba provider (apache-airflow-providers-samba) before 4.12.6

Description:

The Apache Airflow Samba provider's `GCSToSambaOperator` joined GCS object names to the SMB destination path without a containment check, so an object named with `../` segments resolved a write path outside the configured `destination_path`. An attacker able to write objects into the source GCS bucket — typically an external data producer distinct from the trusted DAG author — could write files to arbitrary locations on the Samba target when the operator ran. Upgrade apache-airflow-providers-samba to 4.12.6 or later, which validates the resolved destination stays within `destination_path`.

Credit:

secuholic (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67857
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49818

