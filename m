Received: (qmail 15982 invoked by uid 550); 5 Apr 2024 11:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13459 invoked from network); 5 Apr 2024 07:22:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d845a9b0-d94f-2afa-956b-2deb2be2357b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Apr 2024 07:20:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24746: Apache NimBLE: Denial of service in NimBLE
 Bluetooth stack 

Severity: important

Affected versions:

- Apache NimBLE through 1.6.0

Description:

Loop with Unreachable Exit Condition ('Infinite Loop') vulnerability in Apa=
che NimBLE.=C2=A0

Specially crafted GATT operation can cause infinite loop in GATT server lea=
ding to denial of service in Bluetooth stack or device.

This issue affects Apache NimBLE: through 1.6.0.
Users are recommended to upgrade to version 1.7.0, which fixes the issue.

Credit:

Iv=C3=A1n Arce from Quarkslab Vulnerability Reports team (reporter)

References:

https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-24746

