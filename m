X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2864" "Wednesday" "30" "June" "2021" "18:28:03" "+0200" "Daniel Beck" "ml@beckweb.net" nil "83" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "6" nil nil (number mark "U       ml@beckweb.n Jun 30   83/2864  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24245 invoked by uid 550); 30 Jun 2021 16:28:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24215 invoked from network); 30 Jun 2021 16:28:15 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <071030FD-1E7C-4FD5-98C3-E2E6630E9BBF@beckweb.net>
Date: Wed, 30 Jun 2021 18:28:03 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1625070495;52b51799;
X-HE-SMSGID: 1lyd4G-0007mG-6E
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.300
* Jenkins LTS 2.289.2
* CAS Plugin 1.6.1
* requests-plugin 2.2.7, 2.2.8, and 2.2.13
* Selenium HTML report Plugin 1.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-06-30/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2278 / CVE-2021-21670
Jenkins 2.299 and earlier, LTS 2.289.1 and earlier allows users to cancel
queue items and abort builds of jobs for which they have Item/Cancel
permission even when they do not have Item/Read permission.


SECURITY-2371 / CVE-2021-21671
Jenkins 2.299 and earlier, LTS 2.289.1 and earlier does not invalidate the
existing session on login. This allows attackers to use social engineering
techniques to gain administrator access to Jenkins.

This vulnerability was introduced in Jenkins 2.266 and LTS 2.277.1.


SECURITY-2329 / CVE-2021-21672
Selenium HTML report Plugin 1.0 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers with the ability to control the report files parsed
using this plugin to have Jenkins parse a crafted report file that uses
external entities for extraction of secrets from the Jenkins controller or
server-side request forgery.


SECURITY-2387 / CVE-2021-21673
CAS Plugin 1.6.0 and earlier improperly determines that a redirect URL
after login is legitimately pointing to Jenkins.

This allows attackers to perform phishing attacks by having users go to a
Jenkins URL that will forward them to a different site after successful
authentication.


SECURITY-1995 / CVE-2021-21674
requests-plugin 2.2.6 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission to view the list of
pending requests.


SECURITY-2136 (1) / CVE-2021-21675
requests-plugin 2.2.12 and earlier does not require POST requests to
request and apply changes, resulting in cross-site request forgery (CSRF)
vulnerabilities.

These vulnerabilities allow attackers to create requests and/or have
administrators apply pending requests, like renaming or deleting jobs,
deleting builds, etc.


SECURITY-2136 (2) / CVE-2021-21676
requests-plugin 2.2.7 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission to send test emails to
an attacker-specified email address.

