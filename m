Received: (qmail 24177 invoked by uid 550); 4 Dec 2025 15:10:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24095 invoked from network); 4 Dec 2025 14:49:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f4b53f0f-f92c-c045-49bd-3538c39afbca@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 14:44:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-65082: Apache HTTP Server: CGI environment variable
 override 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.65

Description:

Improper Neutralization of Escape, Meta, or Control Sequences vulnerability=
 in Apache HTTP Server through environment variables set via the Apache con=
figuration unexpectedly superseding variables calculated by the server for =
CGI programs.

This issue affects Apache HTTP Server from 2.4.0 through 2.4.65.

Users are recommended to upgrade to version 2.4.66 which fixes the issue.

Credit:

Mattias =C3=85sander (Ume=C3=A5 University) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html`
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-65082

Timeline:

2025-11-14: reported
2025-12-01: fixed in 2.4.x by r1930167

