Received: (qmail 16293 invoked by uid 550); 10 Jul 2025 17:35:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18261 invoked from network); 10 Jul 2025 17:14:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <84cbcd48-3bf5-0623-0d72-97008c12add1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:12:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-43204: Apache HTTP Server: SSRF with mod_headers setting
 Content-Type header 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.63

Description:

SSRF in Apache HTTP Server with mod_proxy loaded allows an attacker to send=
 outbound proxy requests to a URL controlled by the attacker.=C2=A0 Require=
s an unlikely configuration where mod_headers is configured to modify the C=
ontent-Type request or response header with a value provided in the HTTP re=
quest.

Users are recommended to upgrade to version 2.4.64 which fixes this issue.

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-43204

Timeline:

2024-08-07: reported
2025-07-07: 2.4.x revision

