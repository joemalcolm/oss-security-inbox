Received: (qmail 32589 invoked by uid 550); 12 Dec 2024 15:55:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1332 invoked from network); 12 Dec 2024 14:10:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <14c22304-1c6a-d3d8-312d-d5c5975fb290@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Dec 2024 14:09:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-55633: Apache Superset: SQLLab Improper readonly query
 validation allows unauthorized write access 

Affected versions:

- Apache Superset before 4.1.0

Description:

Improper Authorization vulnerability in Apache Superset. On Postgres analyt=
ic databases an attacker with SQLLab access can=C2=A0craft a specially desi=
gned SQL DML statement=C2=A0that is Incorrectly identified as a read-only q=
uery, enabling its execution. Non postgres analytics database connections a=
nd postgres analytics database connections set with a readonly user (advise=
d) are not vulnerable.=C2=A0

This issue affects Apache Superset: before 4.1.0.

Users are recommended to upgrade to version 4.1.0, which fixes the issue.

Credit:

Beto de Almeida (remediation developer)
Daniel Gaspar (coordinator)
James Ford (Striveworks) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-55633

