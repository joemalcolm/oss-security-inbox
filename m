Received: (qmail 17455 invoked by uid 550); 17 Mar 2026 11:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27663 invoked from network); 17 Mar 2026 06:29:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a50ba779-d385-b8f1-7304-ba2b38dcec02@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Mar 2026 06:25:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-28563: Apache Airflow: DAG authorization bypass 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.1.8

Description:

Apache Airflow versions 3.1.0 through 3.1.7 /ui/dependencies endpoint retur=
ns the full DAG dependency graph without filtering by authorized DAG IDs. T=
his allows an authenticated user with only DAG Dependencies permission to e=
numerate DAGs they are not authorized to view.


Users are recommended to upgrade to Apache Airflow 3.1.8 or later, which re=
solves this issue.

Credit:

Masamune - Unit515 OPSWAT (finder)
Shubham Raj (remediation developer)

References:

https://github.com/apache/airflow/pull/62046
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-28563

