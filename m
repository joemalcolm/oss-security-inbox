X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2495" "Monday" "22" "January" "2018" "12:35:15" "+0100" "Daniel Beck" "ml@beckweb.net" "<9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>" "77" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "1" "2018012211:35:15" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jan 22   77/2495  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13828 invoked by uid 550); 22 Jan 2018 11:35:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13809 invoked from network); 22 Jan 2018 11:35:27 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>
Date: Mon, 22 Jan 2018 12:35:15 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1516620927;e8267485;
X-HE-SMSGID: 1edaNg-0003mS-9l
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around=
=20
the world to reliably build, test, and deploy their software. The following=
=20
plugin releases contain fixes for security vulnerabilities:

* Ant plugin 1.8
* Checkstyle plugin 3.50
* DRY plugin 2.50
* FindBugs plugin 4.72
* Pipeline: Nodes and Processes plugin 2.18
* PMD plugin 3.50
* Release plugin 2.10
* Translation Assistance plugin 1.16
* Warnings plugin 4.65

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-01-22/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-655 (PMD)
SECURITY-656 (Checkstyle)
SECURITY-657 (DRY)
SECURITY-658 (FindBugs)
SECURITY-695 (Warnings)
Multiple plugins based on the Static Analysis Utilities plugin are affected=
 by=20
an XML External Entity (XXE) processing vulnerability. This allows attacker=
 to=20
configure build processes so that one of these plugins parses a maliciously=
=20
crafted file that uses external entities for extraction of secrets from the=
=20
Jenkins master, server-side request forgery, or denial-of-service attacks.


SECURITY-607
Release plugin did not require form submissions to be submitted via POST,=20
resulting in a CSRF vulnerability allowing attackers to trigger release bui=
lds.


SECURITY-507
Translation Assistance did not require form submissions to be submitted via=
=20
POST, resulting in a CSRF vulnerability allowing attackers to override=20
localized strings displayed to all users on the current Jenkins instance if=
=20
the victim is a Jenkins administrator.


SECURITY-675
On instances with Authorize Project plugin, the authentication associated w=
ith=20
a build may lack the Computer/Build permission on some agents. This did not=
=20
prevent the execution of Pipeline `node` blocks on those agents due to=20
incorrect permissions checks in Pipeline: Nodes and Processes plugin.


SECURITY-624 and SECURITY-694
Ant plugin failed to escape tool names it shows on job configuration=20
screens, resulting in a cross-site scripting (XSS) vulnerability that is=20
exploitable only by Jenkins administrators.

This is the same vulnerability that was announced without a fix on 2017-12-=
05.

