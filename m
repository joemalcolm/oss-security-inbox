X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9099" "Wednesday" "6" "March" "2019" "15:41:34" "+0100" "Daniel Beck" "ml@beckweb.net" "<76BCA87C-B9AF-4C4A-9777-8DDAAC805CBD@beckweb.net>" "242" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "3" "2019030614:41:34" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "        ml@beckweb.n Mar  6  242/9099  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14011 invoked by uid 550); 6 Mar 2019 14:41:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13993 invoked from network); 6 Mar 2019 14:41:47 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <76BCA87C-B9AF-4C4A-9777-8DDAAC805CBD@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1551883307;74f77729;
X-HE-SMSGID: 1h1Xjj-00075l-Rv
Date: Wed, 6 Mar 2019 15:41:34 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* AppDynamics Dashboard Plugin 1.0.15
* Azure VM Agents Plugin 0.8.1
* Bitbar Run-in-Cloud Plugin 2.70.0
* Email Extension Plugin 2.65
* Groovy Plugin 2.2
* Job DSL Plugin 1.72
* Matrix Project Plugin 1.14
* OSF Builder Suite For Salesforce Commerce Cloud :: Deploy Plugin 1.0.11
* Pipeline: Groovy Plugin 2.64
* Rabbit-MQ Publisher Plugin 1.2.0
* Repository Connector Plugin 1.2.5
* Script Security Plugin 1.54

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-03-06/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1336 (1)
Script Security sandbox protection could be circumvented during parsing,=20
compilation, and script instantiation by providing a crafted Groovy script.

Script Security Plugin is now newly applying sandbox protection during=20
these phases.

This affected both script execution (typically invoked from other plugins)=
=20
as well as an HTTP endpoint providing script validation and allowed users=20
with Overall/Read permission to bypass the sandbox protection and execute=20
arbitrary code on the Jenkins master.

The API `GroovySandbox#run(Script, Whitelist)` has been deprecated and now=
=20
emits a warning to the system log about potential security problems.=20
`GroovySandbox#run(GroovyShell, String, Whitelist)` replaces it.=20
`GroovySandbox#checkScriptForCompilationErrors(String, GroovyClassLoader)`=
=20
has been added as a safer method to implement script validation.


SECURITY-1336 (2)
Pipeline: Groovy sandbox protection could be circumvented during parsing,=20
compilation, and script instantiation by providing a crafted Groovy script.

This allowed users able to control the contents of a pipeline to bypass=20
the sandbox protection and execute arbitrary code on the Jenkins master.

Pipeline: Groovy Plugin now uses Script Security APIs that apply sandbox=20
protection during these phases.


SECURITY-1339
Matrix Project Plugin supports a sandboxed Groovy expression to filter=20
matrix combinations. Its sandbox protection could be circumvented during=20
parsing, compilation, and script instantiation by providing a crafted=20
Groovy script.

This allowed users able to configure a Matrix project to bypass the=20
sandbox protection and execute arbitrary code on the Jenkins master.

Matrix Project Plugin now uses Script Security APIs that apply sandbox=20
protection during these phases.


SECURITY-1340
Email Extension Plugin supports sandboxed Groovy expressions for multiple=20
features. Its sandbox protection could be circumvented during parsing,=20
compilation, and script instantiation by providing a crafted Groovy script.

This allowed users able to control the plugin=E2=80=99s job-specific config=
uration=20
to bypass the sandbox protection and execute arbitrary code on the Jenkins=
=20
master.

Email Extension Plugin now uses Script Security APIs that apply sandbox=20
protection during these phases.


SECURITY-1338
Groovy Plugin supports sandboxed Groovy expressions for its "System=20
Groovy" functionality. Its sandbox protection could be circumvented during=
=20
parsing, compilation, and script instantiation by providing a crafted=20
Groovy script.

This affected both System Groovy script execution as well as an HTTP=20
endpoint providing script validation, and allowed users with Overall/Read=20
permission to bypass the sandbox protection and execute arbitrary code on=20
the Jenkins master.

Groovy Plugin now uses Script Security APIs that apply sandbox protection=20
during these phases.


SECURITY-1342
Job DSL Plugin supports sandboxed Groovy expressions for Job DSL=20
definitions. Its sandbox protection could be circumvented during parsing,=20
compilation, and script instantiation by providing a crafted Groovy script.

This allowed users able to control the Job DSL scripts to bypass the=20
sandbox protection and execute arbitrary code on the Jenkins master.

Job DSL Plugin now uses Script Security APIs that apply sandbox protection=
=20
during these phases.


SECURITY-1330
A missing permission check in a form validation method in Azure VM Agents=20
Plugin allowed users with Overall/Read access to verify a submitted=20
configuration, obtaining limited information about the Azure account and=20
configuration.

Additionally, this form validation method did not require POST requests,=20
resulting in a potential CSRF vulnerability.

This form validation method now requires POST requests and=20
Overall/Administer permissions.


SECURITY-1331
A missing permission check in an HTTP endpoint allowed users with=20
Overall/Read access to attach a public IP address to an Azure VM in Azure=20
VM Agents Plugin, making a virtual machine publicly accessible.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability with more limited impact, as the IP=20
address would not be known.

This form validation method now requires POST requests and=20
Overall/Administer permissions.


SECURITY-1332
Azure VM Agents Plugin provides a list of applicable credential IDs to=20
allow administrators configuring the plugin to select the one to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those=20
could be used as part of an attack to capture the credentials using=20
another vulnerability.

An enumeration of credentials IDs in this plugin now requires=20
Overall/Administer permission.


SECURITY-958
Repository Connector Plugin stored the username and password in its=20
configuration unencrypted in its global configuration file on the Jenkins=20
master. This password could be viewed by users with access to the master=20
file system.

The plugin now stores the password encrypted in the configuration files on=
=20
disk and no longer transfers it to users viewing the configuration form in=
=20
plain text.


SECURITY-1087
AppDynamics Dashboard Plugin stored username and password in its=20
configuration unencrypted in jobs' config.xml files on the Jenkins master.=
=20
This password could be viewed by users with Extended Read permission, or=20
access to the master file system.

While masked from view using a password form field, the password was=20
transferred in plain text to users when accessing the job configuration=20
form.

AppDynamics Dashboard Plugin now stores the password encrypted in the=20
configuration files on disk and no longer transfers it to users viewing=20
the configuration form in plain text. Existing jobs need to have their=20
configuration saved for existing plain text passwords to be overwritten.


SECURITY-848
Rabbit-MQ Publisher Plugin stored the username and password in its=20
configuration unencrypted in its global configuration file on the Jenkins=20
master. This password could be viewed by users with access to the master=20
file system.

The plugin now stores the password encrypted in the configuration files on=
=20
disk and no longer transfers it to users viewing the configuration form in=
=20
plain text.


SECURITY-970
A missing permission check in a form validation method of Rabbit-MQ=20
Publisher Plugin allowed users with Overall/Read access to have Jenkins=20
initiate a RabbitMQ connection to an attacker-specified host and port with=
=20
an attacker-specified username and password.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.

This form validation method now requires POST requests and=20
Overall/Administer permissions.


SECURITY-1038
OSF Builder Suite For Salesforce Commerce Cloud : : Deploy Plugin stored=20
the HTTP proxy username and password in its configuration unencrypted in=20
its global configuration file on the Jenkins master. This password could=20
be viewed by users with access to the master file system.

The plugin now integrates with Credentials Plugin to store the HTTP proxy=20
credentials.


SECURITY-1088
A missing permission check in a method performing both form validation and=
=20
saving new configuration in Bitbar Run-in-Cloud Plugin allowed users with=20
Overall/Read permission to have Jenkins master connect to an attacker-
specified host with attacker-specified credentials, and, if successful,=20
save that as the new configuration for the plugin. This could then=20
potentially result in future builds submitting their data to an=20
unauthorized remote server.

Additionally, this method did not require POST requests, resulting in a=20
CSRF vulnerability.

This form validation method now requires POST requests and=20
Overall/Administer permissions.

