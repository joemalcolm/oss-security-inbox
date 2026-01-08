Received: (qmail 24249 invoked by uid 550); 8 Jan 2026 15:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3513 invoked from network); 8 Jan 2026 09:55:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <edf86d3f-faa5-76d6-c819-73f928a7e9dd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 08 Jan 2026 09:54:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-62235: Apache NimBLE: Incorrect handling of SMP Security
 Request could lead to undesirable pairing 

Severity: important=20

Affected versions:

- Apache NimBLE through 1.8.0

Description:

Authentication Bypass by Spoofing vulnerability in Apache NimBLE.

Receiving specially crafted Security Request could lead to removal of origi=
nal bond=C2=A0and re-bond with impostor.
This issue affects Apache NimBLE: through 1.8.0.

Users are recommended to upgrade to version 1.9.0, which fixes the issue.

Credit:

Tommaso Sacchetti <tommaso.sacchetti@gmail.com> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/41f67e391e788c5feef9030026cc=
5cbc5431838a
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-62235

