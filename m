X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2806" "Saturday" "23" "February" "2019" "11:59:26" "+0100" "Daniel Beck" "ml@beckweb.net" "<305B88DB-999B-46B2-8842-7101CA1D91F4@beckweb.net>" "77" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "2" "2019022310:59:26" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "        ml@beckweb.n Feb 23   77/2806  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>" ("<4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26318 invoked by uid 550); 23 Feb 2019 10:59:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26300 invoked from network); 23 Feb 2019 10:59:39 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>
In-Reply-To: <4418E151-21FE-42EE-ACC8-B75A99AC469E@beckweb.net>
Message-Id: <305B88DB-999B-46B2-8842-7101CA1D91F4@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1550919579;07ab047a;
X-HE-SMSGID: 1gxV1j-00046p-V6
Date: Sat, 23 Feb 2019 11:59:26 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com



> On 19. Feb 2019, at 19:33, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-1320
> The previously implemented Script Security Plugin sandbox protections
> prohibiting the use of unsafe AST transforming annotations such as @Grab=
=20
> could be circumvented through use of various Groovy language features:
>=20
> * Using Groovy=E2=80=99s AnnotationCollector
> * Import aliasing
> * Referencing annotation types using their full class name
>=20
> This allowed users with Overall/Read permission, or the ability to control
> Jenkinsfile or sandboxed Pipeline shared library contents in SCM, to=20
> bypass the sandbox protection and execute arbitrary code on the Jenkins=20
> master.
>=20
> Using AnnotationCollector is now newly prohibited in sandboxed scripts=20
> such as Pipelines. Importing any of the annotations considered unsafe will
> now result in an error. During the compilation phase, both simple and=20
> full class names of prohibited annotations are rejected for element=20
> annotations.

CVE-2019-1003024

> SECURITY-876
> Cloud Foundry Plugin did not perform permission checks on a method=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified URL using attacker-
> specified credentials IDs obtained through another method, capturing=20
> credentials stored in Jenkins.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a cross-site request forgery vulnerability.

CVE-2019-1003025

> SECURITY-985
> A missing permission check in a form validation method in Mattermost=20
> Notification Plugin allowed users with Overall/Read permission to=20
> initiate a connection test, connecting to an attacker-specified=20
> Mattermost server and room and posting a message.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2019-1003026

> SECURITY-817
> A missing permission check in a form validation method in OctopusDeploy=20
> Plugin allowed users with Overall/Read permission to initiate a=20
> connection test, sending an HTTP HEAD request to an attacker-specified=20
> URL, returning HTTP response code if successful, or exception error=20
> message otherwise.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2019-1003027

> SECURITY-1033
> A missing permission check in a form validation method in JMS Messaging=20
> Plugin allowed users with Overall/Read permission to initiate a=20
> connection test, sending an HTTP request to an attacker-specified URL.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2019-1003028

