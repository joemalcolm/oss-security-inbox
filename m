X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2538" "Thursday" "10" "June" "2021" "16:19:43" "+0200" "Daniel Beck" "ml@beckweb.net" nil "66" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "6" nil nil (number mark "U       ml@beckweb.n Jun 10   66/2538  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9738 invoked by uid 550); 10 Jun 2021 14:19:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9708 invoked from network); 10 Jun 2021 14:19:55 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <65194E9D-493D-49FA-9921-C75F737DEC56@beckweb.net>
Date: Thu, 10 Jun 2021 16:19:43 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1623334795;30b0bfe3;
X-HE-SMSGID: 1lrLX5-0002ZA-V3
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Kiuwan Plugin 1.6.1
* Kubernetes CLI Plugin 1.10.1
* XebiaLabs XL Deploy Plugin 10.0.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-06-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2370 / CVE-2021-21661
Kubernetes CLI Plugin 1.10.0 and earlier does not perform permission checks
in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-1981 / CVE-2021-21662
XebiaLabs XL Deploy Plugin 10.0.1 and earlier does not perform a permission
check in a method implementing form validation.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-1982 / CVE-2021-21663 (missing permission check) & CVE-2021-21664 =
(incorrect permission check) & CVE-2021-21665 (CSRF)
XebiaLabs XL Deploy Plugin 10.0.1 and earlier does not (correctly) perform
a permission check in a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing Username/password credentials stored in
Jenkins.

Additionally, this form validation method does not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.


SECURITY-2367 / CVE-2021-21666
Kiuwan Plugin 1.6.0 and earlier does not escape output that can indirectly
be controlled through query parameters in an error message for a form
validation endpoint.

This results in a reflected cross-site scripting (XSS) vulnerability.

NOTE: Only older releases of Jenkins are affected by this vulnerability.
Jenkins 2.275 and newer, LTS 2.263.2 and newer include a protection
preventing this from being exploitable.

