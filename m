Received: (qmail 16374 invoked by uid 550); 4 Apr 2025 19:32:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14303 invoked from network); 4 Apr 2025 18:54:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c67ed115-d310-e44c-365c-f82f452d2e1a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Apr 2025 18:54:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30473: Apache Airflow Common SQL Provider: Remote Code
 Execution via Sql Injection 

Severity: low

Affected versions:

- Apache Airflow Common SQL Provider before 1.24.1

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Airflow Common SQL Provider.

When using the partition clause in SQLTableCheckOperator as parameter (whic=
h was a recommended pattern), Authenticated UI User could inject arbitrary =
SQL command when triggering DAG exposing partition_clause to the user.
This allowed the DAG Triggering user to escalate privileges to execute thos=
e arbitrary commands which they normally would not have.


This issue affects Apache Airflow Common SQL Provider: before 1.24.1.

Users are recommended to upgrade to version 1.24.1, which fixes the issue.

Credit:

nxczje (reporter)

References:

https://github.com/apache/airflow/pull/48098
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30473

