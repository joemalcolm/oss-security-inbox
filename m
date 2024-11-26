Received: (qmail 5564 invoked by uid 550); 26 Nov 2024 10:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20382 invoked from network); 26 Nov 2024 08:19:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d3ebb402-92f1-981e-019b-e33b7414befc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Nov 2024 08:17:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47250: Apache NimBLE: Lack of input validation in HCI
 advertising report could lead to potential out-of-bound access 

Severity: low

Affected versions:

- Apache NimBLE through 1.7.0

Description:

Out-of-bounds Read vulnerability in Apache NimBLE.

Missing proper validation of HCI advertising report could lead to out-of-bo=
und access when parsing HCI event and thus bogus GAP 'device found' events =
being sent.
This issue requires broken or bogus Bluetooth controller and thus severity =
is considered low.
This issue affects Apache NimBLE: through 1.7.0.


Users are recommended to upgrade to version 1.8.0, which fixes the issue.

Credit:

Eunkyu Lee (reporter)

References:

https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47250

