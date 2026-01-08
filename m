Received: (qmail 20087 invoked by uid 550); 8 Jan 2026 15:54:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29894 invoked from network); 8 Jan 2026 09:50:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Szymon Janc <janc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8d46334b-72ff-5df4-3e2a-751f5e47d96e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 08 Jan 2026 09:50:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-52435: Apache NimBLE: Invalid error handling in pause
 encryption procedure in NimBLE controller 

Severity: important=20

Affected versions:

- Apache NimBLE through 1.8.0

Description:

J2EE Misconfiguration: Data Transmission Without Encryption vulnerability i=
n Apache NimBLE.

Improper handling of Pause Encryption procedure on Link Layer results in a =
previously encrypted connection being left in un-encrypted state allowing a=
n eavesdropper to observe the remainder of the exchange.
This issue affects Apache NimBLE: through <=3D 1.8.0.

Users are recommended to upgrade to version 1.9.0, which fixes the issue.

Credit:

Henrik Schnor <henrik.schnor@mailbox.org> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/164f1c23c18a290908df76ed83fe=
848bfe4a4903
https://github.com/apache/mynewt-nimble/commit/ec3d75e909fa6dcadf1836fefc44=
32794a673d18
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-52435

