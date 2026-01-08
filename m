Received: (qmail 23819 invoked by uid 550); 8 Jan 2026 15:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27957 invoked from network); 8 Jan 2026 09:54:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d88f776b-b5f1-4f50-e4cb-3dd0a23ecc85@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 08 Jan 2026 09:54:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-53477: Apache NimBLE: NULL Pointer Dereference in NimBLE
 host HCI layer 

Severity: low=20

Affected versions:

- Apache NimBLE through 1.8.0

Description:

NULL Pointer Dereference vulnerability in Apache Nimble.

Missing validation of HCI connection complete or HCI command TX buffer coul=
d lead to NULL pointer dereference.
This issue requires disabled asserts and broken or bogus Bluetooth controll=
er and thus severity is considered low.

This issue affects Apache NimBLE: through 1.8.0.

Users are recommended to upgrade to version 1.9.0, which fixes the issue.

Credit:

=E9=9B=B7=E9=87=8D=E5=BA=86 <leicq@seu.edu.cn> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/0caf9baeb271ede85fcc5237ab87=
ddbf938600da
https://github.com/apache/mynewt-nimble/commit/3160b8c4c7ff8db4e0f9badcdf7d=
f684b151e077
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-53477

