X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/12
Message-ID: <01f79a15-ba62-59ae-5f83-c27811414754@apache.org>
Date: Tue, 29 Sep 2026 08:51:05 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-81930: Apache Airflow Snowflake provider: Unvalidated account field redirects SQL API bearer token off-domain 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Snowflake provider before 6.18.0

Description:

Apache Airflow's Snowflake provider did not validate the connection's `account` and `region` fields before interpolating them into request URLs. The SQL API endpoint is built as `https://{account}.snowflakecomputing.com/api/v2/statements`, so an `account` value containing `/`, `?` or `#` demotes the intended domain to a path, query or fragment and leaves the attacker in control of the request host.

The provider sends that request with an `Authorization: Bearer` header carrying a JWT minted from the connection's private key, or the configured OAuth or programmatic access token. A user who can edit the Snowflake connection but cannot read its secrets — Airflow gives connection-configuration users write-only access to stored credentials, and a `private_key_file` lives on the worker rather than in the connection — can therefore cause a valid token for the account to be delivered to a host of their choosing and replay it against the genuine Snowflake endpoint. No Dag-authoring ability is required: the attacker edits the connection and waits for an existing Dag to use it. The same unvalidated value was also used to build the OAuth token-request URL and the Cortex Agent base URL.

Affects deployments where Snowflake connections are editable by users who are not trusted with the connection's credentials. Users are advised to upgrade to `apache-airflow-providers-snowflake` `6.18.0` or later, which rejects `account` and `region` values containing anything other than letters, digits, `.`, `_` and `-` in every URL the provider builds from them.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72174
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-81930

