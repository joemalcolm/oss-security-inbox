X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2742" "Wednesday" "7" "April" "2021" "15:16:47" "+0200" "Daniel Beck" "ml@beckweb.net" nil "73" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr  7   73/2742  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1304 invoked by uid 550); 7 Apr 2021 13:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1266 invoked from network); 7 Apr 2021 13:16:59 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <20F4F8CE-A291-4DE5-97B1-FFA7AB76C638@beckweb.net>
Date: Wed, 7 Apr 2021 15:16:47 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1617801419;4a001406;
X-HE-SMSGID: 1lU835-0001pZ-K1
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.287
* Jenkins LTS 2.277.2
* Micro Focus Application Automation Tools Plugin 6.8
* promoted builds Plugin 3.9.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-04-07/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1721 / CVE-2021-21639
Jenkins 2.286 and earlier, LTS 2.277.1 and earlier does not validate the
type of object created after loading the data submitted to the `config.xml`
REST API endpoint of a node.

This allows attackers with Computer/Configure permission to replace a node
with one of a different type.


SECURITY-1871 / CVE-2021-21640
Jenkins 2.286 and earlier, LTS 2.277.1 and earlier does not properly check
that a newly created view has an allowed name. When a form to create a view
is submitted, the name is included twice in the submission. One instance is
validated, but the other instance is used to create the value.

This allows attackers with View/Create permission to create views with
invalid or already-used names.


SECURITY-2293 / CVE-2021-21641
promoted builds Plugin 3.9 and earlier does not require POST requests for
HTTP endpoints implementing promotion (regular, forced, and re-execute),
resulting in cross-site request forgery (CSRF) vulnerabilities.

These vulnerabilities allow attackers to promote builds.


SECURITY-2132 / CVE-2021-22512 (CSRF) & CVE-2021-22513 (permission check)
Micro Focus Application Automation Tools Plugin 6.7 and earlier does not
perform permission checks in methods implementing form validation.

This allows attackers with Overall/Read permission to connect to
attacker-specified URLs using attacker-specified username and password.

Additionally, these form validation methods do not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.


SECURITY-2175 / CVE-2021-22510
Micro Focus Application Automation Tools Plugin 6.7 and earlier does not
escape user input in a form validation response.

This results in a reflected cross-site scripting (XSS) vulnerability.


SECURITY-2176 / CVE-2021-22511
Micro Focus Application Automation Tools Plugin 6.7 and earlier
unconditionally disables SSL/TLS certificate validation for connections to
Service Virtualization servers.
