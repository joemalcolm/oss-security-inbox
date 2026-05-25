Received: (qmail 6028 invoked by uid 550); 25 May 2026 20:07:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22174 invoked from network); 25 May 2026 19:52:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5e821fdb-61e2-e383-4db9-9f85c0e319f4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 19:51:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-44598: Apache Shiro Jakarta EE module: Open redirect and
 SSRF (requires valid credentials) 

Severity:=20

Affected versions:

- Apache Shiro Jakarta EE module (org.apache.shiro:shiro-jakarta-ee) 2.0.0-=
alpha-0 through 2.1.0
- Apache Shiro Jakarta EE module (org.apache.shiro:shiro-jakarta-ee) 3.0.0-=
alpha-0 through 3.0.0-alpha-1

Description:

With valid login credentials, URL Redirection to Untrusted Site ('Open Redi=
rect'), Server-Side Request Forgery (SSRF) vulnerability in Apache Shiro.




This issue affects Apache Shiro from 2.0-alpha to 2.1.0, and 3.0.0-alpha-1,=
=C2=A0only when using shiro-jakarta-ee integration module.

Users are recommended to upgrade to version 2.1.1, or 3.0.0-alpha-2 or late=
r, which fixes the issue by encrypting the cookie.

After successful login, Jakarta EE integration module uses shiroSavedReques=
t cookie to redirect to a particular web page after login.
This cookie was not validated, and can be forged to send a HTTP GET request=
 from the server itself to an arbitrary URL from the cookie.

Credit:

James Love <jameslove2k22@gmail.com> (finder)
Lenny Primak <lenny@flowlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-44598

