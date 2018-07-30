X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6325" "Monday" "30" "July" "2018" "16:10:46" "+0200" "Daniel Beck" "ml@beckweb.net" "<19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>" "175" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "7" "2018073014:10:46" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jul 30  175/6325  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16235 invoked by uid 550); 30 Jul 2018 14:11:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16190 invoked from network); 30 Jul 2018 14:11:00 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>
Date: Mon, 30 Jul 2018 16:10:46 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1532959860;93f90afe;
X-HE-SMSGID: 1fk8sq-0006re-Ik
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* AccuRev Plugin 0.7.17
* Agiletestware Pangolin Connector for TestRail Plugin 2.2
* Anchore Container Image Scanner Plugin 1.0.17
* Confluence Publisher Plugin 2.0.2
* Inedo BuildMaster Plugin 2.0
* Inedo ProGet Plugin 1.0
* Kubernetes Plugin 1.10.2
* Maven Artifact ChoiceListProvider (Nexus) Plugin 1.3.2
* meliora-testlab Plugin 1.15
* Publish Over CIFS Plugin 0.11
* Resource Disposer Plugin 0.12
* SaltStack Plugin 3.1.6
* Shelve Project Plugin 2.0
* SSH Agent Plugin 1.16
* Tinfoil Security Plugin 2.0
* TraceTronic ECU-TEST Plugin 2.4

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-07-30/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-704
When using the `sshagent` step inside a `withDockerContainer` block in 
Pipeline, the resulting logging of the `ssh-add` command included the SSH 
key passphrase in plain text.


SECURITY-997
Resource Disposer Plugin did not perform permission checks on an API 
endpoint. This allowed users with Overall/Read access to Jenkins to stop 
tracking a specified resource.

Additionally, this API endpoint did not require POST requests, resulting 
in a CSRF vulnerability.


SECURITY-975
Publish Over CIFS Plugin did not perform permission checks on a method 
implementing form validation. This allowed users with Overall/Read access 
to Jenkins to initiate CIFS connections to an attacker specified host.

Additionally, this form validation method did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-982
Confluence Publisher Plugin did not perform permission checks on a method 
implementing form validation. This allowed users with Overall/Read access 
to Jenkins to submit login requests to Confluence using attacker-
specified credentials.

Additionally, this form validation method did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-1016
Kubernetes Plugin did not perform permission checks on a method 
implementing form validation. This allowed users with Overall/Read access 
to Jenkins to connect to an attacker-specified Kubernetes cluster using 
attacker-specified credentials IDs obtained through another method, 
capturing credentials stored in Jenkins.

Additionally, this form validation method did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-840
Tinfoil Security Plugin stored the API Secret Key in its configuration 
unencrypted in its global configuration file on the Jenkins master. This 
key could be viewed by users with access to the master file system.


SECURITY-932
TraceTronic ECU-TEST Plugin unconditionally disabled SSL/TLS certificate 
validation for the entire Jenkins master JVM.


SECURITY-994
TraceTronic ECU-TEST Plugin did not perform permission checks on a method 
implementing form validation. This allowed users with Overall/Read access 
to Jenkins to connect to an attacker-specified URL, with the path suffix
`/app-version-info` appended.

Additionally, this form validation method did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-1009
SaltStack Plugin did not perform permission checks on methods implementing 
form validation. This allowed users with Overall/Read access to Jenkins to 
connect to an attacker-specified URL using attacker-specified credentials 
IDs obtained through another method, capturing credentials stored in 
Jenkins, and to cause Jenkins to submit HTTP requests to attacker-
specified URLs.

Additionally, these form validation methods did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-1021
Accurev Plugin did not perform permission checks on a method implementing 
form validation. This allowed users with Overall/Read access to Jenkins to 
connect to an attacker-specified Accurev server using attacker-specified 
credentials IDs obtained through another method, capturing credentials 
stored in Jenkins.

Additionally, these form validation methods did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-1001
Shelve Project Plugin did not escape the names of shelved projects on the 
UI, potentially resulting in a stored XSS vulnerability.


SECURITY-1022
Maven Artifact ChoiceListProvider (Nexus) Plugin did not perform 
permission checks on a method implementing form validation. This allowed 
users with Overall/Read access to Jenkins to connect to an attacker-
specified Nexus or Artifactory server using attacker-specified credentials 
IDs obtained through another method, capturing credentials stored in 
Jenkins.

Additionally, this form validation method did not require POST requests, 
resulting in a CSRF vulnerability.


SECURITY-847
meliora-testlab Plugin stored the API Key in its configuration unencrypted 
in its global configuration file on the Jenkins master. This key could be 
viewed by users with access to the master file system.

Additionally, the API key was not masked from view using a password form 
field.


SECURITY-995
Agiletestware Pangolin Connector for TestRail Plugin did not perform 
permission checks on an API endpoint used to validate and save the plugin 
configuration. This allowed users with Overall/Read access to Jenkins to 
override the plugin configuration.

Additionally, the API endpoint did not require POST requests, resulting in 
a CSRF vulnerability.


SECURITY-1039
Anchore Container Image Scanner Plugin stored the password in its 
configuration unencrypted in its global configuration file on the Jenkins 
master. This password could be viewed by users with access to the master 
file system.


SECURITY-933
Inedo ProGet Plugin unconditionally disabled SSL/TLS certificate 
validation for the entire Jenkins master JVM.


SECURITY-935
Inedo ProGet Plugin unconditionally disabled SSL/TLS certificate validation 
for the entire Jenkins master JVM.

