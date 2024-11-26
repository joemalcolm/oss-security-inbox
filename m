Received: (qmail 3863 invoked by uid 550); 26 Nov 2024 10:56:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20324 invoked from network); 26 Nov 2024 08:19:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <05592a3b-c7a6-9c1c-c024-4c7f6e8b11f6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Nov 2024 08:17:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47249: Apache NimBLE: Lack of input sanitization leading
 to out-of-bound reads in multiple advertisement handler 

Severity: low

Affected versions:

- Apache NimBLE through 1.7.0

Description:

Improper Validation of Array Index vulnerability in Apache NimBLE.

Lack of input validation for HCI events from controller could result in out=
-of-bound memory corruption and crash.
This issue requires broken or bogus Bluetooth controller and thus severity =
is considered low.
This issue affects Apache NimBLE: through 1.7.0.

Users are recommended to upgrade to version 1.8.0, which fixes the issue.

Credit:

Eunkyu Lee (reporter)

References:

https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47249

