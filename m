X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3148" "Friday" "12" "November" "2021" "11:19:00" "+0100" "Daniel Beck" "ml@beckweb.net" nil "89" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "11" nil nil (number mark "U       ml@beckweb.n Nov 12   89/3148  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13488 invoked by uid 550); 12 Nov 2021 10:19:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13458 invoked from network); 12 Nov 2021 10:19:17 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Message-Id: <8C08F56A-5199-491A-B7FB-1E0B9ACEB4FD@beckweb.net>
Date: Fri, 12 Nov 2021 11:19:00 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.100.0.2.22)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1636712357;1781a6d3;
X-HE-SMSGID: 1mlTeE-0003aW-0N
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Active Choices Plugin 2.5.7
* Scriptler Plugin 3.4

Additionally, we announce unresolved security issues in the following
plugins:

* OWASP Dependency-Check Plugin
* Performance Plugin
* pom2config Plugin
* Squash TM Publisher (Squash4Jenkins) Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-11-12/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2219 / CVE-2021-21699
Active Choices Plugin 2.5.6 and earlier does not escape the parameter name
of reactive parameters and dynamic reference parameters.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-2406 / CVE-2021-21700
Scriptler Plugin 3.3 and earlier does not escape the name of scripts on the
UI when asking to confirm their deletion.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to create Scriptler scripts.


SECURITY-2394 / CVE-2021-21701
Performance Plugin 3.20 and earlier does not configure its XML parser to
prevent XML external entity (XXE) attacks.

This allows attackers able to control workspace contents to have Jenkins
parse a crafted XML report file that uses external entities for extraction
of secrets from the Jenkins controller or server-side request forgery.

As of publication of this advisory, there is no fix.


SECURITY-2415 / CVE-2021-43576
pom2config Plugin 1.2 and earlier does not configure its XML parser to
prevent XML external entity (XXE) attacks.

This allows attackers with Overall/Read and Item/Read permissions to have
Jenkins parse a crafted XML file that uses external entities for extraction
of secrets from the Jenkins controller or server-side request forgery.

As of publication of this advisory, there is no fix.


SECURITY-2488 / CVE-2021-43577
OWASP Dependency-Check Plugin 5.1.1 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers able to control workspace contents to have Jenkins
parse a crafted XML file that uses external entities for extraction of
secrets from the Jenkins controller or server-side request forgery.

As of publication of this advisory, there is no fix.


SECURITY-2525 / CVE-2021-43578
Squash TM Publisher (Squash4Jenkins) Plugin 1.0.0 and earlier implements an
agent-to-controller message that does not implement any validation of its
input.

This allows attackers able to control agent processes to replace arbitrary
files on the Jenkins controller file system with an attacker-controlled
JSON string.

As of publication of this advisory, there is no fix.

