Received: (qmail 24270 invoked by uid 550); 12 Jun 2024 15:50:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18232 invoked from network); 12 Jun 2024 14:03:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <58b27eb6-b696-f831-b78e-6e28bac5083e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Jun 2024 14:02:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36263: Apache Submarine Server Core: SQL injection 

Severity: important

Affected versions:

- Apache Submarine Server Core: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Neutralization of Special Elements=
 used in an SQL Command ('SQL Injection') vulnerability in Apache Submarine=
 Server Core.

This issue affects Apache Submarine Server Core: all versions.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

BaoChengZhang of LengJingQiCaiSecurityLab (finder)
L0ne1y (finder)

References:

https://github.com/apache/submarine/pull/1121
https://submarine.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-36263

