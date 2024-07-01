Received: (qmail 3371 invoked by uid 550); 1 Jul 2024 13:56:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30667 invoked from network); 1 Jul 2024 12:43:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eb3b3750-382e-e1f8-f753-3e41f5019aa6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:41:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38472: Apache HTTP Server on WIndows UNC SSRF 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

SSRF in Apache HTTP Server on Windows allows to potentially leak NTML hashe=
s to a malicious server via SSRF and=C2=A0malicious requests or content=20
Users are recommended to upgrade to version 2.4.60 which fixes this issue.=
=C2=A0 Note: Existing configurations that access UNC paths will have to con=
figure new directive "UNCList" to allow access during request processing.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38472

Timeline:

2024-04-01: reported

