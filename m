Received: (qmail 9686 invoked by uid 550); 14 Aug 2025 12:34:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26408 invoked from network); 14 Aug 2025 11:42:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7a0cfd0a-17fa-f2aa-00ed-1664b5f1701c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Aug 2025 11:41:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55674: Apache Superset: Improper SQL authorisation, parse
 not checking for specific engine functions 

Severity:=20

Affected versions:

- Apache Superset before 5.0.0

Description:

A bypass of the DISALLOWED_SQL_FUNCTIONS security feature in Apache Superse=
t allows for the execution of blocked SQL functions. An attacker can use a =
special inline block to circumvent the denylist. This allows a user with SQ=
L Lab access to execute functions that were intended to be disabled, leadin=
g to the disclosure of sensitive database information like the software ver=
sion.

This issue affects Apache Superset: before 5.0.0.

Users are recommended to upgrade to version 5.0.0, which fixes the issue.

Credit:

Pedro Sousa (coordinator)
Beto Dealmeida (remediation developer)
d47sec from NCS Viet Nam (reporter)

References:

https://www.cve.org/CVERecord?id=3DCVE-2025-55674

