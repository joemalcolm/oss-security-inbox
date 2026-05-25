Received: (qmail 7823 invoked by uid 550); 25 May 2026 19:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1036 invoked from network); 25 May 2026 19:50:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <21af63d6-b04e-e474-e251-ef899b0843a3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 19:50:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43827: Apache Shiro: Session fixation: new session is not
 created after login by default 

Severity:=20

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) 1.0 through 2.1.0
- Apache Shiro (org.apache.shiro:shiro-core) 3.0.0-alpha-0 through 3.0.0-al=
pha-1

Description:

Default configurations of Apache Shiro have a session fixation vulnerabilit=
y.

This issue affects Apache Shiro from 1.0 to 2.1.0, and 3.0.0-alpha-1.

Users are recommended to upgrade to version 2.1.1, or 3.0.0-alpha-2 or late=
r, which fixes the issue.

In the affected versions, when a session already exists, it is not invalida=
ted upon successful login, nor is a new session being generated with a new =
ID.

Credit:

Rasmus Moorats <xx@nns.ee> (finder)
Lenny Primak <lenny@flowlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43827

