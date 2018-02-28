X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4482" "Wednesday" "28" "February" "2018" "23:20:56" "+0100" "Daniel Beck" "ml@beckweb.net" "<7515A5D7-EBF4-49A1-BDBF-DA715092FB1A@beckweb.net>" "135" "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "2" "2018022822:20:56" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Feb 28  135/4482  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") "<EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>" ("<EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2038 invoked by uid 550); 28 Feb 2018 22:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2020 invoked from network); 28 Feb 2018 22:21:08 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 28 Feb 2018 23:20:56 +0100
References: <EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>
Message-Id: <7515A5D7-EBF4-49A1-BDBF-DA715092FB1A@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1519856468;02783f36;
X-HE-SMSGID: 1erA5p-0000bv-BT
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins


> On 26. Feb 2018, at 13:39, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-260
> The Coverity Plugin stored passwords unencrypted as part of its
> configuration. This allowed users with Jenkins master local file system
> access and Jenkins administrators to retrieve the stored password. The
> latter could result in exposure of the passwords through browser
> extensions, cross-site scripting vulnerabilities, and similar situations.

CVE-2018-1000104


> SECURITY-402
> Missing permission checks in Gerrit Trigger Plugin allowed users with
> Overall/Read permission to access a form that showed the configuration of
> Gerrit servers in Jenkins. The key file password was only shown in its
> encrypted form, if configured. Other options were plainly visible.

CVE-2018-1000105


> SECURITY-403
> Missing permission checks in Gerrit Trigger Plugin allowed users with
> Overall/Read permission to perform the following actions:
>=20
> - Configure Gerrit servers
> - Connect and disconnect configured Gerrit servers

CVE-2018-1000106


> SECURITY-498
> Job and Node ownership Plugin did not prevent the ownership metadata being
> overwritten when a job or node configuration was updated from the CLI or
> using the remote API (POST config.xml).
>=20
> This allowed users with Job/Configure permission but without
> ManageOwnership/Jobs permission to change job ownership metadata, and use=
rs
> with Computer/Configure but without ManageOwnership/Nodes to change node
> ownership metadata.

CVE-2018-1000107


> SECURITY-712
> CppNCSS Plugin did not properly escape the report name and graph name,
> resulting in a reflected cross-site scripting vulnerability.

CVE-2018-1000108


> SECURITY-715
> Google Play Android Publisher Plugin provides a list of applicable
> credential IDs to allow users configuring a job to select the one they=E2=
=80=99d
> like to use to authenticate with the Google Play API.
>=20
> This functionality did not check permissions, allowing any user with
> Overall/Read permission to get a list of valid credential IDs. Those could
> be used as part of an attack to capture the credentials using another
> vulnerability.
>=20
> Additionally, a related form validation function would allow verification
> whether a specified credential is valid for use with the Google Play API.

CVE-2018-1000109


> SECURITY-723
> The class handling unauthenticated Git post-commit hook notification
> requests at the /git/ path unnecessarily extended another type that handl=
ed
> requests to the =E2=80=A6/search/ sub-path.
>=20
> This allowed submission of search queries to Jenkins, and getting a list =
of
> search results usually available to anyone with Overall/Read permission. =
In
> current Jenkins releases, those are typically the names of known users
> (both actual users of Jenkins, and known SCM committers) and nodes (master
> and agents).

CVE-2018-1000110


> SECURITY-724
> The class handling unauthenticated Subversion post-commit hook notificati=
on
> requests at the /subversion/ path unnecessarily extended another type that
> handled requests to the =E2=80=A6/search/ sub-path.
>=20
> This allowed submission of search queries to Jenkins, and getting a list =
of
> search results usually available to anyone with Overall/Read permission. =
In
> current Jenkins releases, those are typically the names of known users
> (both actual users of Jenkins, and known SCM committers) and nodes (master
> and agents).

CVE-2018-1000111


> SECURITY-726
> The class handling unauthenticated Mercurial post-commit hook notification
> requests at the /mercurial/ path unnecessarily extended another type that
> handled requests to the =E2=80=A6/search/ sub-path.
>=20
> This allowed submission of search queries to Jenkins, and getting a list =
of
> search results usually available to anyone with Overall/Read permission. =
In
> current Jenkins releases, those are typically the names of known users
> (both actual users of Jenkins, and known SCM committers) and nodes (master
> and agents).

CVE-2018-1000112


> SECURITY-731
> Users with Job/Configure permission were able to configure TestLink repor=
ts
> to display arbitrary unescaped HTML e.g. in test case names.

CVE-2018-1000113


> SECURITY-746
> In Promoted Builds Plugin, users with Job/Read access were able to approve
> and re-execute promotion processes with a manual promotion condition that
> did not specify a list of users allowed to manually approve the promotion.

CVE-2018-1000114

