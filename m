Received: (qmail 10174 invoked by uid 550); 3 Jan 2024 10:50:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1413 invoked from network); 3 Jan 2024 02:04:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d1854903-ad01-9f2c-3b3f-b3aa48c2baa4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jan 2024 02:05:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51785: Apache InLong: Arbitrary File Read Vulnerability
 in Apache InLong Manager 

Severity: important

Affected versions:

- Apache InLong 1.7.0 through 1.9.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.This issue=
 affects Apache InLong: from 1.7.0 through 1.9.0, the attackers=C2=A0can ma=
ke a arbitrary file read attack using mysql driver.=C2=A0Users are advised =
to upgrade to Apache InLong's 1.10.0 or cherry-pick [1] to solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/9331

Credit:

X1r0z (finder)

References:

https://www.cve.org/CVERecord?id=3DCVE-2023-51785

