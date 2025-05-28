Received: (qmail 24114 invoked by uid 550); 28 May 2025 03:29:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30188 invoked from network); 28 May 2025 01:47:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <568871d3-e53b-6e99-35d7-c6754f1d854e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 May 2025 01:45:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27522: Apache InLong: JDBC Vulnerability during
 verification processing 

Severity: moderate

Affected versions:

- Apache InLong 1.13.0 through 2.1.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.

This issue affects Apache InLong: from 1.13.0 through 2.1.0.=C2=A0This vuln=
erability is a secondary mining bypass for CVE-2024-26579.=C2=A0Users are a=
dvised to upgrade to Apache InLong's 2.2.0 or cherry-pick [1] to solve it.

[1]=20

 https://github.com/apache/inlong/pull/11732

Credit:

yulate (finder)
m4x (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27522

