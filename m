Received: (qmail 3940 invoked by uid 550); 3 Aug 2022 21:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22183 invoked from network); 3 Aug 2022 20:46:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <00fa1dc6-2c61-66b7-1611-8158642e233b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Aug 2022 20:46:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-34158: Apache JSPWiki: User Group Privilege Escalation 

Severity: critical

Description:

A carefully crafted invocation on the Image plugin could trigger an CSRF vu=
lnerability on Apache JSPWiki, which could allow a group privilege escalati=
on of the attacker's account. Further examination of this issue established=
 that it could also be used to modify the email associated with the attacke=
d account, and then a reset password request from the login page.=20

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later.=20

Credit:

This issue was discovered by Huiseong Seo (t0rchwo0d), <awdr1624AT gmail DO=
T com>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2022-34158

