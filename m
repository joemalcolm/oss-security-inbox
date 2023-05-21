Received: (qmail 24233 invoked by uid 550); 21 May 2023 10:10:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19573 invoked from network); 21 May 2023 08:12:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f244bc0d-3df7-39c6-73a1-25a38b2e16f8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:12:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31062: Apache InLong: Privilege escalation vulnerability
 for InLong 

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Improper Privilege Management Vulnerabilities in Apache Software Foundation=
 Apache InLong.This issue affects Apache InLong: from 1.2.0 through 1.6.0.=
=C2=A0 When=C2=A0the attacker has access to a valid (but unprivileged) acco=
unt, the exploit can be executed using Burp Suite by sending a login
request and following it with a subsequent HTTP request
using the returned cookie.

Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to=
 solve it.



[1]=C2=A0 https://github.com/apache/inlong/pull/7836 https://github.com/apa=
che/inlong/pull/7836

Credit:

escape Wang (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31062

