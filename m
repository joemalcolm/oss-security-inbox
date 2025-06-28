Received: (qmail 15581 invoked by uid 550); 28 Jun 2025 17:16:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28647 invoked from network); 28 Jun 2025 11:45:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Min Ji <jimin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7219fd53-d126-2bdb-f187-a29cda337573@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 28 Jun 2025 11:45:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-32897: Apache Seata (incubating): Deserialization of
 untrusted Data in Apache Seata Server 

Severity: low=20

Affected versions:

- Apache Seata (incubating) 2.0.0 before 2.3.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Seata (incubating=
).

This security vulnerability is the same as CVE-2024-47552, but the version =
range described in the CVE-2024-47552 definition is too narrow.
This issue affects Apache Seata (incubating): from 2.0.0 before 2.3.0.

Users are recommended to upgrade to version 2.3.0, which fixes the issue.

References:

https://www.cve.org/CVERecord?id=3DCVE-2024-47552
https://seata.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-32897

