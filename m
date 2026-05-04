Received: (qmail 21625 invoked by uid 550); 4 May 2026 16:10:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15775 invoked from network); 4 May 2026 14:20:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <898273d9-a15d-bd59-3127-386da1c9ddc9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 14:20:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33007: Apache HTTP Server: mod_authn_socache crash 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.66

Description:

A NULL pointer dereference in the mod_authn_socache in Apache HTTP Server 2=
.4.66 and earlier allows an unauthenticated remote user to crash a child pr=
ocess in a caching forward proxy configuration.

Users are recommended to upgrade to version 2.4.67, which fixes this issue.

Credit:

Pavel Kohout, Aisle Research, Aisle.com (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33007

Timeline:

2026-03-04: Report received
2026-05-04: 2.4.67 released
2026-05-04: fixed in 2.4.x by r1933358

