Received: (qmail 12081 invoked by uid 550); 4 May 2026 16:09:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9701 invoked from network); 4 May 2026 12:09:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e5852a07-8226-5c25-6d04-99f3335878fe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 12:05:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24072: Apache HTTP Server: mod_rewrite elevation of
 privileges via ap_expr 

Severity: moderate=20

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

An escalation of privilege bug in various modules in Apache HTTP 2.4.66 and=
 earlier allows local .htaccess authors to read files with the privileges o=
f the httpd user.

Users are recommended to upgrade to version 2.4.67, which fixes this issue.

Credit:

y7syeu (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-24072

Timeline:

2026-01-20: Report received
2026-05-04: fixed in 2.4.x by r1933350

