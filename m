Received: (qmail 30227 invoked by uid 550); 1 Feb 2023 10:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28632 invoked from network); 1 Feb 2023 10:43:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6e8f9006-ad6c-c97d-b14e-97be90964314@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Feb 2023 10:43:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-24997: Apache InLong: Jdbc Connection Security Bypass in
 InLong 

Description:

Bypass Through User-Controlled Key vulnerability in Apache Software Foundat=
ion Apache InLong.This issue affects Apache InLong: from 1.1.0 through 1.5.=
0.=C2=A0Users are advised to upgrade to Apache InLong's latest version or c=
herry-pick=C2=A0 https://github.com/apache/inlong/pull/7223 https://github.=
com/apache/inlong/pull/7223 =C2=A0to solve it.

Credit:

This issue was discovered by s3gundo of Hundsun Tech (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-24997

