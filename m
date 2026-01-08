Received: (qmail 21712 invoked by uid 550); 8 Jan 2026 15:54:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31978 invoked from network); 8 Jan 2026 09:55:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ea2e2643-a017-5a50-1d4a-a8fd845ee274@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 08 Jan 2026 09:53:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-53470: Apache NimBLE: Out-of-Bounds Write Vulnerability
 in NimBLE HCI H4 driver 

Severity: low=20

Affected versions:

- Apache NimBLE through 1.8

Description:

Out-of-bounds Read vulnerability in Apache  NimBLE HCI H4 driver. Specially=
 crafted HCI event could lead to invalid memory read in H4 driver.

This issue affects Apache NimBLE: through 1.8.=C2=A0

This issue requires a broken or bogus Bluetooth controller and thus severit=
y is considered low.

Users are recommended to upgrade to version 1.9, which fixes the issue.

Credit:

=E9=9B=B7=E9=87=8D=E5=BA=86 <leicq@seu.edu.cn> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/b973df0c6cf7b30efbf8eb2cafdc=
1ee843464b76
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-53470

