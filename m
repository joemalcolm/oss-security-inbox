X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2622" "Tuesday" "31" "August" "2021" "15:45:02" "+0200" "Daniel Beck" "ml@beckweb.net" nil "71" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "8" nil nil (number mark "U       ml@beckweb.n Aug 31   71/2622  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23940 invoked by uid 550); 31 Aug 2021 13:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23908 invoked from network); 31 Aug 2021 13:45:16 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Message-Id: <50166790-02D0-4268-BA79-FF5236A664D5@beckweb.net>
Date: Tue, 31 Aug 2021 15:45:02 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.100.0.2.22)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1630417516;925dbfa1;
X-HE-SMSGID: 1mL44X-00046A-Hh
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Azure AD Plugin 180.v8b1e80e6f242
* Code Coverage API Plugin 1.4.1
* Nested View Plugin 1.21
* Nomad Plugin 0.7.5
* SAML Plugin 2.0.8


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-08-31/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2376 / CVE-2021-21677
Code Coverage API Plugin 1.4.0 and earlier does not apply JEP-200
deserialization protection to Java objects it deserializes from disk.

This results in a remote code execution (RCE) vulnerability exploitable by
attackers able to control agent processes.


SECURITY-2469 / CVE-2021-21678
An extension point in Jenkins allows selectively disabling cross-site
request forgery (CSRF) protection for specific URLs. SAML Plugin implements
this extension point for the URL that users are redirected to after login.

In SAML Plugin 2.0.7 and earlier this implementation is too permissive,
allowing attackers to craft URLs that would bypass the CSRF protection of
any target URL.


SECURITY-2470 / CVE-2021-21679
An extension point in Jenkins allows selectively disabling cross-site
request forgery (CSRF) protection for specific URLs. Azure AD Plugin
implements this extension point for URLs used by a JavaScript component.

In Azure AD Plugin 179.vf6841393099e and earlier this implementation is too
permissive, allowing attackers to craft URLs that would bypass the CSRF
protection of any target URL.


SECURITY-2411 / CVE-2021-21680
Nested View Plugin 1.20 and earlier does not configure its XML transformer
to prevent XML external entity (XXE) attacks.

This allows attackers able to configure views to have Jenkins parse a
crafted view XML definition that uses external entities for extraction of
secrets from the Jenkins controller or server-side request forgery.


SECURITY-2396 / CVE-2021-21681
Nomad Plugin 0.7.4 and earlier stores the passwords to authenticate against
the Docker registry unencrypted in the global `config.xml` file on the
Jenkins controller as part of its worker templates configuration.

These passwords can be viewed by users with access to the Jenkins
controller file system.


