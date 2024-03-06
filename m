Received: (qmail 28359 invoked by uid 550); 6 Mar 2024 12:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11433 invoked from network); 6 Mar 2024 11:06:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4513e636-44ba-8182-c2be-4b0d439642a1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Mar 2024 11:08:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26580: Apache InLong: Logged-in user could exploit an
 arbitrary file read vulnerability 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.10.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.This issue=
 affects Apache InLong: from 1.8.0 through 1.10.0, the attackers can=20

use the specific payload to read from an arbitrary file. Users are advised =
to upgrade to Apache InLong's 1.11.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/9673

Credit:

an4er (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-26580

