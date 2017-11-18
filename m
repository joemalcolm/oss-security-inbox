X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1912" "Saturday" "18" "November" "2017" "08:26:09" "+0100" "Daniel Beck" "ml@beckweb.net" "<E2B70189-9191-4E7D-9371-69ABD5F9B5BB@beckweb.net>" "65" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "11" "2017111807:26:09" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Nov 18   65/1912  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>" ("<D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3972 invoked by uid 550); 18 Nov 2017 07:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3950 invoked from network); 18 Nov 2017 07:26:21 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 18 Nov 2017 08:26:09 +0100
References: <D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>
Message-Id: <E2B70189-9191-4E7D-9371-69ABD5F9B5BB@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510989981;a1575158;
X-HE-SMSGID: 1eFxVx-0001YG-PI
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 23. Oct 2017, at 14:20, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-470
> Active Choices plugin allowed users with Job/Configure permission to
> provide arbitrary HTML to be shown on the Build With Parameters page
> through the Active Choices Reactive Reference Parameter type. This could
> include, for example, arbitrary JavaScript.


CVE-2017-1000386


> SECURITY-50
> Some URLs provided by global-build-stats plugin returned a JSON response=
=20
> that contained request parameters. These responses had the=20
> Content-Type: text/html, so could have been interpreted as HTML by client=
s,
> resulting in a potential reflected cross-site scripting vulnerability.
>=20
> Additionally, some URLs provided by global-build-stats plugin that modify=
=20
> data did not require POST requests to be sent, resulting in a potential=20
> cross-site request forgery vulnerability.


CVE-2017-1000389


> SECURITY-57
> Dependency Graph Viewer plugin did not perform permission checks for the=
=20
> API endpoint that modifies the dependency graph, allowing anyone with=20
> Overall/Read permission to modify this data.


CVE-2017-1000388


> SECURITY-378
> Build-Publisher plugin stores credentials to other Jenkins instances in t=
he=20
> file hudson.plugins.build_publisher.BuildPublisher.xml in the Jenkins=20
> master home directory. These credentials were stored unencrypted, allowin=
g=20
> anyone with local file system access to access them.
>=20
> Additionally, the credentials were also transmitted in plain text as part=
=20
> of the configuration form. This could result in exposure of the API key=20
> through browser extensions, cross-site scripting vulnerabilities, and=20
> similar situations.


CVE-2017-1000387


> JENKINS-36333
> Multijob plugin did not check permissions in the Resume Build action,=20
> allowing anyone with Job/Read permission to resume the build.


CVE-2017-1000390

