Received: (qmail 29761 invoked by uid 550); 11 Nov 2025 22:54:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7921 invoked from network); 11 Nov 2025 22:44:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <061ff270-2be4-4380-ad9f-ccb79a5d1db4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Nov 2025 22:38:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-64407: Apache OpenOffice: URL fetching can be used to
 exfiltrate arbitrary INI file values and environment variables 

Severity: Moderate=20

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

Apache OpenOffice documents can contain links. A missing Authorization vuln=
erability in Apache OpenOffice allowed an attacker to craft a document that=
 would cause external links=20
to be loaded without prompt. Such links could also be used to transmit syst=
em information, such as environment variables or configuration settings.

In the affected versions of Apache OpenOffice, documents that used a certai=
n URI scheme linking to external files would=20
load the contents of such files without prompting the user for=20
permission to do so. Such URI scheme allows to include system configuration=
 data, that is not supposed to be transmitted externally.

This issue affects Apache OpenOffice: through 4.1.15.

Users are recommended to upgrade to version 4.1.16, which fixes the issue.





The LibreOffice suite reported this issue as=C2=A0CVE-2024-12426.

Credit:

Thomas Rinsma of Codean Labs (finder)

References:

https://www.openoffice.org/security/cves/CVE-2025-64407.html
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-64407

