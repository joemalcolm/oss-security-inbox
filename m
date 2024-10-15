Received: (qmail 14203 invoked by uid 550); 15 Oct 2024 19:02:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8012 invoked from network); 15 Oct 2024 18:34:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fc2ae8ca-0377-8599-5300-9f3141b8125a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 18:31:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45693: Apache CloudStack: Request origin validation
 bypass makes account takeover possible 

Severity: important

Affected versions:

- Apache CloudStack 4.15.1.0 through 4.18.2.3
- Apache CloudStack 4.19.0.0 through 4.19.1.1

Description:

Users logged into the Apache CloudStack's web interface can be tricked to s=
ubmit malicious CSRF requests due to missing validation of the origin of th=
e requests. This can allow an attacker to gain privileges and access to res=
ources of the authenticated users and may lead=C2=A0to account takeover,=C2=
=A0disruption, exposure of sensitive data and compromise integrity of the r=
esources owned by the user account that are managed by the platform.

This issue affects Apache CloudStack from 4.15.1.0 through 4.18.2.3 and 4.1=
9.0.0 through 4.19.1.1



Users are recommended to upgrade to Apache CloudStack 4.18.2.4 or 4.19.1.2,=
 or later, which addresses this issue.

Credit:

Arthur Souza (reporter)
Felipe Olivaes (reporter)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.18.2.4-4.19.=
1.2
https://lists.apache.org/thread/ktsfjcnj22x4kg49ctock3d9tq7jnvlo
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45693

