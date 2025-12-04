Received: (qmail 22143 invoked by uid 550); 4 Dec 2025 15:10:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1608 invoked from network); 4 Dec 2025 14:44:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d01979ff-c708-ea40-1077-d829bea3f234@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 14:42:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-58098: Apache HTTP Server: Server Side Includes adds
 query string to #exec cmd=... 

Severity: low=20

Affected versions:

- Apache HTTP Server before 2.4.66

Description:

Apache HTTP Server 2.4.65 and earlier with Server Side Includes (SSI) enabl=
ed and mod_cgid (but not mod_cgi) passes the shell-escaped query string to =
#exec cmd=3D"..." directives.

This issue affects Apache HTTP Server before 2.4.66.

Users are recommended to upgrade to version 2.4.66, which fixes the issue.

Credit:

Anthony Parfenov (United Rentals, Inc.) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-58098

Timeline:

2025-08-21: Reported to security team
2025-12-01: fixed in 2.4.x by r1930165

