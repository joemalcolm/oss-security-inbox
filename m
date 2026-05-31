Received: (qmail 11977 invoked by uid 550); 31 May 2026 12:36:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13957 invoked from network); 31 May 2026 12:18:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1e33ee0f-401a-97d9-5fd8-d93ea0998ec7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:18:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49298: Apache Airflow: JWT Token Exposure in
 KubernetesExecutor Command-Line Arguments 

Severity: Moderate=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A bug in Apache Airflow's KubernetesExecutor caused JWT tokens used by work=
er pods to authenticate against the Execution API to be passed to the worke=
r container as command-line arguments visible in the pod spec. An authentic=
ated UI/API user with Kubernetes read-only access to the cluster (e.g. `pod=
s/get` in the Airflow namespace) could harvest the JWT from `kubectl descri=
be pod` output and then call state-mutating Execution API endpoints =E2=80=
=94 triggering Dag runs, clearing runs, reading or writing Variables / Conn=
ections / XComs =E2=80=94 as if they were a running task. Affects deploymen=
ts using the `KubernetesExecutor`. Users are advised to upgrade to `apache-=
airflow` 3.2.2 or later. This is the airflow-core half of the same vulnerab=
ility addressed by [CVE-2026-27173](https://www.cve.org/CVERecord?id=3DCVE-=
2026-27173), which shipped the apache-airflow-providers-cncf-kubernetes sid=
e of the fix. Deployments that already upgraded `apache-airflow-providers-c=
ncf-kubernetes` to 10.17.0 or later per the CVE-2026-27173 advisory should =
additionally upgrade `apache-airflow` to 3.2.2 or later to close the core-s=
ide surface =E2=80=94 the two fixes are complementary, not duplicates.

Credit:

Nikolai Dvoinishnikov (nikdvy@gmail.com) (finder)
Anton Kuznetsov (piratusxp@gmail.com) (finder)
Anish Giri (remediation developer)

References:

https://github.com/apache/airflow/pull/60108
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-49298

