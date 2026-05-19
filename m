Received: (qmail 24176 invoked by uid 550); 19 May 2026 18:12:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1867 invoked from network); 19 May 2026 18:07:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Vincent Beck <vincbeck@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <70e68108-a8b7-d0ea-8735-f6c2f7ae0aca@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 18:06:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-27173: Apache Airflow CNCF Kubernetes provider: JWT Token
 Exposure in KubernetesExecutor Command-Line Arguments 

Severity: Moderate=20

Affected versions:

- Apache Airflow CNCF Kubernetes provider (apache-airflow-providers-cncf-ku=
bernetes) before 10.17.0

Description:

JWT tokens that were used by workers in Kubernetes Executors have been expo=
sed to users who had read only access to Kuberentes Pods. This could allow =
users with just read-only access to perform actions that were only availabl=
e to running tasks via Task SDK and potentially allow to modify state of Ai=
rflow Database for tasks.

Credit:

Nikolai Dvoinishnikov, Welltory (finder)
Anton Kuznetsov, Welltory (finder)
Anish Giri (remediation developer)

References:

https://github.com/apache/airflow/pull/60108
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-27173

