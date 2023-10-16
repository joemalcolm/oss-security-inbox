Received: (qmail 23655 invoked by uid 550); 16 Oct 2023 01:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3243 invoked from network); 16 Oct 2023 01:51:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <632a3fb2-1f92-0ef5-6f1d-fbb04edb95dd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 01:51:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43668: Apache InLong: Jdbc Connection Security Bypass in
 InLong 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.8.0

Description:

Authorization Bypass Through User-Controlled Key vulnerability in Apache In=
Long.This issue affects Apache InLong: from 1.4.0 through 1.8.0,=C2=A0

some sensitive params  checks will be bypassed, like "autoDeserizalize","al=
lowLoadLocalInfile"....

.=C2=A0=C2=A0

Users are advised to upgrade to Apache InLong's 1.9.0 or cherry-pick [1] to=
 solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/8604

Credit:

nbxiglk (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-43668

