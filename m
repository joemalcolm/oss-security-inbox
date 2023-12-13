Received: (qmail 5448 invoked by uid 550); 13 Dec 2023 21:28:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29782 invoked from network); 13 Dec 2023 21:24:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brian Demers <bdemers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <03657eca-b6ef-5e25-15f9-832df4274f3d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Dec 2023 21:24:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46750: Apache Shiro: URL Redirection to Untrusted Site
 ('Open Redirect') vulnerability in FORM authentication feature Apache
 Shiro. 

Severity: moderate

Affected versions:

- Apache Shiro before 1.13.0
- Apache Shiro 2.0.0-alpha-1 before 2.0.0-alpha-4

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability when "for=
m" authentication is used in Apache Shiro.
Mitigation: Update to Apache Shiro 1.13.0+ or 2.0.0-alpha-4+.

Credit:

Claudio Villella (finder)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46750

