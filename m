Received: (qmail 27994 invoked by uid 550); 11 Nov 2025 22:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26517 invoked from network); 11 Nov 2025 22:42:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5ab01499-f03d-b013-4454-c39d3d874d47@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Nov 2025 22:37:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-64405: Apache OpenOffice: Remote documents loaded without
 prompt via DDE function 

Severity: moderate=20

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

Apache OpenOffice documents can contain links. A missing Authorization vuln=
erability in Apache OpenOffice allowed an attacker to craft a document that=
 would cause external links=20
to be loaded without prompt. In the affected versions of Apache OpenOffice,=
 Calc spreadsheet containing DDE links to external files would=20
load the contents of those files without prompting the user for=20
permission to do so.

This issue affects Apache OpenOffice: through 4.1.15.

Users are recommended to upgrade to version 4.1.16, which fixes the issue.

Credit:

Louis Bettels, Technische Universit=C3=A4t Braunschweig (finder)

References:

https://www.openoffice.org/security/cves/CVE-2025-64405.html
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-64405

