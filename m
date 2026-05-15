Received: (qmail 29890 invoked by uid 550); 15 May 2026 19:34:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32438 invoked from network); 15 May 2026 15:08:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Martijn Visser <martijnvisser@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4028a4ad-aa61-dc7e-ca73-f90d94e57d50@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 15:06:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-35194: Apache Flink: Remote code execution via SQL
 injection in code generation 

Severity: critical=20

Affected versions:

- Apache Flink 1.15.0 before 1.20.4,2.0.2,2.1.2,2.2.1

Description:

Code injection in SQL code generation in Apache Flink 1.15.0 through 1.20.x=
 and 2.0.0 through 2.x allows authenticated users with query submission pri=
vileges to execute arbitrary code on TaskManagers via maliciously crafted S=
QL queries. The vulnerability affects JSON functions (1.15.0+) and LIKE exp=
ressions with ESCAPE clauses (1.17.0+). User-controlled strings are interpo=
lated into generated Java code without proper escaping, allowing attackers =
to break out of string literals and inject arbitrary expressions.

Users are recommended to upgrade to either version 1.20.4, 2.0.2, 2.1.2 or =
2.2.1, which fixes this issue.

Credit:

Yaswant Katakam, Confluent InfoSec (finder)

References:

https://flink.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-35194

