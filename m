X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3346" "Monday" "25" "March" "2019" "16:09:16" "+0100" "Daniel Beck" "ml@beckweb.net" nil "91" nil "^Date:" nil nil "3" nil nil (number mark "U       ml@beckweb.n Mar 25   91/3346  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21846 invoked by uid 550); 25 Mar 2019 15:09:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21823 invoked from network); 25 Mar 2019 15:09:30 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <B9DFA5CD-50A7-4C49-B93A-64555FBAF031@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1553526570;16e274d4;
X-HE-SMSGID: 1h8RDy-0002yI-D8
Date: Mon, 25 Mar 2019 16:09:16 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Arxan MAM Publisher Plugin 2.2
* Codebeamer Test Results Trend Updater Plugin 1.1.4
* ECS publisher 1.0.1
* Fortify on Demand Uploader Plugin 3.0.11
* Lockable Resources Plugin 2.5
* Pipeline: Groovy Plugin 2.65
* PRQA Plugin 3.1.2
* Script Security Plugin 1.56
* Slack Plugin 2.20

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-03-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1353
Sandbox projection in the Script Security and Pipeline: Groovy Plugins 
could be circumvented through methods supporting type casts and type 
coercion. This allowed attackers to invoke constructors for arbitrary types.


SECURITY-1361
Lockable Resources Plugin did not properly escape resource names in 
generated JavaScript code, thus leading to a cross-site scripting (XSS) 
vulnerability.


SECURITY-976
Notification Plugin Plugin did not perform permission checks on a method 
implementing form validation. This allowed users with Overall/Read access 
to Jenkins to connect to an attacker-specified URL using attacker-specified 
credentials IDs obtained through another method, capturing credentials 
stored in Jenkins.

Additionally, this form validation method did not require POST requests, 
resulting in a cross-site request forgery vulnerability.


SECURITY-846
ECS Publisher Plugin stored the API token unencrypted in jobs' config.xml 
files and its global configuration file on the Jenkins master. This token 
could be viewed by users with Extended Read permission, or access to the 
master file system.

Additionally, the API token was not masked from view using a password form 
field.


SECURITY-992
A missing permission check in multiple form validation methods in Fortify 
on Demand Uploader Plugin allowed users with Overall/Read permission to 
initiate a connection test to an attacker-specified server.

Additionally, the form validation methods did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-1089
PRQA Plugin stored a password unencrypted in its global configuration file 
on the Jenkins master. This password could be viewed by users with access 
to the master file system.


SECURITY-1086
Codebeamer Test Results Trend Updater Plugin stored username and password 
in its configuration unencrypted in jobs' config.xml files on the Jenkins 
master. This password could be viewed by users with Extended Read 
permission, or access to the master file system.


SECURITY-1328
Arxan MAM Publisher Plugin provides a list of applicable credential IDs to 
allow administrators configuring the plugin to select the one to use.

This functionality did not check permissions, allowing any user with 
Overall/Read permission to get a list of valid credentials IDs. Those could 
be used as part of an attack to capture the credentials using another 
vulnerability.

