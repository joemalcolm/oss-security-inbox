X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1123" "Wednesday" "28" "February" "2018" "23:18:37" "+0100" "Daniel Beck" "ml@beckweb.net" "<F31655CA-6673-4B16-8FB7-C2AF8E7579D1@beckweb.net>" "32" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "2" "2018022822:18:37" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Feb 28   32/1123  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>" ("<077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22096 invoked by uid 550); 28 Feb 2018 22:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22076 invoked from network); 28 Feb 2018 22:18:50 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 28 Feb 2018 23:18:37 +0100
References: <077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>
Message-Id: <F31655CA-6673-4B16-8FB7-C2AF8E7579D1@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1519856330;c97110a4;
X-HE-SMSGID: 1erA3a-0008RT-Dn
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins


> On 14. Feb 2018, at 16:35, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-506
> The form validation for the proxy configuration form did not check the=20
> permission of the user accessing it, allowing anyone with Overall/Read=20
> access to Jenkins to cause Jenkins to send a GET request to a specified=20
> URL, optionally with a specified proxy configuration.
>=20
> If that request=E2=80=99s HTTP response code indicates success, the form =
validation=20
> is returning a generic success message, otherwise the HTTP status code is=
=20
> returned. It was not possible to reuse an existing proxy configuration to=
=20
> send those requests; that configuration had to be provided by the attacke=
r.

CVE-2018-1000102

> SECURITY-717
> Jenkins did not take into account case-insensitive file systems when=20
> preventing access to plugin resource files that should not be accessible.=
=20
> This allowed users with Overall/Read permission to download plugin resour=
ce=20
> files in META-INF and WEB-INF directories, such as the plugins' JAR files=
,=20
> which could contain hardcoded secrets.

CVE-2018-1000103

