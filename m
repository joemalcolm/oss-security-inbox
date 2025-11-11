Received: (qmail 22171 invoked by uid 550); 11 Nov 2025 22:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5866 invoked from network); 11 Nov 2025 22:36:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <207ef916-869c-2737-9ad9-5b35e665e06f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Nov 2025 22:35:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-64401: Apache OpenOffice: Remote documents loaded without
 prompt via IFrame 

Severity: moderate=20

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

Apache OpenOffice documents can contain links. A missing Authorization vuln=
erability in Apache OpenOffice=C2=A0allowed an attacker to craft a document=
 that would cause external links=20
to be loaded without prompt.=C2=A0In the affected versions of Apache OpenOf=
fice, documents that used "floating frames" linked to external files would=
=20
load the contents of those frames without prompting the user for=20
permission to do so.

This issue affects Apache OpenOffice: through 4.1.15.

Users are recommended to upgrade to version 4.1.16, which fixes the issue.

The LibreOffice suite reported this issue as=C2=A0CVE-2023-2255

Credit:

Amel Bouziane-Leblond for discovering and reporting the issue (finder)

References:

https://www.openoffice.org/security/cves/CVE-2025-64401.html
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-64401

