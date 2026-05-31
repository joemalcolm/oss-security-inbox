Received: (qmail 13444 invoked by uid 550); 31 May 2026 11:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24456 invoked from network); 31 May 2026 11:40:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f13c068c-e19a-68e3-25f7-d2c89ac775e2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:40:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41014: Apache Airflow: per-DAG RBAC bypass on
 /ui/partitioned_dag_runs endpoints 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.2.0 before 3.2.2

Description:

The partitioned_dag_runs endpoints in the Airflow UI enforced only asset-le=
vel access control, not per-Dag authorization. An authenticated UI/API user=
 with global Asset:read permission could enumerate partition run state, sch=
edule configuration, and asset wiring for Dags they were not authorized to =
read. Affects deployments that rely on per-Dag read scoping while granting =
users broader Asset access. Users are advised to upgrade to `apache-airflow=
` 3.2.2 or later.

Credit:

Yalguun Tumenkhuu (fg0x0) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65344
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41014

