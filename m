Received: (qmail 32568 invoked by uid 550); 14 Aug 2025 12:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13763 invoked from network); 14 Aug 2025 11:33:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7fa9f1ae-bc15-c710-3ffa-21fbdb46f222@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Aug 2025 11:33:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55673: Apache Superset: Metadata exposure in embedded
 charts 

Severity:=20

Affected versions:

- Apache Superset before 4.1.3

Description:

When a guest user accesses a chart in Apache Superset, the API response fro=
m the /chart/data endpoint includes a query field in its payload. This fiel=
d contains the underlying query, which improperly discloses database schema=
 information, such as table names, to the low-privileged guest user.

This issue affects Apache Superset: before 4.1.3.

Users are recommended to upgrade to version 4.1.3, which fixes the issue.

Credit:

Pedro Sousa (coordinator)
Daniel Gaspar (remediation developer)

References:

https://www.cve.org/CVERecord?id=3DCVE-2025-55673

