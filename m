X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2265" "Thursday" "3" "December" "2020" "16:22:46" "+0100" "Daniel Beck" "ml@beckweb.net" "<6A75EEA9-CCEB-432D-9D2E-AB8F66A325F0@beckweb.net>" "66" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "12" "2020120315:22:46" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Dec  3   66/2265  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17607 invoked by uid 550); 3 Dec 2020 15:22:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17589 invoked from network); 3 Dec 2020 15:22:58 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <6A75EEA9-CCEB-432D-9D2E-AB8F66A325F0@beckweb.net>
Date: Thu, 3 Dec 2020 16:22:46 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1607008978;3ac2a1de;
X-HE-SMSGID: 1kkqRS-0003FI-FR
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Chaos Monkey Plugin 0.4 and 0.4.1
* CVS Plugin 2.17
* Plugin Installation Manager Tool 2.2.0
* Shelve Project Plugin 3.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2020-12-03/?

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2146 / CVE-2020-2324
CVS Plugin 2.16 and earlier does not configure its XML parser to prevent
XML external entity (XXE) attacks.

This allows attackers able to control an agent process to have Jenkins
parse a crafted changelog file that uses external entities for extraction
of secrets from the Jenkins controller or server-side request forgery.


SECURITY-1856 / CVE-2020-2320
Plugin Installation Manager Tool is part of the Jenkins project Docker
images. As `jenkins-plugin-cli` it is used to download and install plugins
even before Jenkins is running.

Plugin Installation Manager Tool 2.1.3 and earlier does not verify plugin
downloads. This may allow third parties such as mirror operators to provide
crafted plugin downloads.


SECURITY-2108 / CVE-2020-2321
Shelve Project Plugin 3.0 and earlier does not require POST requests for
HTTP endpoints, resulting in cross-site request forgery (CSRF)
vulnerabilities.

These vulnerabilities allow attackers to shelve, unshelve, or delete a
project.


SECURITY-2109 (1) / CVE-2020-2322
Chaos Monkey Plugin 0.3 and earlier does not perform permission checks in
several HTTP endpoints.

This allows attackers with Overall/Read permission to generate load and to
generate memory leaks.


SECURITY-2109 (2) / CVE-2020-2323
Chaos Monkey Plugin 0.4 and earlier does not perform permission checks in
an HTTP endpoint.

This allows attackers with Overall/Read permission to access the Chaos
Monkey page and to see the history of actions.
