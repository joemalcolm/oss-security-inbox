Received: (qmail 3434 invoked by uid 550); 3 Aug 2022 21:07:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22121 invoked from network); 3 Aug 2022 20:46:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <de967f01-c64a-fcc6-231a-d454a1f7dcd5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Aug 2022 20:46:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28732: Apache JSPWiki Cross-site scripting vulnerability
 on WeblogPlugin 

Severity: moderate

Description:

A carefully crafted request on WeblogPlugin could trigger an XSS vulnerabil=
ity on Apache JSPWiki, which could allow the attacker to execute javascript=
 in the victim's browser and get some sensitive information about the victi=
m.=20

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later.=20

Credit:

This issue was discovered by Wang Ran, from JDArmy, @jd.com=20

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2022-28732

