Received: (qmail 29919 invoked by uid 550); 4 Dec 2025 15:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9937 invoked from network); 4 Dec 2025 14:50:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c2934340-dc06-85df-dccd-afa955b35576@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 14:45:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66200: Apache HTTP Server: mod_userdir+suexec bypass via
 AllowOverride FileInfo 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.7 through 2..4.65

Description:

mod_userdir+suexec bypass via AllowOverride FileInfo vulnerability in Apach=
e HTTP Server. Users with access to use the RequestHeader directive in htac=
cess can cause some CGI scripts to run under an unexpected userid.

This issue affects Apache HTTP Server: from 2.4.7 through 2.4.65.

Users are recommended to upgrade to version 2.4.66, which fixes the issue.

Credit:

Mattias =C3=85sander (Ume=C3=A5 University) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66200

Timeline:

2025-11-19: reported
2025-12-01: fixed in 2.4.x by r1930168

