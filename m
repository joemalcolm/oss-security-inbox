X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3538" "Wednesday" "23" "September" "2020" "14:57:59" "+0200" "Daniel Beck" "ml@beckweb.net" nil "96" nil "^Date:" nil nil "9" nil nil (number mark "U       ml@beckweb.n Sep 23   96/3538  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21548 invoked by uid 550); 23 Sep 2020 12:58:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21530 invoked from network); 23 Sep 2020 12:58:11 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <72558D3A-640E-4561-862F-91453510916E@beckweb.net>
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1600865891;2fac03ed;
X-HE-SMSGID: 1kL4LQ-0000yX-0q
Date: Wed, 23 Sep 2020 14:57:59 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Implied Labels Plugin 0.7
* Liquibase Runner Plugin 1.4.8
* Lockable Resources Plugin 2.9
* Script Security Plugin 1.75
* Warnings Plugin 5.0.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2020-09-23/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2020 / CVE-2020-2279
Script Security Plugin provides a sandbox feature that allows low
privileged users to define scripts, including Pipelines, that are generally
safe to execute. Calls to code defined inside a sandboxed script are
intercepted, and various allowlists are checked to determine whether the
call is to be allowed.

In Script Security Plugin 1.74 and earlier, any calls from outside a
sandboxed script to code defined inside a sandboxed script were always
allowed. As sandboxed scripts can communicate their results through script
return values and similar mechanisms, this could result in code defined
inside of a sandboxed script to be called without sandbox protection.

This vulnerability allows attackers with permission to define and run
sandboxed scripts, including Pipelines, to bypass the sandbox protection
and execute arbitrary code in the context of the Jenkins controller JVM.


SECURITY-2042 / CVE-2020-2280
Warnings Plugin 5.0.1 and earlier does not require POST requests for a form
validation method intended for testing custom warnings parsers, resulting
in a cross-site request forgery (CSRF) vulnerability.

This vulnerability allows attackers to execute arbitrary code.


SECURITY-1958 / CVE-2020-2281
Lockable Resources Plugin 2.8 and earlier does not require POST requests
for several HTTP endpoints, resulting in a cross-site request forgery
(CSRF) vulnerability.

This vulnerability allows attackers to reserve, unreserve, unlock, and
reset resources.


SECURITY-2004 / CVE-2020-2282
Implied Labels Plugin 0.6 and earlier does not perform a permission check
in an HTTP endpoint.

This allows attackers with Overall/Read permission to configure the plugin.


SECURITY-1885 / CVE-2020-2283
Liquibase Runner Plugin 1.4.5 and earlier does not escape changeset
contents when showing them on the build page.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to provide Liquibase changesets evaluated by
the plugin.


SECURITY-1887 / CVE-2020-2284
Liquibase Runner Plugin 1.4.5 and earlier does not configure its XML parser
to prevent XML external entity (XXE) attacks.

This allows attackers able to provide Liquibase changesets evaluated by the
plugin to have Jenkins parse a crafted XML file that uses external entities
for extraction of secrets from the Jenkins controller or server-side
request forgery.


SECURITY-2030 / CVE-2020-2285
Liquibase Runner Plugin 1.4.7 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.



