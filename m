Received: (qmail 32120 invoked by uid 550); 11 Dec 2025 22:23:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3627 invoked from network); 11 Dec 2025 21:24:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Adam Monsen <meonkeys@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f6b29ad7-5b67-c529-09d1-26f31939b9f3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Dec 2025 21:23:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-58130: Apache Fineract: Server Key not masked 

Severity: low=20

Affected versions:

- Apache Fineract through 1.11.0
- Apache Fineract 1.12.1 unaffected

Description:

Insufficiently Protected Credentials vulnerability in Apache Fineract.

This issue affects Apache Fineract: through 1.11.0.=C2=A0The issue is fixed=
 in version 1.12.1.

Users are encouraged to upgrade to version 1.13.0, the latest release.

Credit:

Peter Chen (reporter)
Jose Alberto Hernandez (remediation developer)
=C3=81d=C3=A1m S=C3=A1ghy (remediation reviewer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-58130

