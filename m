Received: (qmail 15733 invoked by uid 550); 1 Jun 2026 05:03:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14240 invoked from network); 1 Jun 2026 04:53:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <507d826e-b2be-a994-20e4-f7c4674f75b1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 04:52:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45192: Apache Airflow: Incomplete Redaction of Sensitive
 Fields in Connection Extra API Response 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A bug in the GET `/api/v2/connections/{connection_id}` REST API endpoint in=
 Apache Airflow allowed an authenticated UI/API user with Connection-read p=
ermission to retrieve secrets stored in a Connection's `extra` JSON blob un=
der field names not present in the redaction allowlist (`DEFAULT_SENSITIVE_=
FIELDS`) =E2=80=94 for example, official Slack-provider credential field na=
mes were returned in plaintext. Affects deployments that store credentials =
in Connection `extra` blobs and grant Connection-read access to multiple us=
ers. Users are advised to upgrade to `apache-airflow` 3.2.2 or later. As a =
defense-in-depth mitigation, deployment operators can store sensitive crede=
ntial values in a secret-backend rather than inlined into the Connection's =
`extra` field.

Credit:

Or Sahar, Secure From Scratch (finder)
Jarek Potiuk (@potiuk) (remediation developer)

References:

https://github.com/apache/airflow/pull/66673
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45192

