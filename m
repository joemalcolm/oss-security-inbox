Received: (qmail 24033 invoked by uid 550); 31 May 2026 11:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17411 invoked from network); 31 May 2026 11:51:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ba8a1e63-9139-8c52-3592-7c3bfb3969fa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:47:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41084: Apache Airflow: API authorization bypass: bulk
 TaskInstances allows cross-DAG mutation 

Severity: medium=20

Affected versions:

- Apache Airflow (apache-airflow) 3.2.0 before 3.2.2

Description:

A bug in Apache Airflow's bulk Task Instances API (`PATCH/DELETE /api/v2/da=
gs/{dag_id}/dagRuns/{dag_run_id}/taskInstances`) evaluated authorization ag=
ainst the `dag_id` resolved from the URL path while operating on the `dag_i=
d` / `dag_run_id` extracted from request-body entity fields. An authenticat=
ed UI/API user with edit permission on one Dag could mutate Task Instance s=
tate in any other Dag by keeping the authorized Dag's ID in the URL path an=
d naming the target Dag's IDs in the request body entities. Affects deploym=
ents that rely on per-Dag edit-scope to keep Task Instance state isolated b=
etween teams. Users are advised to upgrade to `apache-airflow` 3.2.2 or lat=
er.

Credit:

Pirikara (finder)
GPK (gopidesupavan) (remediation developer)

References:

https://github.com/apache/airflow/pull/64288
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41084

