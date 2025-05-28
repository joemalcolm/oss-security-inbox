Received: (qmail 23602 invoked by uid 550); 28 May 2025 03:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28645 invoked from network); 28 May 2025 01:46:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7749ada3-4033-c8de-1d84-ab356ebee708@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 May 2025 01:46:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27526: Apache InLong: JDBC Vulnerability For URLEncode
 and backspace bypass 

Severity: moderate

Affected versions:

- Apache InLong 1.13 through 2.1.0

Description:

Deserialization of Untrusted Data vulnerability in Apache InLong.

This issue affects Apache InLong: from 1.13.0 through 2.1.0. This vulnerabi=
lity which can lead to JDBC Vulnerability URLEncdoe and backspace bypass. U=
sers are advised to upgrade to Apache InLong's 2.2.0 or cherry-pick [1] to =
solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/11747

Credit:

yulate (finder)
m4x (finder)
h3h3qaq (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27526

