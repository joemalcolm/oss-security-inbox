Received: (qmail 25868 invoked by uid 550); 19 May 2026 18:12:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14260 invoked from network); 19 May 2026 18:09:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Vincent Beck <vincbeck@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <df29bdb1-da27-5f0d-fcd8-4d4db69b79e9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 18:08:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42526: Apache Airflow Amazon provider: Prevent
 unauthorized access to team-scoped secrets in AWS Secrets Manager and SSM
 Parameter Store backends 

Severity: low=20

Affected versions:

- Apache Airflow Amazon provider (apache-airflow-providers-amazon) before 9=
.28.0

Description:

In the AWS Secrets Manager and SSM Parameter Store secrets backends of `apa=
che-airflow-providers-amazon` prior to 9.28.0, the team-scoping logic could=
 resolve a `conn_id` containing a `/` (e.g. `"my_team/conn"`) to the same p=
ath as another team's team-scoped secret when the caller had no team contex=
t. A privileged caller without team context could therefore retrieve anothe=
r team's secret by crafting a colliding `conn_id`. Fixed in 9.28.0 by switc=
hing the team-scope separator to `--` and rejecting team-shaped `conn_id`s =
when team context is absent. Affects the experimental multi-tenant teams fe=
ature only. Users are recommended to upgrade to `apache-airflow-providers-a=
mazon` 9.28.0, which fixes the issue.

Credit:

Justin Pakzad (remediation developer)

References:

https://github.com/apache/airflow/pull/65703
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42526

