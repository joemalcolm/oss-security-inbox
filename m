X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3503" "Tuesday" "11" "May" "2021" "15:44:37" "+0200" "Daniel Beck" "ml@beckweb.net" nil "98" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "5" nil nil (number mark "U       ml@beckweb.n May 11   98/3503  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1514 invoked by uid 550); 11 May 2021 13:44:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1477 invoked from network); 11 May 2021 13:44:49 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <59CE18A6-1040-41CB-9058-F0E116A6E51A@beckweb.net>
Date: Tue, 11 May 2021 15:44:37 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1620740689;2865e606;
X-HE-SMSGID: 1lgSgf-0002ce-Iv
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Credentials Plugin 2.3.19
* Dashboard View Plugin 2.16
* P4 Plugin 1.11.5
* S3 publisher Plugin 0.11.7
* Xcode integration Plugin 2.0.15
* Xray - Test Management for Jira Plugin 2.4.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-05-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2349 / CVE-2021-21648
Credentials Plugin 2.3.18 and earlier does not escape user-controlled
information on a view it provides.

This results in a reflected cross-site scripting (XSS) vulnerability.


SECURITY-2233 / CVE-2021-21649
Dashboard View Plugin 2.15 and earlier does not escape URLs referenced in
Image Dashboard Portlets.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with View/Configure permission.


SECURITY-2200 / CVE-2021-21650
S3 publisher Plugin 0.11.6 and earlier does not perform Run/Artifacts
permission checks in various HTTP endpoints and API models.

This allows attackers with Item/Read permission to obtain information about
artifacts uploaded to S3, if the optional Run/Artifacts permission is
enabled.


SECURITY-2201 / CVE-2021-21651
S3 publisher Plugin 0.11.6 and earlier does not perform a permission check
in an HTTP endpoint.

This allows attackers with Overall/Read permission to obtain the list of
configured profiles.


SECURITY-2251 (1) / CVE-2021-21652
Xray - Test Management for Jira Plugin 2.4.0 and earlier does not require
POST requests for a connection test method, resulting in a cross-site
request forgery (CSRF) vulnerability.

This vulnerability allows attackers to connect to an attacker-specified URL
using attacker-specified credentials IDs obtained through another method,
capturing credentials stored in Jenkins.


SECURITY-2251 (2) / CVE-2021-21653
Xray - Test Management for Jira Plugin 2.4.0 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-2327 / CVE-2021-21654 (permission check) & CVE-2021-21655 (CSRF)
P4 Plugin 1.11.4 and earlier does not perform permission checks in multiple
HTTP endpoints implementing connection tests.

This allows attackers with Overall/Read permission to connect to an
attacker-specified Perforce server using attacker-specified username and
password.

Additionally, these HTTP endpoints do not require POST requests, resulting
in a cross-site request forgery (CSRF) vulnerability.


SECURITY-2335 / CVE-2021-21656
Xcode integration Plugin 2.0.14 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers able to control the input files for the Xcode build
step to have Jenkins parse a crafted Xcode Workspace File that uses
external entities for extraction of secrets from the Jenkins controller or
server-side request forgery.

