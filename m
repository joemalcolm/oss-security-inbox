Received: (qmail 21685 invoked by uid 550); 4 Dec 2025 15:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30400 invoked from network); 4 Dec 2025 14:40:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2d695126-80fb-9e45-4555-bf91c2fb9ffe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 14:40:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55753: Apache HTTP Server: mod_md (ACME), unintended
 retry intervals 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.30 before 2.4.66

Description:

An integer overflow in the case of failed ACME certificate renewal leads, a=
fter a number of failures (~30 days in default configurations), to the back=
off timer becoming 0. Attempts to renew the certificate then are repeated w=
ithout delays until it succeeds.

This issue affects Apache HTTP Server: from 2.4.30 before 2.4.66.


Users are recommended to upgrade to version 2.4.66, which fixes the issue.

Credit:

Aisle Research (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-55753

Timeline:

2025-08-15: reported
2025-11-20: fixed by r1929884 in 2.4.x

