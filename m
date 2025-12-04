Received: (qmail 7221 invoked by uid 550); 4 Dec 2025 02:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9783 invoked from network); 4 Dec 2025 02:15:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <119d7762-677b-a516-4cd9-814f9a0bf24c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 02:14:56 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2025-53960=3A_Apache_StreamPark=3A_U?=
 =?UTF-8?Q?se_the_user=E2=80=99s_password_as_the_se?=
 =?UTF-8?Q?cret_key_Vulnerability=20?=

Severity: moderate=20

Affected versions:

- Apache StreamPark 2.0.0 before 2.1.7

Description:

In Apache StreamPark versions 2.0.0 through 2.1.7, a security vulnerability=
 involving a hard-coded encryption key exists.=C2=A0This vulnerability occu=
rs because the system uses a fixed, immutable key for encryption instead of=
 dynamically generating or securely configuring the key. Attackers may obta=
in this key through reverse engineering or code analysis, potentially decry=
pting sensitive data or forging encrypted information, leading to informati=
on disclosure or unauthorized system access.


This issue affects Apache StreamPark: from 2.0.0 before 2.1.7.

Users are recommended to upgrade to version 2.1.7, which fixes the issue.

Credit:

omkar parkhe <omkarparth@gmail.com> (finder)

References:

https://streampark.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-53960

