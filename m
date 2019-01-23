X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2356" "Wednesday" "23" "January" "2019" "11:21:11" "+0100" "Daniel Beck" "ml@beckweb.net" "<B09750A0-4E8C-464B-951D-0267A6174CFE@beckweb.net>" "81" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "1" "2019012310:21:11" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jan 23   81/2356  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<D95FAFFB-57B5-4D5A-BFF2-3A4F8F67320C@beckweb.net>" ("<D95FAFFB-57B5-4D5A-BFF2-3A4F8F67320C@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1665 invoked by uid 550); 23 Jan 2019 10:21:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1640 invoked from network); 23 Jan 2019 10:21:25 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Wed, 23 Jan 2019 11:21:11 +0100
References: <D95FAFFB-57B5-4D5A-BFF2-3A4F8F67320C@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <D95FAFFB-57B5-4D5A-BFF2-3A4F8F67320C@beckweb.net>
Message-Id: <B09750A0-4E8C-464B-951D-0267A6174CFE@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1548238885;3c8b3675;
X-HE-SMSGID: 1gmFej-0000u0-UG
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins



> On 10. Oct 2018, at 17:11, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-867
> A path traversal vulnerability in Stapler allowed viewing routable object=
s=20
> with views defined on any type. This could be used to access internal dat=
a=20
> of routable objects, e.g. by showing their string representation (#toStri=
ng).

CVE-2018-1000997

> SECURITY-1074
> Users with Job/Configure permission could specify a relative path escapin=
g=20
> the base directory in the file name portion of a file parameter definitio=
n.=20
> This path would be used to archive the uploaded file on the Jenkins maste=
r,=20
> resulting in an arbitrary file write vulnerability.
>=20
> File parameters that escape the base directory are no longer accepted and=
=20
> the build will fail.

CVE-2018-1000406

> SECURITY-1129
> The wrapper query parameter for the XML variant of the Jenkins remote API=
=20
> did not validate the specified tag name. This resulted in a reflected cro=
ss-
> site scripting vulnerability.
>=20
> Only legal XML tag names are now allowed for the wrapper query parameter.

CVE-2018-1000407

> SECURITY-1128
> By accessing a specific crafted URL on Jenkins instances using Jenkins' o=
wn=20
> user database, users without Overall/Read access could create ephemeral=20
> user records.
>=20
> This behavior could be abused to create a large number of ephemeral user=
=20
> records in memory.
>=20
> Accessing this URL now no longer results in a user record getting created.

CVE-2018-1000408

> SECURITY-1158
> When signing up for a new user account on instances using Jenkins' own us=
er=20
> database, Jenkins did not invalidate the existing session and create a ne=
w=20
> one. This allowed session fixation.
>=20
> Jenkins now invalidates the existing session and creates a new one when=20
> logging in after user signup.

CVE-2018-1000409

> SECURITY-765
> When Jenkins fails to process form submissions due to an internal error,=
=20
> the error message shown to the user and written to the log typically=20
> includes the serialized JSON form submission. Secrets, such as submitted=
=20
> passwords, might be included with the JSON object, and shown or written t=
o=20
> disk in plain text.
>=20
> Jenkins now masks values in these error messages from view if they were=20
> shown on the UI as password form fields.

CVE-2018-1000410

