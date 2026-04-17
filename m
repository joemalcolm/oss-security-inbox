Received: (qmail 11589 invoked by uid 550); 17 Apr 2026 15:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7983 invoked from network); 17 Apr 2026 10:24:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4bdbd943-e2cf-a927-40ab-7a4be6c01287@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 10:24:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-32690: Apache Airflow: 3.x - Nested Variable Secret
 Values Bypass Redaction via max_depth=1 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

Secrets in Variables saved as JSON dictionaries were not properly redacted =
- in case thee variables were retrieved by the user the secrets stored as n=
ested fields were not masked.

If you do not store variables with sensitive values in JSON form, you are n=
ot affected. Otherwise please upgrade to Apache Airflow 3.2.0 that has the =
fix implemented

Credit:

Nguyen Anh Binh [IA Lab =E2=80=93 FPT University] (finder)
Kevin Yang (remediation developer)

References:

https://github.com/apache/airflow/pull/63480
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-32690

