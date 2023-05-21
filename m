Received: (qmail 1855 invoked by uid 550); 21 May 2023 10:12:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26148 invoked from network); 21 May 2023 08:23:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <19c1b692-f984-7c1f-b646-6106a82c4881@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:23:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31454: Apache InLong: IDOR make users can bind any
 cluster 

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Incorrect Permission Assignment for Critical Resource Vulnerability in Apac=
he Software Foundation Apache InLong.This issue affects Apache InLong: from=
 1.2.0 through 1.6.0.=C2=A0

The attacker can bind any cluster, even if he is not the cluster owner. Use=
rs are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to so=
lve it.[1]

 https://github.com/apache/inlong/pull/7947 https://github.com/apache/inlon=
g/pull/7947

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31454

