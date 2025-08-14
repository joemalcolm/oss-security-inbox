Received: (qmail 3563 invoked by uid 550); 14 Aug 2025 12:34:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22341 invoked from network); 14 Aug 2025 11:37:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a6e382c-b121-bf9f-61b9-a8cb7df22104@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Aug 2025 11:36:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55672: Apache Superset: Store XSS on charts metadata 

Severity:=20

Affected versions:

- Apache Superset before 5.0.0

Description:

A stored Cross-Site Scripting (XSS) vulnerability exists in Apache Superset=
's chart visualization. An authenticated user with permissions to edit char=
ts can inject a malicious payload into a column's label. The payload is not=
 properly sanitized and gets executed in the victim's browser when they hov=
er over the chart, potentially leading to session hijacking or the executio=
n of arbitrary commands on behalf of the user.

This issue affects Apache Superset: before 5.0.0.

Users are recommended to upgrade to version 5.0.0, which fixes the issue.

Credit:

Pedro Sousa (coordinator)
Jobar (finder)
Mehmet Yavuz (remediation developer)

References:

https://www.cve.org/CVERecord?id=3DCVE-2025-55672

