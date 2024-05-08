Received: (qmail 11674 invoked by uid 550); 9 May 2024 10:52:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24138 invoked from network); 8 May 2024 14:51:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2f83357c-86bb-dd6f-39b4-d9aaf894b9d9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 May 2024 14:50:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26579: Apache Inlong JDBC Vulnerability 

Severity: important

Affected versions:

- Apache InLong 1.7.0 through 1.10

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.This issue=
 affects Apache InLong: from 1.7.0 through 1.11.0,=C2=A0

 the attackers can bypass using malicious parameters.

Users are advised to upgrade to Apache InLong's 1.12.0 or cherry-pick [1], =
[2] to solve it.

[1]  https://github.com/apache/inlong/pull/9694=20

[2]=C2=A0 https://github.com/apache/inlong/pull/9707

Credit:

L0ne1y  (finder)
Ming (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-26579

