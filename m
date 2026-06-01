Received: (qmail 23744 invoked by uid 550); 1 Jun 2026 19:55:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11480 invoked from network); 1 Jun 2026 18:39:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Julian Hyde <jhyde@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <51539135-781c-8b5f-4243-1ec683f017ce@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 18:39:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-46718: Apache Calcite: A user-controled model can load
 arbitrary classes, leading to code execution 

Severity: moderate=20

Affected versions:

- Apache Calcite (org.apache.calcite:calcite-core) 1.5.0 before 1.42

Description:

Use of Externally-Controlled Input to Select Classes or Code ('Unsafe Refle=
ction') vulnerability in Apache Calcite.

This issue affects Apache Calcite: from 1.5.0 before 1.42.

Users are recommended to upgrade to version 1.42, which fixes the issue.

This issue is being tracked as CALCITE-7532=20

Credit:

pyn3rd (finder)
uname (finder)
4ra1n (finder)

References:

https://calcite.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-46718
https://issues.apache.org/jira/browse/CALCITE-7532

