Received: (qmail 20289 invoked by uid 550); 24 Jul 2025 13:59:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29728 invoked from network); 23 Jul 2025 12:15:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f6570ff8-883e-377f-aaa8-e8e06311ef4d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Jul 2025 12:14:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54090: Apache HTTP Server: 'RewriteCond expr' always
 evaluates to true in 2.4.64 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.64

Description:

A bug in Apache HTTP Server 2.4.64 results in all "RewriteCond expr ..." te=
sts evaluating as "true".



Users are recommended to upgrade to version 2.4.65, which fixes the issue.

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54090

Timeline:

2025-07-16: reported
2025-07-23: fixed in 2.4.x by r1927361

