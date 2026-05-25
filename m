Received: (qmail 13605 invoked by uid 550); 25 May 2026 19:52:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5656 invoked from network); 25 May 2026 19:51:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6feafbac-da48-4657-3449-ccb72db454c0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 19:50:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43828: Apache Shiro: Shiro's native session and
 rememberMe cookies do not have secure flag set by default 

Severity:=20

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-web) 1.0 through 2.1.0
- Apache Shiro (org.apache.shiro:shiro-web) 3.0.0-alpha-0 through 3.0.0-alp=
ha-1

Description:

Default configurations of Apache Shiro send sensitive cookies in HTTPS sess=
ion without 'Secure' attribute.



This issue affects Apache Shiro from 1.0 to 2.1.0, and 3.0.0-alpha-1.

Users are recommended to upgrade to version 2.1.1, or 3.0.0-alpha-2 or late=
r, which fixes the issue.

In the affected versions, Shiro-native session manager, as well as Remember=
-Me manager sends JSESSIONID and rememberMe cookies without 'secure' attrib=
ute by default.

Credit:

Meteor_Kai <1318723916@qq.com> (finder)
Lenny Primak <lenny@flowlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43828

