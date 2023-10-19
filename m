Received: (qmail 15684 invoked by uid 550); 19 Oct 2023 05:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1600 invoked from network); 19 Oct 2023 02:35:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d1fbf10c-8c1e-f187-b1fa-96d24dcdedc7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 02:34:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46227: Apache inlong has an Arbitrary File Read
 Vulnerability 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.8.0

Description:

Deserialization of Untrusted Data Vulnerability in Apache Software Foundati=
on Apache InLong.

This issue affects Apache InLong: from 1.4.0 through 1.8.0, the attacker ca=
n use \t to bypass.=C2=A0Users are advised to upgrade to Apache InLong's 1.=
9.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/8814

Credit:

zhiwei (finder)
s3gundo (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-46227

