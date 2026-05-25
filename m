Received: (qmail 7744 invoked by uid 550); 25 May 2026 20:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28595 invoked from network); 25 May 2026 19:53:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6e090cab-f2bc-9ffd-eac3-6c9a1c84f9d9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 19:51:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-48589: Apache Shiro: Jakarta EE open redirect via
 untrusted Referer in post-login redirect flow 

Severity:=20

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-jakarta-ee) 2.0.0-alpha-0 through 2.=
2.0
- Apache Shiro (org.apache.shiro:shiro-jakarta-ee) 3.0.0-alpha-0 through 3.=
0.0-alpha-1

Description:

Apache Shiro=E2=80=99s Jakarta EE module used the HTTP Referer header in ce=
rtain cases to issue redirect after a user login.
In affected versions, insufficient validation of this client-controlled val=
ue could allow an attacker to influence the redirect target in applications=
 using the Jakarta EE module.
This issue affects Apache Shiro from 2.0-alpha to 2.2.0, and 3.0.0-alpha-1,=
 only when using shiro-jakarta-ee integration module.

Credit:

Bartlomiej Dmitruk <bartek@striga.ai> (finder)
Lenny Primak <lenny@flowlogix.com> (remediation developer)

References:

https://shiro.apache.org/security-reports.html#cve_2026_48589
https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-48589

