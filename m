Received: (qmail 26230 invoked by uid 550); 10 Jul 2025 17:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10158 invoked from network); 10 Jul 2025 17:23:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2d9d676e-2192-fb2d-1699-8d5092d38ff6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:14:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-53020: Apache HTTP Server: HTTP/2 DoS by Memory Increase 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.17 through 2.4.63

Description:

Late Release of Memory after Effective Lifetime vulnerability in Apache HTT=
P Server.

This issue affects Apache HTTP Server: from 2.4.17 up to 2.4.63.

Users are recommended to upgrade to version 2.4.64, which fixes the issue.

Credit:

Gal Bar Nahum (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-53020

Timeline:

2025-06-18: reported
2025-06-19: fix developed
2025-07-07: 2.4.x revision 1927046

