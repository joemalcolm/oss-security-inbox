Received: (qmail 15806 invoked by uid 550); 17 Apr 2026 15:54:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9728 invoked from network); 17 Apr 2026 10:32:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c485a7ad-e053-59d8-c6f3-72ff6c404979@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 10:31:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-32228: Apache Airflow: Users with asset materialization
 permisssions could trigger Dags they had no access to 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

UI / API User with asset materialize permission could trigger dags they had=
 no access to.
Users are advised to migrate to Airflow version 3.2.0 that fixes the issue.

Credit:

Masamune - Unit515 OPSWAT (finder)
Ahmad Abuzaid (finder)
Pierre Jeambrun (remediation developer)

References:

https://github.com/apache/airflow/pull/63338
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-32228

