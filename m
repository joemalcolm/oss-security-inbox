X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3988" "Monday" "25" "June" "2018" "20:21:20" "+0200" "Daniel Beck" "ml@beckweb.net" "<ECE1726C-BB55-4159-9A7F-EA4A0F087CE5@beckweb.net>" "123" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "6" "2018062518:21:20" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jun 25  123/3988  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>" ("<E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9407 invoked by uid 550); 25 Jun 2018 18:21:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9386 invoked from network); 25 Jun 2018 18:21:32 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 25 Jun 2018 20:21:20 +0200
References: <E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>
Message-Id: <ECE1726C-BB55-4159-9A7F-EA4A0F087CE5@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1529950892;458c2a73;
X-HE-SMSGID: 1fXW77-0000E8-70
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 25. Jun 2018, at 16:10, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-915
> A form action method in GitHub Plugin did not check the permission of the=
=20
> user accessing it, allowing anyone with Overall/Read access to Jenkins to=
=20
> cause Jenkins to send a GitHub API request to create an API token to a an=
=20
> attacker specified URL.
>=20
> This allowed users with Overall/Read access to Jenkins to connect to an=20
> attacker-specified URL using attacker-specified credentials IDs obtained=
=20
> through another method, capturing credentials stored in Jenkins.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1000600

> SECURITY-440
> SSH Credentials Plugin allowed the creation of SSH credentials with keys=
=20
> "From a file on Jenkins master". Credentials Binding Plugin 1.13 and newe=
r=20
> allows binding SSH credentials to environment variables. In combination,=
=20
> these two features allow users with the permission to configure a job to=
=20
> read arbitrary files on the Jenkins master by creating an SSH credential=
=20
> referencing an arbitrary file on the Jenkins master, and binding it to an=
=20
> environment variable in a job.

CVE-2018-1000601

> SECURITY-916
> SAML Plugin did not invalidate the previous session and create a new one=
=20
> upon successful login, allowing attackers able to control or obtain=20
> another user=E2=80=99s pre-login session ID to impersonate them.

CVE-2018-1000602

> SECURITY-808
> Openstack Cloud Plugin did not perform permission checks on methods=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified URL using attacker-
> specified credentials IDs obtained through another method, capturing=20
> credentials stored in Jenkins, and to cause Jenkins to submit HTTP=20
> requests to attacker-specified URLs.
>=20
> Additionally, these form validation methods did not require POST requests=
,=20
> resulting in a CSRF vulnerability.

CVE-2018-1000603

> SECURITY-906
> Badge Plugin stored and displayed user-provided HTML for badges and=20
> summaries unprocessed, allowing users with the ability to control badge=20
> content to store malicious HTML to be displayed within Jenkins.

CVE-2018-1000604

> SECURITY-941
> CollabNet Plugin disabled SSL/TLS certificate validation for the entire=20
> Jenkins master JVM by default.

CVE-2018-1000605

> SECURITY-819
> A form validation method in URLTrigger Plugin did not check the permissio=
n=20
> of the user accessing them, allowing anyone with Overall/Read access to=20
> Jenkins to cause Jenkins to send a GET request to a specified URL.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1000606

> SECURITY-870
> Fortify CloudScan Plugin did not validate file names in rulepack ZIP=20
> archives it extracts, resulting in an arbitrary file write vulnerability.

CVE-2018-1000607

> SECURITY-950
> IBM z/OS Connector Plugin did not encrypt password credentials stored in=
=20
> its configuration. This could be used by users with master file system=20
> access to obtain the password.
>=20
> While masked from view using a password form field, the AWS Secret Key wa=
s=20
> transferred in plain text to administrators when accessing the global=20
> configuration form.

CVE-2018-1000608

> SECURITY-927
> Configuration as Code Plugin lacked a permission check in the method=20
> handling the URL exporting the system configuration. This allows users=20
> with Overall/Read access to Jenkins to obtain this YAML export.

CVE-2018-1000609

> SECURITY-929
> Configuration as Code Plugin logged secrets set via its configuration to=
=20
> the Jenkins master system log in plain text. This allowed users with=20
> access to the Jenkins log files to obtain these passwords and similar=20
> secrets.

CVE-2018-1000610

