Received: (qmail 16073 invoked by uid 550); 8 Feb 2026 16:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15608 invoked from network); 8 Feb 2026 16:29:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9695b630-d6fd-e1f8-0cf8-b3b23aaabbfe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 08 Feb 2026 16:29:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23903: Apache Shiro: Auth bypass when accessing static
 files only on case-insensitive filesystems 

Severity: low=20

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-web) before 2.0.7

Description:

Authentication Bypass by Alternate Name vulnerability in Apache Shiro.

This issue affects Apache Shiro: before 2.0.7.

Users are recommended to upgrade to version 2.0.7, which fixes the issue.

The issue only effects static files. If static files are served from a case=
-insensitive filesystem,
such as default macOS setup, static files may be accessed by varying the ca=
se of the filename in the request.
If only lower-case (common default) filters are present in Shiro, they may =
be bypassed this way.

Shiro 2.0.7 and later has a new parameters to remediate this issue
shiro.ini: filterChainResolver.caseInsensitive =3D true
application.propertie: shiro.caseInsensitive=3Dtrue

Shiro 3.0.0 and later (upcoming) makes this the default.

Credit:

Jesse Yang (finder)
Lenny Pimak (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23903

