Received: (qmail 24304 invoked by uid 550); 24 Feb 2026 16:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5955 invoked from network); 24 Feb 2026 09:47:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fb095f41-42d9-84eb-f16f-6984258ffa8a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 09:45:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23984: Apache Superset: SQLLab Read-Only Bypass on
 PostgreSQL 

Severity:=20

Affected versions:

- Apache Superset 0.0.0 before 6.0.0

Description:

An Improper Input Validation vulnerability exists in Apache Superset that a=
llows an authenticated user with SQLLab access to bypass the read-only veri=
fication check when using a PostgreSQL database connection.
While the system effectively blocks standard Data Manipulation Language (DM=
L) statements (e.g., INSERT, UPDATE, DELETE) on read-only connections, it f=
ails to detect them in specially crafted SQL statements.

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue.

Credit:

Trung =C4=90=E1=BB=A9c L=C3=AA (reporter)
Beto de Almeida (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-23984

