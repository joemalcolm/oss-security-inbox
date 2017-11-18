X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1148" "Saturday" "18" "November" "2017" "08:26:47" "+0100" "Daniel Beck" "ml@beckweb.net" "<3DAE0CC3-13ED-4C99-8A76-CCE95011D24F@beckweb.net>" "37" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "11" "2017111807:26:47" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Nov 18   37/1148  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>" ("<6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11277 invoked by uid 550); 18 Nov 2017 07:27:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10220 invoked from network); 18 Nov 2017 07:26:59 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 18 Nov 2017 08:26:47 +0100
References: <6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>
Message-Id: <3DAE0CC3-13ED-4C99-8A76-CCE95011D24F@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510990019;12bfb592;
X-HE-SMSGID: 1eFxWZ-0001YG-Pa
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins


> On 8. Nov 2017, at 11:56, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-499
> Jenkins stores metadata related to "people", which encompasses actual use=
r=20
> accounts, as well as users appearing in SCM, in directories corresponding=
=20
> to the user ID on disk. These directories used the user ID for their name=
=20
> without additional escaping. This potentially resulted in a number of=20
> problems, such as the following:
> 1. User names consisting of a single forward slash would have their user=
=20
> record stored in the parent directory; deleting this user deleted all use=
r=20
> records.
> 2. User names containing character sequences such as .. could be used to=
=20
> clobber other configuration files in Jenkins.
> 3. User names could consist of reserved names such as COM (on Windows).


CVE-2017-1000391


> SECURITY-641
> Autocompletion suggestions for text fields were not escaped, resulting in=
 a=20
> persisted cross-site scripting vulnerability if the source for the=20
> suggestions allowed specifying text that includes HTML metacharacters lik=
e=20
> less-than and greater-than characters.


CVE-2017-1000392

