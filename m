Received: (qmail 32593 invoked by uid 550); 13 May 2025 15:19:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19592 invoked from network); 13 May 2025 14:31:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dongjoon Hyun <dongjoon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <24d465d5-d581-4382-d696-e709358c48ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 May 2025 14:31:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-47436: Apache ORC: Potential Heap Buffer Overflow during
 C++ LZO Decompression 

Affected versions:

- Apache ORC through 1.8.8
- Apache ORC 1.9.0 through 1.9.5
- Apache ORC 2.0.0 through 2.0.4
- Apache ORC 2.1.0 through 2.1.1

Description:

Heap-based Buffer Overflow vulnerability in Apache ORC.

A vulnerability has been identified in the ORC C++ LZO decompression logic,=
 where specially crafted malformed ORC files can cause the decompressor to=
=C2=A0allocate a 250-byte buffer but then attempts to copy 295 bytes into i=
t. It causes memory corruption.

This issue affects Apache ORC C++ library: through 1.8.8, from 1.9.0 throug=
h 1.9.5, from 2.0.0 through 2.0.4, from 2.1.0 through 2.1.1.

Users are recommended to upgrade to version 1.8.9, 1.9.6, 2.0.5, and 2.1.2,=
 which fix the issue.

This issue is being tracked as ORC-1879=20

Credit:

Jason Villaluna (reporter)

References:

https://orc.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-47436
https://issues.apache.org/jira/browse/ORC-1879

