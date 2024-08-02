Received: (qmail 26546 invoked by uid 550); 2 Aug 2024 14:02:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29935 invoked from network); 2 Aug 2024 09:39:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <79e4441a-3a70-d9d9-3df9-cd441ad5148b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Aug 2024 09:39:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36268: Apache InLong TubeMQ Client: Remote Code Execution
 vulnerability 

Severity: important

Affected versions:

- Apache InLong TubeMQ Client 1.10.0 through 1.12.0

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache InLong.

This issue affects Apache InLong: from 1.10.0 through 1.12.0, which could l=
ead to Remote Code Execution. Users are advised to upgrade to Apache InLong=
's 1.13.0 or cherry-pick [1] to solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/10251

Credit:

X1r0z  (finder)

References:

https://github.com/apache/inlong/pull/10251
https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-36268

