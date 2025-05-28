Received: (qmail 24453 invoked by uid 550); 28 May 2025 03:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5627 invoked from network); 28 May 2025 01:49:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c2339712-d673-d1d2-cf11-2f2e5aa64e6d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 May 2025 01:46:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27528: Apache InLong: JDBC Vulnerability for Invisible
 Character Bypass Leading to Arbitrary File Read 

Severity: moderate

Affected versions:

- Apache InLong 1.13.0 through 2.1.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.

This issue affects Apache InLong: from 1.13.0 through 2.1.0.=20

This
vulnerability allows attackers to bypass the security mechanisms of InLong
JDBC and leads to arbitrary file reading.=C2=A0Users are advised to upgrade=
 to Apache InLong's 2.2.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/11747

Credit:

yulat (finder)
m4x (finder)
h3h3qaq (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27528

