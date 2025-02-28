Received: (qmail 17662 invoked by uid 550); 28 Feb 2025 04:08:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6115 invoked from network); 28 Feb 2025 04:05:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <814e8442-278a-4a71-c994-f1499f13da23@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Feb 2025 04:04:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27531: Apache InLong: An arbitrary file read
 vulnerability for JDBC 

Severity: moderate

Affected versions:

- Apache InLong 1.13.0 before 2.1.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.=C2=A0

This issue affects Apache InLong: from 1.13.0 before 2.1.0, this=C2=A0can l=
ead to bypass by double writing the param.





Users are recommended to upgrade to version 2.1.0, which fixes the issue.

Credit:

Ming (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27531

