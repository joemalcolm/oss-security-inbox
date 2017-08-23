X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Thursday" "24" "August" "2017" "01:49:17" "+0200" "Daniel Beck" "ml@beckweb.net" "<7363538D-EADE-4A90-8C22-9ECE268983DA@beckweb.net>" "13" "Re: [oss-security] Jenkins plugins -- multiple vulnerabilities" "^Date:" nil nil "8" "2017082323:49:17" "[oss-security] Jenkins plugins -- multiple vulnerabilities" (number mark "U       ml@beckweb.n Aug 24   13/446   " thread-indent "\"Re: [oss-security] Jenkins plugins -- multiple vulnerabilities\"\n") "<FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>" ("<FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28591 invoked by uid 550); 23 Aug 2017 23:49:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28570 invoked from network); 23 Aug 2017 23:49:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
References: <FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>
In-Reply-To: <FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>
Message-Id: <7363538D-EADE-4A90-8C22-9ECE268983DA@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1503532169;31c567ee;
X-HE-SMSGID: 1dkfOg-0003Ve-7p
Date: Thu, 24 Aug 2017 01:49:17 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Jenkins plugins -- multiple vulnerabilities
To: oss-security@lists.openwall.com


> On 11. Jul 2017, at 13:52, Daniel Beck <ml@beckweb.net> wrote:
>=20
> JENKINS-21436
> The SSH Plugin stores credentials which allow jobs to access remote serve=
rs=20
> via the SSH protocol. User passwords and passphrases for encrypted SSH ke=
ys=20
> are stored in plaintext in a configuration file. SSH Plugin now integrate=
s=20
> with the Credentials Plugin and existing credentials are migrated.

This has been assigned CVE-2017-1000245=
