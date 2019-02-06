X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7877" "Wednesday" "6" "February" "2019" "17:54:39" "+0100" "Daniel Beck" "ml@beckweb.net" "<6909BB50-6CA1-44C5-81EA-4413BA44B2AB@beckweb.net>" "255" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "2" "2019020616:54:39" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "        ml@beckweb.n Feb  6  255/7877  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<8EA8F86C-34A0-479D-B0E7-1AB8AF3E9FDF@beckweb.net>" ("<8EA8F86C-34A0-479D-B0E7-1AB8AF3E9FDF@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21769 invoked by uid 550); 6 Feb 2019 16:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21748 invoked from network); 6 Feb 2019 16:54:59 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <8EA8F86C-34A0-479D-B0E7-1AB8AF3E9FDF@beckweb.net>
In-Reply-To: <8EA8F86C-34A0-479D-B0E7-1AB8AF3E9FDF@beckweb.net>
Message-Id: <6909BB50-6CA1-44C5-81EA-4413BA44B2AB@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1549472099;1f30866b;
X-HE-SMSGID: 1grQTH-0005Il-Sy
Date: Wed, 6 Feb 2019 17:54:39 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com


> On 28. Jan 2019, at 15:28, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-1292
> Script Security sandbox protection could be circumvented during the scrip=
t=20
> compilation phase by applying AST transforming annotations such as `@Grab=
`=20
> to source code elements.
>=20
> This affected an HTTP endpoint used to validate a user-submitted Groovy=20
> script that was not covered in the 2019-01-08 fix for SECURITY-1266 and=20
> allowed users with Overall/Read permission to bypass the sandbox=20
> protection and execute arbitrary code on the Jenkins master.
>=20

CVE-2019-1003005

>=20
> SECURITY-1293
> Groovy Plugin has a form validation HTTP endpoint used to validate a user-
> submitted Groovy script through compilation, which was not subject to=20
> sandbox protection. This allowed attackers with Overall/Read access to=20
> execute arbitrary code on the Jenkins master by applying AST transforming=
=20
> annotations such as `@Grab` to source code elements.
>=20

CVE-2019-1003006

>=20
> SECURITY-1295 (1)
> Warnings Plugin has a form validation HTTP endpoint used to validate a=20
> user-submitted Groovy script through compilation, which was not subject t=
o=20
> sandbox protection. The endpoint checked for the Overall/RunScripts=20
> permission, but did not require POST requests, so it was vulnerable to=20
> cross-site request forgery (CSRF). This allowed attackers to execute=20
> arbitrary code on the Jenkins master by applying AST transforming=20
> annotations such as `@Grab` to source code elements.
>=20

CVE-2019-1003007

>=20
> SECURITY-1295 (2)
> Warnings Next Generation Plugin has a form validation HTTP endpoint used=
=20
> to validate a Groovy script through compilation, which was not subject to=
=20
> sandbox protection. The endpoint checked for the Overall/RunScripts=20
> permission, but did not require POST requests, so it was vulnerable to=20
> cross-site request forgery (CSRF). This allowed attackers to execute=20
> arbitrary code on the Jenkins master by applying AST transforming=20
> annotations such as `@Grab` to source code elements.
>=20

CVE-2019-1003008

>=20
> SECURITY-859
> Active Directory Plugin performs TLS upgrade (StartTLS) after connecting=
=20
> to domain controllers through insecure LDAP. In this mode, certificates=20
> were not properly validated, effectively trusting all certificates,=20
> allowing man-in-the-middle attacks.
>=20
> This only affected TLS upgrades. The LDAPS mode, available by setting the=
=20
> system property hudson.plugins.active_directory.
> ActiveDirectorySecurityRealm.forceLdaps to true, was unaffected.
>=20

CVE-2019-1003009

>=20
> SECURITY-1095
> Git Plugin allows the creation of a tag in a job workspace=E2=80=99s Git=
=20
> repository with accompanying metadata attached to a build record.
>=20
> The HTTP endpoint to create the tag did not require POST requests,=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003010

>=20
> SECURITY-1102
> Token Macro Plugin recursively applied token expansion.
>=20
> This could be used by users able to affect input to token expansion (such=
=20
> as change log messages), to inject additional tokens into the input, whic=
h=20
> would then be expanded, resulting in information disclosure (for example=
=20
> values of environment variables), or denial of service.
>=20

CVE-2019-1003011

>=20
> SECURITY-1201
> Blue Ocean did not require CSRF tokens ("crumbs") for POST requests with=
=20
> the `Content-Type: application/json`, resulting in CSRF vulnerabilities.
>=20

CVE-2019-1003012

>=20
> SECURITY-1204
> Blue Ocean did not properly escape HTML/JavaScript content set on the=20
> current user=E2=80=99s description field, resulting in a cross-site scrip=
ting=20
> vulnerability exploitable by administrators and other people accessing=20
> Jenkins with the same user account.
>=20

CVE-2019-1003013

>=20
> SECURITY-1253
> Config File Provider Plugin improperly handled script names in its=20
> JavaScript-based UI, resulting in a stored cross-site scripting (XSS)=20
> vulnerability.
>=20

CVE-2019-1003014

>=20
> SECURITY-905 (1)
> Job Import Plugin allows to import jobs from other Jenkins instances. As =
a=20
> first step in this process, Job Import Plugin sends a request to another=
=20
> Jenkins instance, parsing XML REST API output to obtain a list of jobs=20
> that could be imported.
>=20
> Job Import Plugin did not configure the XML parser in a way that would=20
> prevent XML External Entity (XXE) processing. This allowed attackers able=
=20
> to control either the server Jenkins will query, or the URL Jenkins=20
> queries, to have it parse a maliciously crafted XML response that uses=20
> external entities for extraction of secrets from the Jenkins master,=20
> server-side request forgery, or denial-of-service attacks.
>=20

CVE-2019-1003015

>=20
> SECURITY-905 (2)
> Job Import Plugin did not check user permissions on its API endpoint used=
=20
> to access remote Jenkins instances. This allowed users with Overall/Read=
=20
> access to Jenkins to connect to an attacker-specified URL using attacker-
> specified credentials IDs obtained through another method, capturing=20
> credentials stored in Jenkins.
>=20

CVE-2019-1003016

>=20
> SECURITY-1302
> Job Import Plugin did not require that POST requests are sent to its=20
> /import URL, which processes requests to import jobs. This resulted in a=
=20
> cross-site request forgery (CSRF) vulnerability that could be exploited t=
o=20
> create or replace jobs on the local instance if the remote Jenkins=20
> instance has different ones with the same name, or to install additional=
=20
> plugins, if jobs on the remote Jenkins instance reference them in their=20
> configuration.
>=20

CVE-2019-1003017

>=20
> SECURITY-602
> GitHub Authentication Plugin stores the client secret in the global=20
> Jenkins configuration.
>=20
> While the client secret is stored encrypted on disk, it was transmitted i=
n=20
> plain text as part of the configuration form and displayed without maskin=
g.
> This could result in exposure of the client secret through browser=20
> extensions, cross-site scripting vulnerabilities, and similar situations.
>=20

CVE-2019-1003018

>=20
> SECURITY-797
> GitHub Authentication Plugin did not invalidate the previous session and=
=20
> create a new one upon successful login, allowing attackers able to contro=
l=20
> or obtain another user=E2=80=99s pre-login session ID to impersonate them.
>=20

CVE-2019-1003019

>=20
> SECURITY-818
> Kanboard Plugin did not perform permission checks on a method implementin=
g=20
> form validation. This allowed users with Overall/Read access to Jenkins t=
o=20
> submit a GET request to an attacker-specified URL.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003020

>=20
> SECURITY-886
> OpenId Connect Authentication Plugin stores the client secret in the=20
> global Jenkins configuration.
>=20
> While the client secret is stored encrypted on disk, it was transmitted i=
n=20
> plain text as part of the configuration form and displayed without maskin=
g.
> This could result in exposure of the client secret through browser=20
> extensions, cross-site scripting vulnerabilities, and similar situations.
>=20

CVE-2019-1003021

>=20
> SECURITY-1153
> Monitoring Plugin provides a standalone JavaMelody servlet with an=20
> independent CSRF protection configuration. Even if Jenkins had CSRF=20
> protection enabled, Monitoring Plugin may not have it enabled.
>=20

CVE-2019-1003022

>=20
> SECURITY-1271
> Warnings Next Generation Plugin did not properly escape HTML content in=20
> warnings displayed on the Jenkins UI, resulting in a cross-site scripting=
=20
> vulnerability exploitable by users able to control warnings parser input.
>=20

CVE-2019-1003023

