X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2219" "Saturday" "18" "November" "2017" "08:22:51" "+0100" "Daniel Beck" "ml@beckweb.net" "<E384AC07-136D-426C-B71C-49099D6CCF86@beckweb.net>" "68" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "11" "2017111807:22:51" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Nov 18   68/2219  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>" ("<307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13401 invoked by uid 550); 18 Nov 2017 07:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13383 invoked from network); 18 Nov 2017 07:23:03 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 18 Nov 2017 08:22:51 +0100
References: <307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>
Message-Id: <E384AC07-136D-426C-B71C-49099D6CCF86@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510989783;62904950;
X-HE-SMSGID: 1eFxSm-0007rM-9N
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins


> On 11. Oct 2017, at 18:21, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-478
> Users with permission to create or configure agents in Jenkins could=20
> configure a launch method called Launch agent via execution of command on=
=20
> master. This allowed them to run arbitrary shell commands on the master=20
> node whenever the agent was supposed to be launched.

CVE-2017-1000393

> SECURITY-514
> Information about Jenkins user accounts is generally available to anyone=
=20
> with Overall/Read permissions via the /user/(username)/api remote API. Th=
is=20
> included e.g. Jenkins users' email addresses if the Mailer Plugin is=20
> installed.

CVE-2017-1000395

> SECURITY-555
> Jenkins bundled a version of the commons-httpclient library with the=20
> vulnerability CVE-2012-6153 that incorrectly verified SSL certificates,=20
> making it susceptible to man-in-the-middle attacks.

CVE-2017-1000396

> SECURITY-611
> The remote API at /computer/(agent-name)/api showed information about tas=
ks=20
> (typically builds) currently running on that agent. This included=20
> information about tasks that the current user otherwise has no access to,=
=20
> e.g. due to lack of Job/Read permission.

CVE-2017-1000398

> SECURITY-618
> The remote API at /queue/item/(ID)/api showed information about tasks in=
=20
> the queue (typically builds waiting to start). This included information=
=20
> about tasks that the current user otherwise has no access to, e.g. due to=
=20
> lack of Job/Read permission.

CVE-2017-1000399

> SECURITY-617
> The remote API at /job/(job-name)/api contained information about upstrea=
m=20
> and downstream projects. This included information about tasks that the=20
> current user otherwise has no access to, e.g. due to lack of Job/Read=20
> permission.

CVE-2017-1000400

> SECURITY-616
> The Jenkins default form control for passwords and other secrets,=20
> <f:password/>, supports form validation (e.g. for API keys). The form=20
> validation AJAX requests were sent via GET, which could result in secrets=
=20
> being logged to a HTTP access log in non-default configurations of=20
> Jenkins, and made available to users with access to these log files.

CVE-2017-1000401=
