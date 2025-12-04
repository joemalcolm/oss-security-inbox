Received: (qmail 23650 invoked by uid 550); 4 Dec 2025 15:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13776 invoked from network); 4 Dec 2025 14:45:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3a94382f-3baa-f85c-8e69-1f8db2ce68a5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Dec 2025 14:44:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59775: Apache HTTP Server: NTLM Leakage on Windows
 through UNC SSRF 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.65

Description:

Server-Side Request Forgery (SSRF) vulnerability=20

=C2=A0in Apache HTTP Server on Windows=20

with AllowEncodedSlashes On=C2=A0and MergeSlashes Off=C2=A0 allows to poten=
tially leak NTLM=20
hashes to a malicious server via SSRF and malicious requests or content

Users are recommended to upgrade to version 2.4.66, which fixes the issue.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-59775

Timeline:

2025-09-10: reported
2025-12-01: fixed in 2.4.x by r1930166

