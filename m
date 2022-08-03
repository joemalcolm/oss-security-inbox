Received: (qmail 1869 invoked by uid 550); 3 Aug 2022 21:07:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21782 invoked from network); 3 Aug 2022 20:45:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <26cf4e70-ac27-10de-dde6-2358b99304a8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Aug 2022 20:45:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-27166: Apache JSPWiki: XSS vulnerability on
 XHRHtml2Markup.jsp in JSPWiki 2.11.2 

Severity: moderate

Description:

A carefully crafted request on XHRHtml2Markup.jsp could trigger an XSS vuln=
erability on Apache JSPWiki, which could allow the attacker to execute java=
script in the victim's browser and get some sensitive information about the=
 victim

Credit:

Issue was discovered by Salt, <saltnekoko AT gmail DOT com>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2022-28732

