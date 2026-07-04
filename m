X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/8
Message-ID: <14b44ff8-48f3-c78c-6cc1-6eadc142732f@apache.org>
Date: Sat, 04 Jul 2026 05:07:49 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49297: Apache Airflow Google provider: Path traversal via GCS object names → local/SFTP filesystem (GCSToSFTPOperator + GCSTimeSpanFileTransformOperator) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Google provider (apache-airflow-providers-google) before 22.2.1

Description:

Apache Airflow's Google provider operators `GCSToSFTPOperator` and `GCSTimeSpanFileTransformOperator` joined GCS object names returned by the bucket listing API directly to a destination filesystem path without normalisation or containment check. A user with write access to the source GCS bucket (typically a different trust principal than the DAG author — partner uploads, ingest-only service accounts, public-data buckets) could create an object whose name contains `..` segments and cause the DAG run to write the downloaded blob outside the configured destination (the SFTP `destination_path` for `GCSToSFTPOperator`; the worker-local temp directory for `GCSTimeSpanFileTransformOperator`), enabling overwrite of arbitrary files on the SFTP server or the worker host. Affects deployments that ingest from buckets writable by less-trusted principals. Users are advised to upgrade to `apache-airflow-providers-google` 22.2.1 or later.

Credit:

anonymous (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67667
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49297

