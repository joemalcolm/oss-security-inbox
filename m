Received: (qmail 9853 invoked by uid 550); 3 Jan 2024 10:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1260 invoked from network); 3 Jan 2024 02:04:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cacbc84d-ebd5-2648-b29f-6fa8da1d913b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jan 2024 02:05:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51784: Apache InLong: Remote Code Execution vulnerability
 in Apache InLong Manager 

Severity: important

Affected versions:

- Apache InLong 1.5.0 through 1.9.0

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache InLong.This issue affects Apache InLong: from 1.5.0 through 1.9.0, w=
hich could lead to Remote Code Execution.=C2=A0Users are advised to upgrade=
 to Apache InLong's 1.10.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/9329

Credit:

X1r0z (finder)

References:

https://www.cve.org/CVERecord?id=3DCVE-2023-51784

