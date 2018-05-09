X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3358" "Wednesday" "9" "May" "2018" "11:45:54" "+0200" "Daniel Beck" "ml@beckweb.net" "<C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>" "88" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "5" "2018050909:45:54" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" (number mark "U       ml@beckweb.n May  9   88/3358  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7431 invoked by uid 550); 9 May 2018 09:46:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7410 invoked from network); 9 May 2018 09:46:06 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <C421ACBB-3B9C-49FC-A8D5-D122C448BB07@beckweb.net>
Date: Wed, 9 May 2018 11:45:54 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1525859166;27a5b306;
X-HE-SMSGID: 1fGLfW-00059s-T2
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.121
* Jenkins (LTS) 2.107.3
* Black Duck Hub Plugin 4.0.0
* Groovy Postbuild Plugin 2.4

Additionally, these plugin have security vulnerabilities that have been made
public, but have no releases containing a fix yet:

* Gitlab Hook Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-05-09/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-771
Users with Overall/Read permission were able use the list-plugins CLI
command and view the About Jenkins page to list all installed plugins.


SECURITY-786
The built-in Jenkins user database optionally allows user registration.
This feature did not properly sanitize user names, allowing registration of
user names containing control characters. This could be used to confuse
administrators (appearing to be a different user) while preventing deletion
of such users through the UI.


SECURITY-788
The agent to master security subsystem ensures that the Jenkins master is
protected from maliciously configured agents. A path traversal vulnerability
allowed agents to escape whitelisted directories to read and write to files
they should not be able to access.


SECURITY-794
The form validation code for a tool installer improperly checked
permissions, allowing any user with Overall/Read permission to submit a
HTTP GET request to any user specified URL, and learn whether the response
was successful (HTTP 200) or not.

Additionally, this functionality did not require POST requests be used,
thereby allowing the above to be performed without direct access to Jenkins
via Cross-Site Request Forgery attacks.


SECURITY-263
Gitlab Hook Plugin does not encrypt the Gitlab API token used to access
Gitlab. This can be used by users with master file system access to obtain
GitHub credentials.

Additionally, the Gitlab API token round-trips in its plaintext form, and
is displayed in a regular text field to users with Overall/Administer
permission. This exposes the API token to people viewing a Jenkins
administrator=E2=80=99s screen, browser extensions, cross-site scripting
vulnerabilities, etc.


SECURITY-670
Black Duck Hub Plugin did not perform permission checks for its config.xml
API endpoint. This allowed any user with Overall/Read permission to both
read and write the plugin configuration XML.


SECURITY-671
Black Duck Hub Plugin config.xml API endpoint was affected by an XML
External Entity (XXE) processing vulnerability. This allowed an attacker
with Overall/Read access to have Jenkins parse a maliciously crafted file
that uses external entities for extraction of secrets from the Jenkins
master, server-side request forgery, or denial-of-service attacks.


SECURITY-821 / CVE pending
Groovy Postbuild Plugin did not properly escape badge content from user
input, resulting in a stored cross-site scripting vulnerability.

