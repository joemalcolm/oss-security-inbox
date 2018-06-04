X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4982" "Monday" "4" "June" "2018" "14:37:28" "+0200" "Daniel Beck" "ml@beckweb.net" "<13E3F1F3-822B-405C-A12B-CB6BB2E62F4C@beckweb.net>" "136" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "6" "2018060412:37:28" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jun  4  136/4982  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26341 invoked by uid 550); 4 Jun 2018 12:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26317 invoked from network); 4 Jun 2018 12:37:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <13E3F1F3-822B-405C-A12B-CB6BB2E62F4C@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1528115860;166c0772;
X-HE-SMSGID: 1fPojo-00048e-SU
Date: Mon, 4 Jun 2018 14:37:28 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* AbsInt Astr=C3=A9e 1.0.7
* Black Duck Detect 1.4.1
* Black Duck Hub 4.0.1
* CAS 1.4.2
* Git 3.9.1
* GitHub 1.29.1
* GitHub Branch Source 2.3.5
* GitHub Pull Request Builder 1.42.0
* Kubernetes 1.7.1

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-06-04/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-810
Various form validation methods in Git Plugin did not check the permission=
=20
of the user accessing them, allowing anyone with Overall/Read access to=20
Jenkins to cause Jenkins to send a GET request to a specified URL.

Additionally, these form validation methods did not require POST requests,=
=20
resulting in a CSRF vulnerability.


SECURITY-799
A form validation method in GitHub Plugin did not check the permission of=20
the user accessing it, allowing anyone with Overall/Read access to Jenkins=
=20
to cause Jenkins to send a POST request to a specified URL.

If that request=E2=80=99s HTTP response code indicates success, the form=20
validation is returning a generic success message, otherwise the HTTP=20
status code is returned.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-804
GitHub Plugin did not perform permission checks on a method implementing=20
form validation. This allowed users with Overall/Read access to Jenkins to=
=20
connect to an attacker-specified URL using attacker-specified credentials=20
IDs obtained through another method, capturing credentials stored in=20
Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-806
A form validation method in GitHub Branch Source Plugin did not check the=20
permission of the user accessing them, allowing anyone with Overall/Read=20
access to Jenkins to cause Jenkins to send a GET request to a specified URL.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-805
GitHub Pull Request Builder Plugin did not perform permission checks on=20
methods implementing form validation. This allowed users with Overall/Read=
=20
access to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins, and to cause Jenkins to submit HTTP=20
requests to attacker-specified URLs.

Additionally, these form validation methods did not require POST requests,=
=20
resulting in a CSRF vulnerability.


SECURITY-883
Kubernetes Plugin printed sensitive build variables, like passwords, to=20
the build log and master log, when using pipeline steps like
withDockerRegistry.


SECURITY-809
A form validation method in GitHub Branch Source Plugin did not check the=20
permission of the user accessing them, allowing anyone with Overall/Read=20
access to Jenkins to cause Jenkins to send a GET request to a specified URL.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-807
AbsInt Astr=C3=A9e Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to run a user-specified program on the Jenkins master.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-865
Black Duck Hub Plugin did not perform permission checks on methods=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins, and to cause Jenkins to submit HTTP=20
requests to attacker-specified URLs.=20

Additionally, these form validation methods did not require POST requests,=
=20
resulting in a CSRF vulnerability.


SECURITY-866
Black Duck Detect Plugin did not perform permission checks on methods=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins, and to cause Jenkins to submit HTTP=20
requests to attacker-specified URLs.=20

Additionally, these form validation methods did not require POST requests,=
=20
resulting in a CSRF vulnerability.

