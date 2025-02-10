Received: (qmail 5260 invoked by uid 550); 10 Feb 2025 06:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11744 invoked from network); 10 Feb 2025 05:52:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Carsten Ziegeler <cziegeler@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <015b75e0-4761-1cb4-0ff5-6d60fe54353c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Feb 2025 05:52:36 +0000
MIME-Version: 1.0
Subject: [oss-security] FELIX-6751: CVE-2025-25247: Apache Felix Webconsole: XSS in
 services console 

Severity: moderate

Affected versions:

- Apache Felix Webconsole Version 4.x through 4.9.8
- Apache Felix Webconsole Version 5.x through 5.0.8

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache Felix Webconsole.

This issue affects Apache Felix Webconsole 4.x up to 4.9.8 and 5.x up to 5.=
0.8.

Users are recommended to upgrade to version 4.9.10 or 5.0.10 or higher, whi=
ch fixes the issue.

Credit:

Viktor Mares (me@viktormares.com) (finder)

References:

https://felix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-25247

