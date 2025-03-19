Received: (qmail 30644 invoked by uid 550); 19 Mar 2025 17:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7668 invoked from network); 19 Mar 2025 08:21:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eb6edffa-c363-7414-3e86-4090998382ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Mar 2025 08:20:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27018: Apache Airflow MySQL Provider: SQL injection in
 MySQL provider core function 

Severity: low

Affected versions:

- Apache Airflow MySQL Provider before 6.2.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Airflow MySQL Provider.

When user triggered a DAG with dump_sql or load_sql functions they could pa=
ss a table parameter from a UI, that could cause SQL injection by running S=
QL that was not intended.
It could lead to data corruption, modification and others.
This issue affects Apache Airflow MySQL Provider: before 6.2.0.

Users are recommended to upgrade to version 6.2.0, which fixes the issue.

Credit:

Vincent55 (DEVCORE Internship Program) (finder)

References:

https://github.com/apache/airflow/pull/47254
https://github.com/apache/airflow/pull/47255
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27018

