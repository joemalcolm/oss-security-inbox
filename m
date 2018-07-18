X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2237" "Wednesday" "18" "July" "2018" "18:32:10" "+0200" "Daniel Beck" "ml@beckweb.net" "<D2FED7A8-F45F-403A-B474-A1B42B1A815F@beckweb.net>" "71" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "7" "2018071816:32:10" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jul 18   71/2237  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>" ("<2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31818 invoked by uid 550); 18 Jul 2018 16:32:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31800 invoked from network); 18 Jul 2018 16:32:22 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 18 Jul 2018 18:32:10 +0200
References: <2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>
Message-Id: <D2FED7A8-F45F-403A-B474-A1B42B1A815F@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1531931542;f0d26ada;
X-HE-SMSGID: 1ffpN4-00024l-Kb
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins


> On 18. Jul 2018, at 16:38, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-897
> Unauthenticated users could provide maliciously crafted login credentials=
=20
> that cause Jenkins to move the config.xml file from the Jenkins home=20
> directory. This configuration file contains basic configuration of=20
> Jenkins, including the selected security realm and authorization strategy=
.=20
> If Jenkins is started without this file present, it will revert to the=20
> legacy defaults of granting administrator access to anonymous users.

CVE-2018-1999001

> SECURITY-914
> An arbitrary file read vulnerability in the Stapler web framework used by=
=20
> Jenkins allowed unauthenticated users to send crafted HTTP requests=20
> returning the contents of any file on the Jenkins master file system that=
=20
> the Jenkins master process has access to.

CVE-2018-1999002

> SECURITY-891
> The URLs handling cancellation of queued builds did not perform a=20
> permission check, allowing users with Overall/Read permission to cancel=20
> queued builds.

CVE-2018-1999003

> SECURITY-892
> The URL that initiates agent launches on the Jenkins master did not perfo=
rm=20
> a permission check, allowing users with Overall/Read permission to initia=
te=20
> agent launches.

CVE-2018-1999004

> SECURITY-944
> The build timeline widget shown on URLs like /view/=E2=80=A6/builds did n=
ot=20
> properly escape display names of items. This resulted in a cross-site=20
> scripting vulnerability exploitable by users able to control item display=
=20
> names.

CVE-2018-1999005

> SECURITY-925
> Files indicating when a plugin JPI file was last extracted into a=20
> subdirectory of plugins/ in the Jenkins home directory was accessible via=
=20
> HTTP by users with Overall/Read permission. This allowed unauthorized use=
rs=20
> to determine the likely install date of a given plugin.

CVE-2018-1999006

> SECURITY-390
> Stapler is the web framework used by Jenkins to route HTTP requests. When=
=20
> its debug mode is enabled, HTTP 404 error pages display diagnostic=20
> information. Those error pages did not escape parts of URLs they displaye=
d,=20
> in rare cases resulting in a cross-site scripting vulnerability.

CVE-2018-1999007

