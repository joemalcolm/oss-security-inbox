Received: (qmail 8135 invoked by uid 550); 1 Feb 2023 08:09:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27695 invoked from network); 1 Feb 2023 03:36:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a36f7bb9-32a0-7205-ae93-03537f562433@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Feb 2023 03:35:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-24977: Apache InLong: Jdbc Connection causes arbitrary
 file reading in InLong 

Severity: important

Description:

Out-of-bounds Read vulnerability in Apache Software Foundation Apache InLon=
g.This issue affects Apache InLong: from 1.1.0 through 1.5.0.=C2=A0Users ar=
e advised to upgrade to Apache InLong's latest version or cherry-pick  http=
s://github.com/apache/inlong/pull/7214 https://github.com/apache/inlong/pul=
l/7214 =C2=A0to solve it.

Credit:

This issue was discovered by s3gundo of Hundsun Tech (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-24977

