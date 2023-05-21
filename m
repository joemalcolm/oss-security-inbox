Received: (qmail 26230 invoked by uid 550); 21 May 2023 10:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21614 invoked from network); 21 May 2023 08:16:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3492dcaf-eccc-9767-3ccd-b099dce82bf3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:16:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31065: Apache InLong: Insufficient Session Expiration in
 InLong 

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Insufficient Session Expiration vulnerability in Apache Software Foundation=
 Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.6.0.=
=C2=A0


An old session can be used by an attacker even after the user has been dele=
ted or the password has been changed.


Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1],[2=
] to solve it.




[1]=C2=A0 https://github.com/apache/inlong/pull/7836 https://github.com/apa=
che/inlong/pull/7836=20
[2]=C2=A0 https://github.com/apache/inlong/pull/7884 https://github.com/apa=
che/inlong/pull/7884

Credit:

lujie.ac.cn (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31065

