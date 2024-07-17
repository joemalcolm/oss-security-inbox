Received: (qmail 32141 invoked by uid 550); 17 Jul 2024 18:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26193 invoked from network); 17 Jul 2024 18:25:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0c68c79b-0282-398c-8e96-3eb19d9f1bc2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jul 2024 18:25:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-40898: Apache HTTP Server: SSRF with mod_rewrite in
 server/vhost context on Windows 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.61

Description:

SSRF in Apache HTTP Server on Windows with mod_rewrite in server/vhost cont=
ext, allows to potentially leak NTML hashes to a malicious server via SSRF =
and malicious requests.

Users are recommended to upgrade to version 2.4.62 which fixes this issue.

Credit:

Smi1e (DBAPPSecurity Ltd.) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-40898

Timeline:

2024-07-12: reported

