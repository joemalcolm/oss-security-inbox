Received: (qmail 9664 invoked by uid 550); 17 Mar 2026 11:55:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13927 invoked from network); 17 Mar 2026 06:25:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <61713cd4-b36f-730a-689a-08e309834f32@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Mar 2026 06:25:12 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2026-26929=3A_Apache_Airflow=3A_Wild?=
 =?UTF-8?Q?card_DagVersion_Listing_Bypasses_Per?=
 =?UTF-8?Q?=E2=80=91DAG_RBAC_and_Leaks_Metadata=20?=

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.1.8

Description:

Apache Airflow versions 3.0.0 through 3.1.7=C2=A0FastAPI DagVersion listing=
 API does not apply per-DAG authorization filtering when the request is mad=
e with dag_id set to "~" (wildcard for all DAGs). As a result, version meta=
data of DAGs that the requester is not authorized to access is returned.


Users are recommended to upgrade to Apache Airflow 3.1.8 or later, which re=
solves this issue.

Credit:

Pierre Jeambrun (remediation developer)

References:

https://github.com/apache/airflow/pull/61675
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-26929

