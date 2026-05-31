Received: (qmail 7840 invoked by uid 550); 31 May 2026 12:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7702 invoked from network); 31 May 2026 12:13:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3d34bb0b-3cd0-390a-72a0-d2b29637b546@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:13:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-46764: Apache Airflow: Event Log detail endpoint bypasses
 DAG-scoped event log permission filter 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

The Event Log detail endpoint `GET /api/v2/eventLogs/{event_log_id}` in Apa=
che Airflow fetched audit-log rows directly by numeric ID after only the ge=
neric Audit Log permission check, while the collection endpoint `GET /api/v=
2/eventLogs` applied per-Dag scoping. An authenticated UI/API user with aud=
it-log read permission for one Dag could retrieve audit-log entries for any=
 other Dag by guessing or enumerating the numeric event log ID. Affects dep=
loyments that rely on per-Dag audit-log scoping. Users are advised to upgra=
de to `apache-airflow` 3.2.2 or later.

Credit:

Stoyan Stoyanov Trendafilov (trstoyan), independent security researcher (fi=
nder)
Pierre Jeambrun (@pierrejeambrun) (remediation developer)

References:

https://github.com/apache/airflow/pull/67112
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-46764

