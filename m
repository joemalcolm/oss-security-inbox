X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2047" "Thursday" "28" "March" "2019" "19:53:45" "+0100" "Daniel Beck" "ml@beckweb.net" nil "71" nil "^Date:" nil nil "3" nil nil (number mark "U       ml@beckweb.n Mar 28   71/2047  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9580 invoked by uid 550); 28 Mar 2019 18:53:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9557 invoked from network); 28 Mar 2019 18:53:58 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <B9DFA5CD-50A7-4C49-B93A-64555FBAF031@beckweb.net>
In-Reply-To: <B9DFA5CD-50A7-4C49-B93A-64555FBAF031@beckweb.net>
Message-Id: <65BCED7D-3903-40C3-97C7-27E0BF1E7A48@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1553799238;b885f43c;
X-HE-SMSGID: 1h9a9r-00062E-Br
Date: Thu, 28 Mar 2019 19:53:45 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com



> On 25. Mar 2019, at 16:09, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-1353
> Sandbox projection in the Script Security and Pipeline: Groovy Plugins=20
> could be circumvented through methods supporting type casts and type=20
> coercion. This allowed attackers to invoke constructors for arbitrary typ=
es.

CVE-2019-1003040 (Script Security) and CVE-2019-1003041 (Pipeline: Groovy)

> SECURITY-1361
> Lockable Resources Plugin did not properly escape resource names in=20
> generated JavaScript code, thus leading to a cross-site scripting (XSS)=20
> vulnerability.

CVE-2019-1003042

> SECURITY-976
> [Slack Notification Plugin] did not perform permission checks on a method=
=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified URL using attacker-specifi=
ed=20
> credentials IDs obtained through another method, capturing credentials=20
> stored in Jenkins.

CVE-2019-1003043

> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a cross-site request forgery vulnerability.

CVE-2019-1003044

> SECURITY-846
> ECS Publisher Plugin stored the API token unencrypted in jobs' config.xml=
=20
> files and its global configuration file on the Jenkins master. This token=
=20
> could be viewed by users with Extended Read permission, or access to the=
=20
> master file system.

CVE-2019-1003045

> SECURITY-992
> A missing permission check in multiple form validation methods in Fortify=
=20
> on Demand Uploader Plugin allowed users with Overall/Read permission to=20
> initiate a connection test to an attacker-specified server.

CVE-2019-1003047

> Additionally, the form validation methods did not require POST requests,=
=20
> resulting in a CSRF vulnerability.

CVE-2019-1003046

> SECURITY-1089
> PRQA Plugin stored a password unencrypted in its global configuration fil=
e=20
> on the Jenkins master. This password could be viewed by users with access=
=20
> to the master file system.

CVE-2019-1003048

