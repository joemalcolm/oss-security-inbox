Received: (qmail 3437 invoked by uid 550); 16 Apr 2026 16:32:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14331 invoked from network); 16 Apr 2026 13:30:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dfb8ec95-d826-45a1-f879-8b619e3425b1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Apr 2026 13:30:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31987: Apache Airflow: JWT token appearing in logs 

Severity: Moderate=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

JWT Tokens used by tasks were exposed in logs. This could allow UI users to=
 act as Dag Authors.=20
Users are advised to upgrade to Airflow version that contains fix.

Users are recommended to upgrade to version 3.2.0, which fixes this issue.

Credit:

unixengineer (finder)
Jason Imison (finder)
Pineapple (remediation developer)

References:

https://github.com/apache/airflow/pull/62964
https://github.com/apache/airflow/issues/62428
https://github.com/apache/airflow/issues/62773
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-31987

