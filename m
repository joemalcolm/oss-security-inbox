X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2603" "Wednesday" "21" "April" "2021" "16:13:32" "+0200" "Daniel Beck" "ml@beckweb.net" nil "76" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr 21   76/2603  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27685 invoked by uid 550); 21 Apr 2021 14:13:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27652 invoked from network); 21 Apr 2021 14:13:43 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <5949CABA-13A8-410A-BEED-7178D7423094@beckweb.net>
Date: Wed, 21 Apr 2021 16:13:32 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1619014423;fdd0c7c1;
X-HE-SMSGID: 1lZDbg-0005lw-FL
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* CloudBees CD Plugin 1.1.22
* Config File Provider Plugin 3.7.1
* Templating Engine Plugin 2.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-04-21/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2204 / CVE-2021-21642
Config File Provider Plugin 3.7.0 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers with the ability to define Maven configuration files
to have Jenkins parse a crafted configuration file that uses external
entities for extraction of secrets from the Jenkins controller or
server-side request forgery.


SECURITY-2254 / CVE-2021-21643
Config File Provider Plugin 3.7.0 and earlier does not correctly perform
permission checks in several HTTP endpoints.

This allows attackers with global Job/Configure permission to enumerate
system-scoped credentials IDs of credentials stored in Jenkins. Those can
be used as part of an attack to capture the credentials using another
vulnerability.


SECURITY-2202 / CVE-2021-21644
Config File Provider Plugin 3.7.0 and earlier does not require POST
requests for an HTTP endpoint, resulting in a cross-site request forgery
(CSRF) vulnerability.

This vulnerability allows attackers to delete configuration files
corresponding to an attacker-specified ID.


SECURITY-2203 / CVE-2021-21645
Config File Provider Plugin 3.7.0 and earlier does not perform permission
checks in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate
configuration file IDs.


SECURITY-2311 / CVE-2021-21646
Templating Engine Plugin 2.1 and earlier does not protect its pipeline
configurations using Script Security Plugin.

This vulnerability allows attackers with Job/Configure permission to
execute arbitrary code in the context of the Jenkins controller JVM.


SECURITY-2309 / CVE-2021-21647
CloudBees CD Plugin 1.1.21 and earlier does not perform a permission check
in an HTTP endpoint.

This allows attackers with Item/Read permission to schedule builds of
projects without having Item/Build permission.


