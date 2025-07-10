Received: (qmail 24550 invoked by uid 550); 10 Jul 2025 17:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3723 invoked from network); 10 Jul 2025 17:22:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5bbebf77-c7f8-fe13-223e-6d0a9eb85779@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:14:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-49812: Apache HTTP Server: mod_ssl TLS upgrade attack 

Severity: moderate=20

Affected versions:

- Apache HTTP Server through 2.4.63

Description:

In some mod_ssl configurations on Apache HTTP Server versions through to 2.=
4.63, an HTTP desynchronisation attack allows a man-in-the-middle attacker =
to hijack an HTTP session via a TLS upgrade.

Only configurations using "SSLEngine optional" to enable TLS upgrades are a=
ffected. Users are recommended to upgrade to version 2.4.64, which removes =
support for TLS upgrade.

Credit:

Robert Merget (Technology Innovation Institute) (finder)
Nurullah Erinola (Ruhr University Bochum) (finder)
Marcel Maehren (Ruhr University Bochum) (finder)
Lukas Knittel (Ruhr University Bochum) (finder)
Sven Hebrok (Paderborn University) (finder)
Marcus Brinkmann (Ruhr University Bochum) (finder)
Juraj Somorovsky (Paderborn University) (finder)
J=C3=B6rg Schwenk (Ruhr University Bochum) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-49812

Timeline:

2025-04-22: Report received
2025-07-07: 2.4.x revision 1927045

