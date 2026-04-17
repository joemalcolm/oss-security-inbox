Received: (qmail 7491 invoked by uid 550); 17 Apr 2026 15:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26245 invoked from network); 17 Apr 2026 10:18:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8dc87e1d-580e-c0d1-664c-79e7aca24b2c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 10:15:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-30912: Apache Airflow: Exposing stack trace in case of
 constraint error 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.0

Description:

In case of SQL errors, exception/stack trace of errors was exposed in API e=
ven if "api/expose_stack_traces" was set to false. That could lead to expos=
ing additional information to potential attacker. Users are recommended to =
upgrade to Apache Airflow 3.2.0, which fixes the issue.

Credit:

Masamune - Unit515 OPSWAT (finder)
Jason(Zhe-You) Liu (remediation developer)

References:

https://github.com/apache/airflow/pull/63028
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-30912

