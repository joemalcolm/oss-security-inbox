Received: (qmail 28305 invoked by uid 550); 11 Nov 2025 22:53:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1396 invoked from network); 11 Nov 2025 22:43:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fd54cefb-abd9-09d6-22c6-22059d39a7e8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Nov 2025 22:38:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-64406: Apache OpenOffice: Possible memory corruption
 during CSV import 

Severity: important=20

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

An out-of-bounds Write vulnerability in Apache OpenOffice could allow an at=
tacker to craft a document that would crash the program, or otherwise corru=
pt other memory areas.

This issue affects Apache OpenOffice: through 4.1.15.

Users are recommended to upgrade to version 4.1.16, which fixes the issue.

Credit:

Damjan Jovanovic for discovering, reporting and fixing the issue (finder)

References:

https://www.openoffice.org/security/cves/CVE-2025-64406.html
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-64406

