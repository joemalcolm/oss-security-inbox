X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["627" "Monday" "25" "March" "2019" "17:17:44" "+0100" "Daniel Beck" "ml@beckweb.net" nil "19" nil nil nil nil "3" nil nil (number mark "U       ml@beckweb.n Mar 25   19/627   " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5808 invoked by uid 550); 25 Mar 2019 16:17:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5777 invoked from network); 25 Mar 2019 16:17:56 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 25 Mar 2019 17:17:44 +0100
References: <B9DFA5CD-50A7-4C49-B93A-64555FBAF031@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <B9DFA5CD-50A7-4C49-B93A-64555FBAF031@beckweb.net>
Message-Id: <52014961-3705-48F7-9EAB-0E3E612BC655@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1553530676;4ba3e5ba;
X-HE-SMSGID: 1h8SID-00088h-Ga
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins



> On 25. Mar 2019, at 16:09, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-976
> Notification Plugin Plugin did not perform permission checks on a method=
=20
> implementing form validation. This allowed users with Overall/Read access=
=20
> to Jenkins to connect to an attacker-specified URL using attacker-specifi=
ed=20
> credentials IDs obtained through another method, capturing credentials=20
> stored in Jenkins.
>=20
> Additionally, this form validation method did not require POST requests,=
=20
> resulting in a cross-site request forgery vulnerability.

Correction: This is about Slack Notification Plugin.=
