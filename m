Received: (qmail 20250 invoked by uid 550); 24 Feb 2026 16:36:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10074 invoked from network); 24 Feb 2026 09:39:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0ff3b90b-81fd-c633-91a4-e40453f7b4d1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 09:35:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23982: Apache Superset: Improper Authorization in Dataset
 Creation Allows Access Control Bypass 

Severity:=20

Affected versions:

- Apache Superset 0.0.0 before 6.0.0

Description:

An Improper Authorization vulnerability exists in Apache Superset that allo=
ws a low-privileged user to bypass data access controls. When creating a da=
taset, Superset enforces permission checks to prevent users from querying u=
nauthorized data. However, an authenticated attacker with permissions to wr=
ite datasets and read charts can bypass these checks by overwriting the SQL=
 query of an existing dataset.

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue.

Credit:

River Koh (reporter)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-23982

