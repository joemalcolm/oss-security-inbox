X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3085" "Wednesday" "24" "February" "2021" "15:52:03" "+0100" "Daniel Beck" "ml@beckweb.net" nil "90" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "2" nil nil (number mark "U       ml@beckweb.n Feb 24   90/3085  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7946 invoked by uid 550); 24 Feb 2021 14:52:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7907 invoked from network); 24 Feb 2021 14:52:15 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <5DAF172D-4EC3-48C9-9A8C-C55B14478B40@beckweb.net>
Date: Wed, 24 Feb 2021 15:52:03 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1614178335;3d5cccac;
X-HE-SMSGID: 1lEvWF-0002Iq-PM
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins


Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Active Choices Plugin 2.5.3
* Artifact Repository Parameter Plugin 1.0.1
* Claim Plugin 2.18.2
* Configuration Slicing Plugin 1.52
* Repository Connector Plugin 2.0.3
* Support Core Plugin 2.72.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-02-24/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2192 / CVE-2021-21616
Active Choices Plugin 2.5.2 and earlier does not escape reference parameter
values.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-2003 / CVE-2021-21617
Configuration Slicing Plugin 1.51 and earlier does not require POST
requests for the form submission endpoint reconfiguring slices, resulting
in a cross-site request forgery (CSRF) vulnerability.

This vulnerability allows attackers to apply different slice configurations
to attacker-specified jobs.


SECURITY-2183 / CVE-2021-21618
Repository Connector Plugin 2.0.2 and earlier does not escape parameter
names and descriptions for past builds.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.


SECURITY-2188 (1) / CVE-2021-21619
Claim Plugin 2.18.1 and earlier does not escape the user display name shown
in claims.

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers who are able to control the display names of Jenkins users,
either via the security realm, or directly inside Jenkins.

NOTE: Everyone with a Jenkins account can change their own display name.


SECURITY-2188 (2) / CVE-2021-21620
Claim Plugin 2.18.1 and earlier does not require POST requests for the form
submission endpoint assigning claims, resulting in a cross-site request
forgery (CSRF) vulnerability.

This vulnerability allows attackers to change claims.


SECURITY-2150 / CVE-2021-21621
Support Core Plugin 2.72 and earlier provides the serialized user
authentication as part of the "About user (basic authentication details
only)" information (`user.md`).

In some configurations, this can include the session ID of the user
creating the support bundle. Attackers with access to support bundle
content and the Jenkins instance could use this information to impersonate
the user who created the support bundle.


SECURITY-2168 / CVE-2021-21622
Artifact Repository Parameter Plugin 1.0.0 and earlier does not escape
parameter names and descriptions.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


