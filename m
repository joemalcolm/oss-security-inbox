Received: (qmail 2024 invoked by uid 550); 3 Aug 2022 21:07:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21910 invoked from network); 3 Aug 2022 20:46:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cb402038-6b4f-e640-467d-652b8ca7cc26@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Aug 2022 20:45:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28730: Apache JSPWiki Cross-site scripting vulnerability
 on AJAXPreview.jsp 

Severity: moderate

Description:

A carefully crafted request on AJAXPreview.jsp could trigger an XSS vulnera=
bility on Apache JSPWiki, which could allow the attacker to execute javascr=
ipt in the victim's browser and get some sensitive information about the vi=
ctim.

This vulnerability leverages CVE-2021-40369, where the Denounce plugin dang=
erously renders user-supplied URLs. Upon re-testing CVE-2021-40369, it appe=
ars that the patch was incomplete as it was still possible to insert malici=
ous input via the Denounce plugin.=20

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later.=20

Credit:

This issue was discovered by Poh Jia Hao, from Star Labs <info AT starlabs =
DOT sg>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2022-28732

