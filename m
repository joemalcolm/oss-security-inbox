Received: (qmail 26613 invoked by uid 550); 31 May 2026 12:35:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7964 invoked from network); 31 May 2026 11:54:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cc502174-f43c-fc18-338f-272d24b9d481@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:54:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42360: Apache Airflow: Rendered template truncation
 bypasses nested sensitive-key masking 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A bug in Apache Airflow's rendered-template field handling caused nested se=
nsitive-key masking (e.g. nested `password` / `token` / `secret` / `api_key=
` keys inside a JSON template structure) to be bypassed when the rendered f=
ield exceeded `[core] max_templated_field_length`: Airflow stringified the =
structure before redaction, losing the nested key context, and persisted th=
e plaintext value into `rendered_fields`. An authenticated UI/API user with=
 permission to read rendered template fields could harvest secret values in=
tended to be masked. Affects deployments where Dag authors pass structured =
JSON to operators with nested sensitive keys. This is a variant of `CWE-200=
` previously addressed for the user-registered `mask_secret()` patterns in =
CVE-2025-68438; that fix did not cover the nested sensitive-keyword allowli=
st. Users who already upgraded for CVE-2025-68438 should additionally upgra=
de to `apache-airflow` 3.2.2 or later to cover the nested-key path.

Credit:

Vincent55 (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65906
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42360

