X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1580" "Thursday" "25" "January" "2018" "10:01:56" "+0100" "Daniel Beck" "ml@beckweb.net" "<199D28DA-A105-401F-B57F-26CEC04C9A80@beckweb.net>" "62" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "1" "2018012509:01:56" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jan 25   62/1580  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>" ("<9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11803 invoked by uid 550); 25 Jan 2018 09:03:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10036 invoked from network); 25 Jan 2018 09:02:07 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 25 Jan 2018 10:01:56 +0100
References: <9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <9FA8984F-15E3-43F7-A50F-408E92B9D266@beckweb.net>
Message-Id: <199D28DA-A105-401F-B57F-26CEC04C9A80@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1516870927;203c19c4;
X-HE-SMSGID: 1eedPw-00048A-3B
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 22. Jan 2018, at 12:35, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-655 (PMD)

CVE-2018-1000008

> SECURITY-656 (Checkstyle)

CVE-2018-1000009

> SECURITY-657 (DRY)

CVE-2018-1000010

> SECURITY-658 (FindBugs)

CVE-2018-1000011

> SECURITY-695 (Warnings)

CVE-2018-1000012

> Multiple plugins based on the Static Analysis Utilities plugin are affect=
ed by=20
> an XML External Entity (XXE) processing vulnerability. This allows attack=
er to=20
> configure build processes so that one of these plugins parses a malicious=
ly=20
> crafted file that uses external entities for extraction of secrets from t=
he=20
> Jenkins master, server-side request forgery, or denial-of-service attacks.
>=20
>=20
> SECURITY-607
> Release plugin did not require form submissions to be submitted via POST,=
=20
> resulting in a CSRF vulnerability allowing attackers to trigger release b=
uilds.

CVE-2018-1000013

> SECURITY-507
> Translation Assistance did not require form submissions to be submitted v=
ia=20
> POST, resulting in a CSRF vulnerability allowing attackers to override=20
> localized strings displayed to all users on the current Jenkins instance =
if=20
> the victim is a Jenkins administrator.

CVE-2018-1000014

> SECURITY-675
> On instances with Authorize Project plugin, the authentication associated=
 with=20
> a build may lack the Computer/Build permission on some agents. This did n=
ot=20
> prevent the execution of Pipeline `node` blocks on those agents due to=20
> incorrect permissions checks in Pipeline: Nodes and Processes plugin.

CVE-2018-1000015

