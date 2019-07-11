X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3126" "Thursday" "11" "July" "2019" "15:46:00" "+0200" "Daniel Beck" "ml@beckweb.net" "<94DB5F9B-7D5A-474C-A997-95C4C6F9E02A@beckweb.net>" "85" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "7" "2019071113:46:00" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jul 11   85/3126  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3878 invoked by uid 550); 11 Jul 2019 13:46:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3858 invoked from network); 11 Jul 2019 13:46:14 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <94DB5F9B-7D5A-474C-A997-95C4C6F9E02A@beckweb.net>
Date: Thu, 11 Jul 2019 15:46:00 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1562852774;232352ee;
X-HE-SMSGID: 1hlZOc-0001Me-SX
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Docker Plugin 1.1.7
* Embeddable Build Status Plugin 2.0.2
* Gogs Plugin 1.0.15
* Mashup Portlets Plugin 1.1.0

Additionally, we announce unresolved security issues in the following
plugins:

* Caliper CI Plugin
* Dependency Graph Viewer Plugin
* Port Allocator Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-07-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---



SECURITY-1010 / CVE-2019-10340 (CSRF), CVE-2019-10341 (permission check)
Docker Plugin did not perform permission checks on a method implementing 
form validation. This allowed users with Overall/Read access to Jenkins to 
connect to an attacker-specified URL using attacker-specified credentials 
IDs obtained through another method, capturing credentials stored in Jenkins.

Additionally, this form validation method did not require POST requests, 
resulting in a cross-site request forgery vulnerability.


SECURITY-1400 / CVE-2019-10342
Docker Plugin provides a list of applicable credential IDs to allow users 
configuring the plugin to select the one to use.

This functionality did not correctly check permissions, allowing any user 
with Overall/Read permission to get a list of valid credentials IDs. Those 
could be used as part of an attack to capture the credentials using another 
vulnerability.


SECURITY-1419 / CVE-2019-10346
Embeddable Build Status Plugin did not sanitize arguments provided in the 
query string, resulting in a reflected cross-site scripting vulnerability.


SECURITY-775 / CVE-2019-10347
Mashup Portlets Plugin stored SonarQube credentials unencrypted on the 
Jenkins master. These credentials could be viewed by users with access to 
the master file system.


SECURITY-1438 / CVE-2019-10348
Gogs Plugin stored credentials unencrypted in job config.xml files on the 
Jenkins master. These credentials could be viewed by users with Extended 
Read permission, or access to the master file system.


SECURITY-1177 / CVE-2019-10349
Dependency Graph Viewer Plugin does not correctly escape the Display Name 
value for jobs in Jenkins, resulting in a stored cross-site scripting 
vulnerability.


SECURITY-1441 / CVE-2019-10350
Port Allocator Plugin stores credentials unencrypted in job config.xml 
files on the Jenkins master. These credentials can be viewed by users with 
Extended Read permission, or access to the master file system.


SECURITY-1437 / CVE-2019-10351
Caliper CI Plugin stores credentials unencrypted in job config.xml files on 
the Jenkins master. These credentials can be viewed by users with Extended 
Read permission, or access to the master file system.

