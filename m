Received: (qmail 1973 invoked by uid 550); 26 Nov 2024 10:55:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13540 invoked from network); 26 Nov 2024 08:17:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c04ee654-deff-ce5a-e4c2-4f6ec9c61f08@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Nov 2024 08:16:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47248: Apache NimBLE: Buffer overflow in NimBLE MESH
 Bluetooth stack 

Severity: important

Affected versions:

- Apache NimBLE through 1.7.0

Description:

Buffer Copy without Checking Size of Input ('Classic Buffer Overflow') vuln=
erability in Apache NimBLE.

Specially crafted MESH message could result in memory corruption when non-d=
efault build configuration is used.
This issue affects Apache NimBLE: through 1.7.0.

Users are recommended to upgrade to version 1.8.0, which fixes the issue.

Credit:

Wei Che Kao (Xiaobye), graduate student from National Yang Ming Chiao Tung =
University, Dept. of CS, Security and Systems Lab. (reporter)

References:

https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47248

