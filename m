X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4488" "Tuesday" "30" "March" "2021" "12:52:09" "+0200" "Daniel Beck" "ml@beckweb.net" nil "120" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "3" nil nil (number mark "U       ml@beckweb.n Mar 30  120/4488  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26082 invoked by uid 550); 30 Mar 2021 10:52:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26050 invoked from network); 30 Mar 2021 10:52:21 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <53E5A455-9A38-4A00-9D2C-E12BFA7EE5B0@beckweb.net>
Date: Tue, 30 Mar 2021 12:52:09 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1617101541;2da466cf;
X-HE-SMSGID: 1lRByj-0007xt-FS
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Build With Parameters Plugin 1.5.1
* Cloud Statistics Plugin 0.27
* Extra Columns Plugin 1.23
* Jabber (XMPP) notifier and control Plugin 1.42
* OWASP Dependency-Track Plugin 3.1.1
* REST List Parameter Plugin 1.3.1

Additionally, we announce unresolved security issues in the following
plugins:

* Team Foundation Server Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-03-30/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2231 / CVE-2021-21628
Build With Parameters Plugin 1.5 and earlier does not escape parameter
names and descriptions.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-2257 / CVE-2021-21629
Build With Parameters Plugin 1.5 and earlier does not require POST requests
for its form submission endpoint, resulting in a cross-site request forgery
(CSRF) vulnerability.

This vulnerability allows attackers to build a project with
attacker-specified parameters.


SECURITY-2222 / CVE-2021-21630
Extra Columns Plugin 1.22 and earlier does not escape parameter values in
the build parameters column.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission. Additionally, a
view containing such a job needs to be configured with the build parameters
column, or the attacker also needs View/Configure permission.


SECURITY-2246 / CVE-2021-21631
Cloud Statistics Plugin 0.26 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission and knowledge of random
activity IDs to view related provisioning exception error messages.


SECURITY-2250 / CVE-2021-21632 (permission check) & CVE-2021-21633 (CSRF)
OWASP Dependency-Track Plugin 3.1.0 and earlier does not perform permission
checks in several HTTP endpoints.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing "Secret text" credentials stored in
Jenkins. If no credentials ID is specified, the globally configured
credential is used, if set up, and can likewise be captured.

Additionally, these HTTP endpoints do not require POST requests, resulting
in a cross-site request forgery (CSRF) vulnerability.


SECURITY-2162 / CVE-2021-21634
Jabber (XMPP) notifier and control Plugin 1.41 and earlier stores passwords
unencrypted in its global configuration file
`hudson.plugins.jabber.im.transport.JabberPublisher.xml` on the Jenkins
controller as part of its configuration.

These passwords can be viewed by users with access to the Jenkins
controller file system.


SECURITY-2261 / CVE-2021-21635
REST List Parameter Plugin 1.3.0 and earlier does not escape a parameter
name reference in embedded JavaScript.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-2283 (1) / CVE-2021-21636
Team Foundation Server Plugin 5.157.1 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-2283 (2) / CVE-2021-21637 (permission check) & CVE-2021-21638 (CSRF)
Team Foundation Server Plugin 5.157.1 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing credentials stored in Jenkins.

Additionally, this HTTP endpoint does not require POST requests, resulting
in a cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.
