Received: (qmail 16132 invoked by uid 550); 4 May 2026 16:09:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14198 invoked from network); 4 May 2026 14:06:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3863440f-3cfe-87fb-d3f7-0bc1b0f06209@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 14:05:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23918: Apache HTTP Server: http2: double free and
 possible RCE on early reset 

Severity: important=20

Affected versions:

- Apache HTTP Server 2.4.66

Description:

Double Free and possible RCE vulnerability in Apache HTTP Server with the H=
TTP/2 protocol.

This issue affects Apache HTTP Server: 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Bartlomiej Dmitruk, striga.ai (finder)
Stanislaw Strzalkowski, isec.pl (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23918

Timeline:

2025-12-10: reported in PR 69899
2025-12-11: fixed in r1930444, r1930796

