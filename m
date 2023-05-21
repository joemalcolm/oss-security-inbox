Received: (qmail 1183 invoked by uid 550); 21 May 2023 10:11:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25878 invoked from network); 21 May 2023 08:22:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <83f91fe0-b9f6-11c2-0dd2-bc3a9814a343@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:22:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31453: Apache InLong: IDOR make users can delete others'
 subscription 

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Incorrect Permission Assignment for Critical Resource Vulnerability in Apac=
he Software Foundation Apache InLong.This issue affects Apache InLong: from=
 1.2.0 through 1.6.0. The=C2=A0attacker can delete others' subscriptions, e=
ven if they are not the owner
of the deleted subscription.=C2=A0Users are advised to upgrade to Apache In=
Long's 1.7.0 or cherry-pick [1] to solve it.

[1]=20

 https://github.com/apache/inlong/pull/7949 https://github.com/apache/inlon=
g/pull/7949

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31453

