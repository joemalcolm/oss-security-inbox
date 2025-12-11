Received: (qmail 32601 invoked by uid 550); 11 Dec 2025 22:23:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30606 invoked from network); 11 Dec 2025 21:27:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Adam Monsen <meonkeys@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <90b9d614-6589-55e1-6fe4-279a11e26ba9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Dec 2025 21:26:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-58137: Apache Fineract: IDOR via self-service API 

Severity: important=20

Affected versions:

- Apache Fineract through 1.11.0
- Apache Fineract 1.12.1 unaffected

Description:

Authorization Bypass Through User-Controlled Key vulnerability in Apache Fi=
neract.

This issue affects Apache Fineract: through 1.11.0. The issue is fixed in v=
ersion 1.12.1.

Users are encouraged to upgrade to version 1.13.0, the latest release.

Credit:

Peter Chen (reporter)
=C3=81d=C3=A1m S=C3=A1ghy (remediation developer)
Aleksandar Vidakovic (remediation reviewer)
V=C3=ADctor Romero (remediation reviewer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-58137

