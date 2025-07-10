Received: (qmail 23869 invoked by uid 550); 10 Jul 2025 17:36:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28667 invoked from network); 10 Jul 2025 17:21:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <57ea0fcc-9989-22fe-63e8-3d3532df679a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:14:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23048: Apache HTTP Server: mod_ssl access control bypass
 with session resumption 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.35 through 2.4.63

Description:

In some mod_ssl configurations on Apache HTTP Server 2.4.35 through to 2.4.=
63, an access control bypass by trusted clients is possible using TLS 1.3 s=
ession resumption.

Configurations are affected when mod_ssl is configured for multiple virtual=
 hosts, with each restricted to a different set of trusted client certifica=
tes (for example with a different SSLCACertificateFile/Path setting). In su=
ch a case, a client trusted to access one virtual host may be able to acces=
s another virtual host, if SSLStrictSNIVHostCheck is not enabled in either =
virtual host.

Credit:

Sven Hebrok, Felix Cramer, Tim Storm, Maximilian Radoy, and Juraj Somorovsk=
y at Paderborn University (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-23048

Timeline:

2024-11-25: reported
2025-07-07: 2.4.x revision 1927043

