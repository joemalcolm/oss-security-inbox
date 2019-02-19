X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4658" "Tuesday" "19" "February" "2019" "19:33:19" "+0100" "Daniel Beck" "ml@beckweb.net" "<4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>" "120" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "2" "2019021918:33:19" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Feb 19  120/4658  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11613 invoked by uid 550); 19 Feb 2019 18:33:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11595 invoked from network); 19 Feb 2019 18:33:31 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1550601211;5eaf413d;
X-HE-SMSGID: 1gwACm-0002Ef-CK
Date: Tue, 19 Feb 2019 19:33:19 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Acunetix Plugin 1.1.0
* Arxan MAM Publisher Plugin 2.0
* Cloud Foundry Plugin 2.3.2
* ElectricFlow Plugin 1.1.5
* JMS Messaging Plugin 1.1.2
* Mattermost Notification Plugin 2.6.3
* OctopusDeploy Plugin 1.9.0
* Script Security Plugin 1.53

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-02-19/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1320
The previously implemented Script Security Plugin sandbox protections
prohibiting the use of unsafe AST transforming annotations such as @Grab=20
could be circumvented through use of various Groovy language features:

* Using Groovy=E2=80=99s AnnotationCollector
* Import aliasing
* Referencing annotation types using their full class name

This allowed users with Overall/Read permission, or the ability to control
Jenkinsfile or sandboxed Pipeline shared library contents in SCM, to=20
bypass the sandbox protection and execute arbitrary code on the Jenkins=20
master.

Using AnnotationCollector is now newly prohibited in sandboxed scripts=20
such as Pipelines. Importing any of the annotations considered unsafe will
now result in an error. During the compilation phase, both simple and=20
full class names of prohibited annotations are rejected for element=20
annotations.


SECURITY-876
Cloud Foundry Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-985
A missing permission check in a form validation method in Mattermost=20
Notification Plugin allowed users with Overall/Read permission to=20
initiate a connection test, connecting to an attacker-specified=20
Mattermost server and room and posting a message.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-817
A missing permission check in a form validation method in OctopusDeploy=20
Plugin allowed users with Overall/Read permission to initiate a=20
connection test, sending an HTTP HEAD request to an attacker-specified=20
URL, returning HTTP response code if successful, or exception error=20
message otherwise.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1033
A missing permission check in a form validation method in JMS Messaging=20
Plugin allowed users with Overall/Read permission to initiate a=20
connection test, sending an HTTP request to an attacker-specified URL.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-937
ElectricFlow Plugin unconditionally disabled SSL/TLS certificate=20
validation for the entire Jenkins master JVM.


SECURITY-951
Acunetix Plugin stored the API Key in its configuration unencrypted in=20
its global configuration file on the Jenkins master. This key could be=20
viewed by users with access to the master file system.


SECURITY-980
A missing permission check in a form validation method in Acunetix Plugin=20
allowed users with Overall/Read permission to initiate a connection test,=20
sending an HTTP GET request to an attacker-specified URL, adding a /me=20
suffix, returning whether the connection could be established and whether=20
the HTTP response code is 200.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1070
Arxan MAM Publisher Plugin stored the username and password connection=20
credentials in its configuration unencrypted in jobs' config.xml files on=20
the Jenkins master. This key could be viewed by users with Extended Read=20
permission, or access to the master file system.

While masked from view using a password form field, the password was=20
transferred in plain text to users when accessing the job configuration=20
form.

