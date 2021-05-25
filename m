X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2584" "Tuesday" "25" "May" "2021" "15:51:38" "+0200" "Daniel Beck" "ml@beckweb.net" nil "65" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "5" nil nil (number mark "U       ml@beckweb.n May 25   65/2584  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21794 invoked by uid 550); 25 May 2021 13:51:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21758 invoked from network); 25 May 2021 13:51:49 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <B2FAC626-36E6-404C-ADE2-9C47AD1095A9@beckweb.net>
Date: Tue, 25 May 2021 15:51:38 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1621950709;47cf9a43;
X-HE-SMSGID: 1llXT8-0003g7-8x
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Filesystem Trigger Plugin 0.41
* Markdown Formatter Plugin 0.2.0
* Nuget Plugin 1.1
* URLTrigger Plugin 0.49


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-05-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2339 / CVE-2021-21657
Filesystem Trigger Plugin 0.40 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers with Job/Configure permission or otherwise able to
control the contents of an XML file being polled for changes to have
Jenkins parse a crafted XML document that uses external entities for
extraction of secrets from the polling Jenkins controller or agent,
server-side request forgery, or denial-of-service attacks.


SECURITY-2340 / CVE-2021-21658
Nuget Plugin 1.0 and earlier does not configure its XML parser to prevent
XML external entity (XXE) attacks. This XML parser is used for the "Build
on NuGet updates" feature.

This allows attackers with the ability to control the contents of the
`packages.config` file in a workspace to have Jenkins parse a crafted XML
document that uses external entities for extraction of secrets from the
Jenkins controller or server-side request forgery.


SECURITY-2341 / CVE-2021-21659
URLTrigger Plugin 0.48 and earlier does not configure its XML parser to
prevent XML external entity (XXE) attacks.

This allows attackers with Job/Configure permission or otherwise able to
control the contents of an URL to an XML document being examined for
changes to have Jenkins parse a crafted XML document that uses external
entities for extraction of secrets from the polling Jenkins controller or
agent, server-side request forgery, or denial-of-service attacks.


SECURITY-2198 / CVE-2021-21660
Markdown Formatter Plugin 0.1.0 and earlier uses a Markdown library to
parse Markdown that does not escape crafted link target URLs.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with the ability to edit any description rendered
using the configured markup formatter.

