X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2768" "Wednesday" "13" "June" "2018" "17:58:25" "+0200" "Daniel Beck" "ml@beckweb.net" "<F54052A4-CAAC-4E9A-BB5F-9EF3699E56B1@beckweb.net>" "78" "Re: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "6" "2018061315:58:25" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" (number mark "U       ml@beckweb.n Jun 13   78/2768  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") "<C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>" ("<C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23855 invoked by uid 550); 13 Jun 2018 15:58:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23837 invoked from network); 13 Jun 2018 15:58:38 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 13 Jun 2018 17:58:25 +0200
References: <C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>
Message-Id: <F54052A4-CAAC-4E9A-BB5F-9EF3699E56B1@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1528905518;ecbe311e;
X-HE-SMSGID: 1fT8AF-0003Gx-5U
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins
 plugins


> On 9. May 2018, at 11:45, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-771
> Users with Overall/Read permission were able use the list-plugins CLI
> command and view the About Jenkins page to list all installed plugins.

CVE-2018-1000192

> SECURITY-786
> The built-in Jenkins user database optionally allows user registration.
> This feature did not properly sanitize user names, allowing registration =
of
> user names containing control characters. This could be used to confuse
> administrators (appearing to be a different user) while preventing deleti=
on
> of such users through the UI.

CVE-2018-1000193

> SECURITY-788
> The agent to master security subsystem ensures that the Jenkins master is
> protected from maliciously configured agents. A path traversal vulnerabil=
ity
> allowed agents to escape whitelisted directories to read and write to fil=
es
> they should not be able to access.

CVE-2018-1000194

> SECURITY-794
> The form validation code for a tool installer improperly checked
> permissions, allowing any user with Overall/Read permission to submit a
> HTTP GET request to any user specified URL, and learn whether the response
> was successful (HTTP 200) or not.
>=20
> Additionally, this functionality did not require POST requests be used,
> thereby allowing the above to be performed without direct access to Jenki=
ns
> via Cross-Site Request Forgery attacks.

CVE-2018-1000195

> SECURITY-263
> Gitlab Hook Plugin does not encrypt the Gitlab API token used to access
> Gitlab. This can be used by users with master file system access to obtain
> GitHub credentials.
>=20
> Additionally, the Gitlab API token round-trips in its plaintext form, and
> is displayed in a regular text field to users with Overall/Administer
> permission. This exposes the API token to people viewing a Jenkins
> administrator=E2=80=99s screen, browser extensions, cross-site scripting
> vulnerabilities, etc.

CVE-2018-1000196

> SECURITY-670
> Black Duck Hub Plugin did not perform permission checks for its config.xml
> API endpoint. This allowed any user with Overall/Read permission to both
> read and write the plugin configuration XML.

CVE-2018-1000197

> SECURITY-671
> Black Duck Hub Plugin config.xml API endpoint was affected by an XML
> External Entity (XXE) processing vulnerability. This allowed an attacker
> with Overall/Read access to have Jenkins parse a maliciously crafted file
> that uses external entities for extraction of secrets from the Jenkins
> master, server-side request forgery, or denial-of-service attacks.

CVE-2018-1000198

> SECURITY-821 / CVE pending
> Groovy Postbuild Plugin did not properly escape badge content from user
> input, resulting in a stored cross-site scripting vulnerability.

CVE-2018-1000202

