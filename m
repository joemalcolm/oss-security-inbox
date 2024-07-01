Received: (qmail 7824 invoked by uid 550); 1 Jul 2024 13:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9285 invoked from network); 1 Jul 2024 12:48:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <975d8aa6-2a50-a975-fcd6-0282e3f69e97@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:43:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39573: Apache HTTP Server: mod_rewrite proxy handler
 substitution 

Severity: moderate

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

Potential SSRF in mod_rewrite in Apache HTTP Server 2.4.59 and earlier allo=
ws an attacker to cause unsafe RewriteRules to unexpectedly setup URL's to =
be handled by mod_proxy.
Users are recommended to upgrade to version 2.4.60, which fixes this issue.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-39573

Timeline:

2024-04-01: reported

