Received: (qmail 31865 invoked by uid 550); 21 May 2023 10:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23565 invoked from network); 21 May 2023 08:19:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3dd3f588-efe8-afb6-a553-8ac595133319@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:19:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31101: Apache InLong: Users who joined later can see the
 data of deleted users 

Severity: important

Affected versions:

- Apache InLong 1.5.0 through 1.6.0

Description:

Insecure Default Initialization of Resource Vulnerability in Apache Softwar=
e Foundation Apache InLong.This issue affects Apache InLong: from 1.5.0 thr=
ough 1.6.0.  Users registered in InLong who joined later can see deleted us=
ers' data. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-=
pick [1] to solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/7836 https://github.com/apa=
che/inlong/pull/7836

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31101

