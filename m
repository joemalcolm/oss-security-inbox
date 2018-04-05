X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5220" "Thursday" "5" "April" "2018" "12:37:58" "+0200" "Daniel Beck" "ml@beckweb.net" "<8E8091B7-344D-458B-A6C5-D3E0F71666AA@beckweb.net>" "172" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "4" "2018040510:37:58" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Apr  5  172/5220  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<0A92B24E-DD0F-4B77-8CF5-C6C997D305E5@beckweb.net>" ("<0A92B24E-DD0F-4B77-8CF5-C6C997D305E5@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2001 invoked by uid 550); 5 Apr 2018 10:38:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1983 invoked from network); 5 Apr 2018 10:38:11 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 5 Apr 2018 12:37:58 +0200
References: <0A92B24E-DD0F-4B77-8CF5-C6C997D305E5@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <0A92B24E-DD0F-4B77-8CF5-C6C997D305E5@beckweb.net>
Message-Id: <8E8091B7-344D-458B-A6C5-D3E0F71666AA@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1522924691;4fb35798;
X-HE-SMSGID: 1f42HH-0004t6-TO
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 26. Mar 2018, at 13:22, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-261
> GitHub Pull Request Builder Plugin stored serialized objects in `build.xm=
l`=20
> files that contained the credential used to poll Jenkins. This can be use=
d=20
> by users with master file system access to obtain GitHub credentials.
>=20
> Since 1.40.0, the plugin no longer stores serialized objects containing t=
he=20
> credential on disk.
>=20
> Builds started before the plugin was updated to 1.40.0 will retain the=20
> encoded credentials on disk. We strongly recommend revoking old GitHub=20
> credentials used in Jenkins.

CVE-2018-1000142


> SECURITY-262
> GitHub Pull Request Builder Plugin stored the webhook secret shared betwe=
en=20
> Jenkins and GitHub in plain text.
>=20
> This allowed users with Jenkins master local file system access and Jenki=
ns=20
> administrators to retrieve the stored password. The latter could result i=
n=20
> exposure of the passwords through browser extensions, cross-site scriptin=
g=20
> vulnerabilities, and similar situations.
>=20
> GitHub Pull Request Builder Plugin 1.32.1 and newer stores the webhook=20
> secret encrypted on disk.

CVE-2018-1000143


> SECURITY-308
> Cucumber Living Documentation Plugin disabled the 'Content-Security-Polic=
y'=20
> HTTP header XSS protection for files served by Jenkins until Jenkins was=
=20
> restarted whenever a Cucumber peport was viewed by any user.
>=20
> This has been addressed in version 1.1.0 of the plugin, and it will now=20
> request that users manually change the Content-Security-Policy option in=
=20
> Jenkins.

CVE-2018-1000144


> SECURITY-373
> Perforce Plugin encrypts its credentials using DES and a public key store=
d=20
> in its public source code, so it only serves as basic obfuscation. This=20
> allowed users with Jenkins master local file system access and Jenkins=20
> administrators to retrieve the stored password. The latter could result i=
n=20
> exposure of the passwords through browser extensions, cross-site scriptin=
g=20
> vulnerabilities, and similar situations.
>=20
> As of publication of this advisory, there is no fix. The plugin has been=
=20
> removed from publication at the request of its former maintainers.

CVE-2018-1000145


> SECURITY-504
> vSphere Plugin disabled SSL/TLS certificate validation unconditionally,
> allowing potential man-in-the-middle attacks.
>=20
> vSphere Plugin 2.17 now has SSL/TLS certificate validation enabled by
> default.

CVE-2018-1000151


> SECURITY-519
> Liquibase Runner Plugin allows users with Job/Configure permission to=20
> configure its build step in a way that loads arbitrary class files into t=
he=20
> Jenkins master JVM, resulting in arbitrary code execution.
>=20
> As of publication of this advisory, there is no fix.

CVE-2018-1000146


> SECURITY-536
> Perforce Plugin implements its own credential encryption using DES and an=
=20
> encryption key stored in its public source code. This is not considered a=
=20
> secret by Jenkins, resulting in potential exposure of Perforce credential=
s=20
> stored in job configurations to users with Extended Read permission.
> While these are encrypted, this can only be considered basic obfuscation=
=20
> due to the hard-coded public encryption key used.
>=20
> As of publication of this advisory, there is no fix.

CVE-2018-1000147


> SECURITY-545
> Copy To Slave Plugin allows users with Job/Configure permissions to=20
> configure it in such a way that it allows obtaining arbitrary files=20
> accessible to the Jenkins master process from the Jenkins master file
> system.
>=20
> As of publication of this advisory, there is no fix.

CVE-2018-1000148


> SECURITY-630
> Ansible Plugin disabled host key verification by default, having it only =
as=20
> an opt-in option.
>=20
> Ansible Plugin 1.0 now enables host key verification by default, adding=20
> options allowing users to opt out.
>=20
> Existing configurations that previously did not opt into host key=20
> verification will have host key verification enabled after update, possib=
ly=20
> resulting in failures.

CVE-2018-1000149


> SECURITY-736
> Reverse Proxy Auth Plugin persisted a cache of granted authorities (group=
=20
> memberships) on disk.
>=20
> This could allow users with local Jenkins master file system access to=20
> obtain group membership information of Jenkins users.

CVE-2018-1000150


> SECURITY-745
> vSphere Plugin did not perform permission checks on methods implementing=
=20
> form validation. This allowed users with Overall/Read access to Jenkins t=
o=20
> perform various actions such as:
>=20
> * Connect to an attacker-specified vSphere server using attacker-specifie=
d=20
>  credentials IDs obtained through another method, capturing credentials=20
>  stored in Jenkins
> * Connect to configured vSphere servers and looking up information,=20
>  potentially resulting in denial of service
>=20
> Additionally, these form validation methods did not require POST requests=
,=20
> resulting in a CSRF vulnerability.
>=20
> These form validation methods now require POST requests and appropriate=20
> user permissions.

CVE-2018-1000152 (improper authorization) and CVE-2018-1000153 (CSRF)

