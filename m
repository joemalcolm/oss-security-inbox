X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1811" "Monday" "20" "June" "2016" "19:00:33" "+0200" "Daniel Beck" "ml@beckweb.net" "<B8DA6832-45AA-4600-990A-EF50B18EDFCD@beckweb.net>" "59" "[oss-security] Jenkins plugins -- multiple fixes" nil nil nil "6" "2016062017:00:33" "[oss-security] Jenkins plugins -- multiple fixes" (number mark "U       ml@beckweb.n Jun 20   59/1811  " thread-indent "\"[oss-security] Jenkins plugins -- multiple fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18398 invoked by uid 550); 20 Jun 2016 17:00:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18328 invoked from network); 20 Jun 2016 17:00:44 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <B8DA6832-45AA-4600-990A-EF50B18EDFCD@beckweb.net>
Date: Mon, 20 Jun 2016 19:00:33 +0200
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1466442044;de7b5848;
Subject: [oss-security] Jenkins plugins -- multiple fixes

The Jenkins project published plugin updates today with fixes for multiple=
=20
vulnerabilities. Users should upgrade these plugins to the indicated=20
versions:

* Async Http Client Plugin 1.7.24.1
* Build Failure Analyzer 1.16.0
* Image Gallery Plugin 1.4
* TAP Plugin 1.25

Summary and description of the vulnerabilities are below. Some more details=
,=20
severity, and attribution can be found here:
https://wiki.jenkins-ci.org/display/SECURITY/Jenkins+Security+Advisory+2016=
-05-11

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as=20
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

1)
SECURITY-85 / CVE-2016-4986:
Path traversal vulnerability in TAP Plugin

The plugin did not correctly filter a parameter and allowed reading=20
arbitrary files on the file system.


2)
SECURITY-278 / CVE-2016-4987:
Path traversal vulnerability in Image Gallery Plugin

The plugin did not correctly validate form fields and allowed listing=20
arbitrary directories and reading arbitrary files on the file system.


3)
SECURITY-290 / CVE-2016-4988:
Cross-site scripting vulnerability in Build Failure Analyzer Plugin

The plugin did not escape a parameter echoed on an HTML page, resulting in =
a=20
reflected XSS vulnerability.


4)
SECURITY-305 / CVE-2013-7397 and CVE-2013-7398:
Async HTTP Client Plugin does not properly validate certificates

Async HTTP Client Plugin provides the Async HTTP Client Java library to=20
other plugins. It is based on the 1.7.x line of AHC, which by default is=20
vulnerable to CVE-2013-7397 and CVE-2013-7398, allowing man-in-the-middle=20
attacks. The fixes for these vulnerabilities were backported.

