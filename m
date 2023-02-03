Received: (qmail 5882 invoked by uid 550); 4 Feb 2023 09:06:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21610 invoked from network); 3 Feb 2023 23:38:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dan Klco <dklco@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b96f4001-bed6-9594-c844-1766b8c8cefc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Feb 2023 23:38:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22849: Apache Sling App CMS: XSS in CMS Reference / UI
 Components 

Severity: low

Description:

An improper neutralization of input during web page generation ('Cross-site=
 Scripting') [CWE-79] vulnerability in Sling App CMS version 1.1.4 and prio=
r may allow an authenticated remote attacker to perform a reflected cross-s=
ite scripting (XSS) attack in multiple features.

Upgrade to Apache Sling App CMS >=3D 1.1.6

Credit:

Apache Sling would like to thank Eugene Lim and Sng Jay Kai from GOVTECH fo=
r reporting this issue (finder)

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22849

