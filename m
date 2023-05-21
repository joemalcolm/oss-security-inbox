Received: (qmail 32651 invoked by uid 550); 21 May 2023 10:11:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25803 invoked from network); 21 May 2023 08:22:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <34d122dc-0540-d4f8-5b66-a7c437bc541c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:21:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31206: Apache InLong: Attackers can change the immutable
 name and type of nodes 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Exposure of Resource to Wrong Sphere Vulnerability in Apache Software Found=
ation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.=
6.0.=C2=A0Attackers can change the immutable name and type of nodes of InLo=
ng. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1=
] to solve it.

 [1]  https://cveprocess.apache.org/cve5/[1]%C2%A0https://github.com/apache=
/inlong/pull/7891  https://github.com/apache/inlong/pull/7891 https://githu=
b.com/apache/inlong/pull/7891

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31206

