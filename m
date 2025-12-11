Received: (qmail 30635 invoked by uid 550); 11 Dec 2025 22:23:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6001 invoked from network); 11 Dec 2025 21:20:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Adam Monsen <meonkeys@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9b95bce7-0a7f-2ce2-1aee-19148be92a47@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Dec 2025 21:19:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23408: Apache Fineract: weak password policy 

Severity: moderate=20

Affected versions:

- Apache Fineract through 1.10.1
- Apache Fineract 1.11.0 unaffected

Description:

Weak Password Requirements vulnerability in Apache Fineract.

This issue affects Apache Fineract: through 1.10.1.=C2=A0The issue is fixed=
 in version 1.11.0.

Users are encouraged to upgrade to version 1.13.0, the latest release.

Credit:

Peter Chen, PayPal Security (finder)
Kristof Jozsa, BaaSFlow (analyst)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-23408

