X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2912" "Thursday" "12" "May" "2016" "00:30:08" "+0200" "Daniel Beck" "ml@beckweb.net" "<000E6874-A0FB-46E7-91D9-52598837EBAC@beckweb.net>" "82" "[oss-security] Jenkins - multiple fixes" nil nil nil "5" "2016051122:30:08" "[oss-security] Jenkins - multiple fixes" (number mark "U       ml@beckweb.n May 12   82/2912  " thread-indent "\"[oss-security] Jenkins - multiple fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28584 invoked by uid 550); 11 May 2016 22:30:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28534 invoked from network); 11 May 2016 22:30:20 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <000E6874-A0FB-46E7-91D9-52598837EBAC@beckweb.net>
Date: Thu, 12 May 2016 00:30:08 +0200
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1463005820;f6668dd0;
Subject: [oss-security] Jenkins - multiple fixes

The Jenkins project published new releases today with fixes for multiple
vulnerabilities. Users should upgrade to Jenkins 2.3 or Jenkins 1.651.2:
https://jenkins.io/download/

Summary and description of the vulnerabilities are below. Some more=20
details, severity, and attribution can be found here:
https://wiki.jenkins-ci.org/display/SECURITY/Jenkins+Security+Advisory+2016=
-05-11

We provide advance notification for security updates on this mailing
list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

1)
SECURITY-170 / CVE-2016-3721: Arbitrary build parameters are passed to=20
build scripts as environment variables

Build parameters in Jenkins typically are passed to build scripts as=20
environment variables. Some plugins allow passing arbitrary (undeclared)
parameters. Depending on access permissions and installed plugins,=20
malicious users were able to trigger builds, passing arbitrary=20
environment variables (e.g. PATH) to modify the behavior of those builds.


2)
SECURITY-243 / CVE-2016-3722: Malicious users with multiple user=20
accounts can prevent other users from logging in

By changing the freely editable 'full name', malicious users with
multiple user accounts could prevent other users from logging in, as=20
'full name' was resolved before actual user name to determine which=20
account is currently trying to log in.


3)
SECURITY-250 / CVE-2016-3723: Information on installed plugins exposed=20
via API

The XML/JSON API endpoints providing information about installed plugins
were missing permissions checks, allowing any user with read access to
Jenkins to determine which plugins and versions were installed.


4)
SECURITY-266 / CVE-2016-3724: Encrypted secrets (e.g. passwords) were
leaked to users with permission to read configuration

Users with extended read access could access encrypted secrets stored
directly in the configuration of those items.


5)
SECURITY-273 / CVE-2016-3725: Regular users can trigger download of
update site metadata

A missing permissions check allowed any user with access to Jenkins=20
to trigger an update of update site metadata. This could be combined
with DNS cache poisoning to disrupt Jenkins service.


6)
SECURITY-276 / CVE-2016-3726: Open redirect to scheme-relative URLs

Some Jenkins URLs did not properly validate the redirect URLs, which
allowed malicious users to create URLs that redirect users to arbitrary
scheme-relative URLs.


7)
SECURITY-281 / CVE-2016-3727: Granting the permission to read node
configurations allows access to overall system configuration

The API URL /computer/(master)/api/xml allowed users with the 'extended
read' permission for the master node to see some global Jenkins
configuration, including the configuration of the security realm.

