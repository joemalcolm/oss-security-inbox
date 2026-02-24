Received: (qmail 23806 invoked by uid 550); 24 Feb 2026 16:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26111 invoked from network); 24 Feb 2026 09:42:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8d265a92-6a79-c836-54d8-650094bfcc49@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 09:42:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23983: Apache Superset: Sensitive Data Exposure via REST
 API (disabled by default) 

Severity:=20

Affected versions:

- Apache Superset 0.0.0 before 6.0.0

Description:

A Sensitive Data Exposure vulnerability exists in Apache Superset allowing =
authenticated users to retrieve sensitive user information. The Tag endpoin=
t (disabled by default) allows users to retrieve a list of objects associat=
ed with a specific tag.
When these associated objects include Users, the API response improperly se=
rializes and returns sensitive fields, including password hashes (pbkdf2), =
email addresses, and login statistics. This vulnerability allows authentica=
ted users with low privileges (e.g., Gamma role) to view sensitive authenti=
cation data=20

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue or=
 make sure=C2=A0TAGGING_SYSTEM is False (Apache Superset current default)

Credit:

Krzysztof Maurek (reporter)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-23983

