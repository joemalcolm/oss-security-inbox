Received: (qmail 20171 invoked by uid 550); 4 May 2026 16:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5594 invoked from network); 4 May 2026 14:17:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <add16f56-fbe5-ae8b-ff0a-d025ec279b7c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 14:15:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33006: Apache HTTP Server: mod_auth_digest timing attack 

Severity: moderate=20

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

A timing attack against mod_auth_digest in Apache HTTP Server 2.4.66 allows=
 a bypass of Digest authentication by a remote attacker.

Users are recommended to upgrade to version 2.4.67, which fixes this issue.

Credit:

Nitescu Lucian (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33006

Timeline:

2026-03-09: Report received
2026-05-04: 2.4.67 released
2026-05-04: fixed in 2.4.x by r1933356

