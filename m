X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5908" "Wednesday" "1" "August" "2018" "04:38:37" "+0200" "Daniel Beck" "ml@beckweb.net" "<D8D17B58-54E2-4C33-97F1-AFDBB21D8878@beckweb.net>" "198" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "8" "2018080102:38:37" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Aug  1  198/5908  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>" ("<19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3868 invoked by uid 550); 1 Aug 2018 02:38:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3850 invoked from network); 1 Aug 2018 02:38:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
References: <19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>
In-Reply-To: <19B3BD42-B3FF-4D64-BAAB-685557443BCD@beckweb.net>
Message-Id: <D8D17B58-54E2-4C33-97F1-AFDBB21D8878@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1533091130;7fde44e8;
X-HE-SMSGID: 1fkh26-0002iy-Rc
Date: Wed, 1 Aug 2018 04:38:37 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com


> On 30. Jul 2018, at 16:10, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-704
> When using the `sshagent` step inside a `withDockerContainer` block in=20
> Pipeline, the resulting logging of the `ssh-add` command included the SSH=
=20
> key passphrase in plain text.

CVE-2018-1999036

> SECURITY-997
> Resource Disposer Plugin did not perform permission checks on an API=20
> endpoint. This allowed users with Overall/Read access to Jenkins to stop=
=20
> tracking a specified resource.
>=20
> Additionally, this API endpoint did not require POST requests, resulting=
=20
> in a CSRF vulnerability.

CVE-2018-1999037

> SECURITY-975
> Publish Over CIFS Plugin did not perform permission checks on a method=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to initiate CIFS connections to an attacker specified host.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1999038

> SECURITY-982
> Confluence Publisher Plugin did not perform permission checks on a method=
=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to submit login requests to Confluence using attacker-
> specified credentials.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1999039

> SECURITY-1016
> Kubernetes Plugin did not perform permission checks on a method=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified Kubernetes cluster using=20
> attacker-specified credentials IDs obtained through another method,=20
> capturing credentials stored in Jenkins.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1999040

> SECURITY-840
> Tinfoil Security Plugin stored the API Secret Key in its configuration=20
> unencrypted in its global configuration file on the Jenkins master. This=
=20
> key could be viewed by users with access to the master file system.

CVE-2018-1999041

> SECURITY-932
> TraceTronic ECU-TEST Plugin unconditionally disabled SSL/TLS certificate=
=20
> validation for the entire Jenkins master JVM.

CVE-2018-1999025

> SECURITY-994
> TraceTronic ECU-TEST Plugin did not perform permission checks on a method=
=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified URL, with the path suffix
> `/app-version-info` appended.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1999026

> SECURITY-1009
> SaltStack Plugin did not perform permission checks on methods implementin=
g=20
> form validation. This allowed users with Overall/Read access to Jenkins t=
o=20
> connect to an attacker-specified URL using attacker-specified credentials=
=20
> IDs obtained through another method, capturing credentials stored in=20
> Jenkins, and to cause Jenkins to submit HTTP requests to attacker-
> specified URLs.
>=20
> Additionally, these form validation methods did not require POST requests=
,=20
> resulting in a CSRF vulnerability.

CVE-2018-1999027

> SECURITY-1021
> Accurev Plugin did not perform permission checks on a method implementing=
=20
> form validation. This allowed users with Overall/Read access to Jenkins t=
o=20
> connect to an attacker-specified Accurev server using attacker-specified=
=20
> credentials IDs obtained through another method, capturing credentials=20
> stored in Jenkins.
>=20
> Additionally, these form validation methods did not require POST requests=
,=20
> resulting in a CSRF vulnerability.

CVE-2018-1999028

> SECURITY-1001
> Shelve Project Plugin did not escape the names of shelved projects on the=
=20
> UI, potentially resulting in a stored XSS vulnerability.

CVE-2018-1999029

> SECURITY-1022
> Maven Artifact ChoiceListProvider (Nexus) Plugin did not perform=20
> permission checks on a method implementing form validation. This allowed=
=20
> users with Overall/Read access to Jenkins to connect to an attacker-
> specified Nexus or Artifactory server using attacker-specified credential=
s=20
> IDs obtained through another method, capturing credentials stored in=20
> Jenkins.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2018-1999030

> SECURITY-847
> meliora-testlab Plugin stored the API Key in its configuration unencrypte=
d=20
> in its global configuration file on the Jenkins master. This key could be=
=20
> viewed by users with access to the master file system.
>=20
> Additionally, the API key was not masked from view using a password form=
=20
> field.

CVE-2018-1999031

> SECURITY-995
> Agiletestware Pangolin Connector for TestRail Plugin did not perform=20
> permission checks on an API endpoint used to validate and save the plugin=
=20
> configuration. This allowed users with Overall/Read access to Jenkins to=
=20
> override the plugin configuration.
>=20
> Additionally, the API endpoint did not require POST requests, resulting i=
n=20
> a CSRF vulnerability.

CVE-2018-1999032

> SECURITY-1039
> Anchore Container Image Scanner Plugin stored the password in its=20
> configuration unencrypted in its global configuration file on the Jenkins=
=20
> master. This password could be viewed by users with access to the master=
=20
> file system.

CVE-2018-1999033

> SECURITY-933
> Inedo ProGet Plugin unconditionally disabled SSL/TLS certificate=20
> validation for the entire Jenkins master JVM.

CVE-2018-1999034

> SECURITY-935
> Inedo ProGet Plugin unconditionally disabled SSL/TLS certificate validati=
on=20
> for the entire Jenkins master JVM.

CVE-2018-1999035

