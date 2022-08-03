Received: (qmail 3293 invoked by uid 550); 3 Aug 2022 21:07:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21988 invoked from network); 3 Aug 2022 20:46:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7b1d53fa-a746-b369-211d-a8400fd0ea77@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Aug 2022 20:46:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28731: Apache JSPWiki CSRF in UserPreferences.jsp 

Severity: critical

Description:

A carefully crafted request on UserPreferences.jsp could trigger an CSRF vu=
lnerability on Apache JSPWiki, which could allow the attacker to modify the=
 email associated with the attacked account, and then a reset password requ=
est from the login page.=20

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later. Installations >=3D =
2.7.0 can also enable user management workflows' manual approval to mitigat=
e the issue.=20

Credit:

This issue was discovered by Fabrice Perez, <fabioperez AT gmail DOT com>=20

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2022-28732

