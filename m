Received: (qmail 32305 invoked by uid 550); 8 Nov 2024 16:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30509 invoked from network); 8 Nov 2024 14:22:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c5ae0a7e-d63d-1a12-e0a3-eccf21eb5f1e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 Nov 2024 14:19:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-50378: Apache Airflow: Secrets not masked in UI when
 sensitive variables are set via Airflow cli 

Severity: low

Affected versions:

- Apache Airflow before 2.10.3

Description:

Airflow versions before 2.10.3 have a vulnerability that allows authenticat=
ed users with audit log access to see sensitive values in audit logs which =
they should not see.=C2=A0When sensitive variables were set via airflow CLI=
, values of those variables appeared in the audit log and were stored unenc=
rypted in the Airflow database. While this risk is limited to users with au=
dit log access, it is recommended to upgrade to Airflow 2.10.3 or a later v=
ersion, which addresses this issue. Users who previously used the CLI to se=
t secret variables should manually delete entries with those variables from=
 the log table.

Credit:

Saurabh Banawar (finder)
Shubham Raj (remediation developer)

References:

https://github.com/apache/airflow/pull/43123
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-50378

