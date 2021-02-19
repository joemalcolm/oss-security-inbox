X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Friday" "19" "February" "2021" "15:59:09" "+0100" "Daniel Beck" "ml@beckweb.net" nil "33" "[oss-security] Vulnerability in Jenkins" nil nil nil "2" nil nil (number mark "U       ml@beckweb.n Feb 19   33/1256  " thread-indent "\"[oss-security] Vulnerability in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9527 invoked by uid 550); 19 Feb 2021 14:59:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9495 invoked from network); 19 Feb 2021 14:59:22 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <7E26B4AC-DFB1-4760-B719-E14133F103B5@beckweb.net>
Date: Fri, 19 Feb 2021 15:59:09 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1613746762;2aa2b859;
X-HE-SMSGID: 1lD7FO-0005z9-7j
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.280

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-02-19/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2195 / CVE-2021-22112
Spring Security 5.4.3 and earlier has a vulnerability that unintentionally
persisted temporarily elevated privileges in some circumstances in a user's
session. This issue, CVE-2021-22112, is resolved in Spring Security 5.4.4.

Jenkins 2.266 through 2.279 (inclusive) include releases of Spring
Security with this vulnerability.

We are aware of a sequence of operations in Jenkins 2.275 through 2.278
(inclusive) that allows attackers with Job/Workspace permission to exploit
this to switch their identity to SYSTEM, an internal user with all
permissions.

