Received: (qmail 17848 invoked by uid 550); 24 Feb 2026 16:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3294 invoked from network); 24 Feb 2026 09:24:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e563b54-ed63-fcae-9271-cd1c2807f2fc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 09:23:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23969: Apache Superset: Exposure of Sensitive Information
 via Incomplete ClickHouse Function Filtering 

Severity:=20

Affected versions:

- Apache Superset 0.0.0 before 4.1.2

Description:

Apache Superset utilizes a configurable dictionary, DISALLOWED_SQL_FUNCTION=
S, to restrict the execution of potentially sensitive SQL functions within =
SQL Lab and charts. While this feature included restrictions for engines li=
ke PostgreSQL, a vulnerability was reported where the default list for the =
ClickHouse engine was incomplete.

This issue affects Apache Superset: before 4.1.2.

Users are recommended to upgrade to version 4.1.2, which fixes the issue.

Credit:

Saif Salah (reporter)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-23969

