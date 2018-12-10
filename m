X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["514" "Monday" "10" "December" "2018" "01:50:37" "+0100" "Daniel Beck" "ml@beckweb.net" "<DEF7ECE9-A4B6-46B2-8485-481FCE9D138D@beckweb.net>" "18" "Re: [oss-security] Script sandbox bypass in multiple Jenkins plugins" nil nil nil "12" "2018121000:50:37" "[oss-security] Script sandbox bypass in multiple Jenkins plugins" (number mark "U       ml@beckweb.n Dec 10   18/514   " thread-indent "\"Re: [oss-security] Script sandbox bypass in multiple Jenkins plugins\"\n") "<34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>" ("<34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27822 invoked by uid 550); 10 Dec 2018 00:50:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27750 invoked from network); 10 Dec 2018 00:50:50 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 10 Dec 2018 01:50:37 +0100
References: <34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>
Message-Id: <DEF7ECE9-A4B6-46B2-8485-481FCE9D138D@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1544403050;b625f48f;
X-HE-SMSGID: 1gW9mQ-0006PI-VV
Subject: Re: [oss-security] Script sandbox bypass in multiple Jenkins plugins



> On 29. Oct 2018, at 14:42, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-1186
> The Groovy Sandbox library used by Script Security Plugin and Pipeline Gr=
oovy
> Plugin did not apply sandbox restrictions to finalize methods. This could=
 be
> used to invoke arbitrary constructors and methods, bypassing sandbox
> protection.
>=20
> Finalize methods are now prohibited in classes subject to sandbox securit=
y.

CVE-2018-1000865 (Script Security Plugin) and CVE-2018-1000866 (Pipeline: G=
roovy Plugin)

