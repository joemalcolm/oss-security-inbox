Received: (qmail 5730 invoked by uid 550); 31 May 2026 12:35:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1342 invoked from network); 31 May 2026 12:12:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <83dcec32-7337-8845-0d86-c26b2a06e36f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:11:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45426: Apache Airflow: Log server JWT authorization
 bypass via Python lstrip() character stripping allows cross-Dag log access
 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.2

Description:

Exploitation requires the attacker to already be an authenticated Airflow w=
orker holding a valid Log-server JWT issued for at least one Dag. Apache Ai=
rflow's Log server authorized JWT tokens against Dag IDs by applying Python=
's `str.lstrip()` to the requested path segment when verifying the JWT's `s=
ub` claim. `str.lstrip()` strips any of a *set* of characters from the left=
 (not a prefix), so a JWT issued for a Dag named e.g. `dag_a` would authori=
ze log access to any other Dag whose name began with any subset of the char=
acters `{d, a, g, _}` (e.g. `dag_attacker`, `aaaa_target`, `_dag_secret`). =
Such an authenticated worker could enumerate and read worker logs of other =
Dags whose names happened to share that character-class prefix, leaking tas=
k output and error traces beyond the documented per-Dag isolation boundary.=
 Affects deployments relying on per-Dag log-access scoping (multi-team, sha=
red-executor, shared-worker topologies). Users are advised to upgrade to `a=
pache-airflow` 3.2.2 or later.

Credit:

Michael Lip (theluckystrike) (finder)
Jarek Potiuk (@potiuk) (remediation developer)

References:

https://github.com/apache/airflow/pull/66749
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45426

