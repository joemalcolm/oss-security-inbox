Received: (qmail 10023 invoked by uid 550); 31 May 2026 11:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16083 invoked from network); 31 May 2026 11:39:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a91aaf9-b571-40c1-1a8c-081e1bda9612@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:39:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40963: Apache Airflow: DAG authorization bypass on
 /ui/structure/structure_data 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.2

Description:

The structure_data endpoint in the Airflow UI returned external dependency =
graph nodes for linked Dags without checking whether the caller had read pe=
rmission on those linked Dags. An authenticated UI/API user authorized for =
one Dag could enumerate linked Dag IDs and dependency metadata for other Da=
gs they were not authorized to read. Affects deployments that rely on per-D=
ag read scoping to keep Dag dependency topology private across teams. Users=
 are advised to upgrade to `apache-airflow` 3.2.2 or later.

Credit:

Masamune - Unit515 OPSWAT (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65342
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40963

