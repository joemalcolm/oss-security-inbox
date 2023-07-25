Received: (qmail 7526 invoked by uid 550); 25 Jul 2023 08:59:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23729 invoked from network); 25 Jul 2023 02:30:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8dcf2ad6-d544-974c-b11e-3d8ed44c7dbf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 02:29:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34434: Apache InLong: JDBC URL bypassing by
 allowLoadLocalInfileInPath param 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.7.0

Description:

Deserialization of Untrusted Data Vulnerability in Apache Software Foundati=
on Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.7.0=
.=C2=A0

The attacker could bypass the current logic and achieve arbitrary file read=
ing. To solve it, users are advised to upgrade to Apache InLong's 1.8.0 or =
cherry-pick  https://github.com/apache/inlong/pull/8130 .

Credit:

sw0rd1ight and 4ra1n of Chaitin Tech (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-34434

