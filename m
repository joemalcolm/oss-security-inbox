X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2228" "Sunday" "11" "December" "2016" "17:29:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>" "50" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" nil nil nil "12" "2016121122:29:13" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "U       cve-assign@m Dec 11   50/2228  " thread-indent "\"[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<20161209201906.ltauap7fydkc62f6@eldamar.local>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19949 invoked by uid 550); 11 Dec 2016 22:29:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19930 invoked from network); 11 Dec 2016 22:29:25 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161209201906.ltauap7fydkc62f6@eldamar.local>
Message-ID: <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
Date: Sun, 11 Dec 2016 17:29:13 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Sam Whited discovered that MCabber versions 1.0.3 and before, was
> vulnerable to an attack identical to Gajim's CVE-2015-8688 which
> can lead to a malicious actor MITMing a conversation, or adding
> themselves as an entity on a third parties roster (thereby granting
> themselves the associated privileges
> 
> https://gultsch.de/gajim_roster_push_and_message_interception.html
> https://bitbucket.org/McKael/mcabber-crew/commits/6e1ead98930d7dd0a520ad17c720ae4908429033/raw
> https://bugs.debian.org/845258

Use CVE-2016-9928.

At present, we do not understand whether the behavior of other
mentioned products, such as slixmpp and SleekXMPP, should be
considered a vulnerability. If the situation is essentially "the
product could be improved to make it less likely for third-party code
authors to accidentally create an unsafe interaction," then typically
a CVE ID is not required.

However, if (for example) there is going to be a DSA for the
python-sleekxmpp and python3-sleekxmpp packages, then we can assign an
ID. As far as we can tell, the python3-slixmpp* packages are not
available in jessie, and poezio is packaged for Fedora but not for any
Debian distribution.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYTdLcAAoJEHb/MwWLVhi2fMwQALgaLk/cdN/g6ETDkT9L5bQp
hq/oRUmZtIZOVOa/qY5cVSuS30aaGwDA2SwV9KCbb7oi0G1pRGk5/HSD+i34+SVx
Y2PH6faXAnvtbOV808IItGWS2Y4wqQXH1bEm4pwY8abLyUsraO4I0vUip3/GSImj
vy0qSkMBI9OadLJS1LSVIProiwZlI33NqFJOF0cPaWpChJpMfoPNJdn2qUUgJR2F
F14MgvAjK/V1bDps/tLVNn7Rxvy7d10gBBgc0DHtNNCjLQSeZVdVkv88cDO0SZga
QeARph2MVTPNcd2GjHcubT+FHL91mgWCyz6GGQK3/qkvq7elhmHXeR+Na7LHn5VJ
vMrrq159mJCIKto+ThHNXLDxEqSXL83vi6x4luECf4FZrqW4GN904uvp07gtGTHW
CsQbKQXVHsjWnojcX527MkTEVeWPE9/WslSXbWixgdlN4mKbwPlbZ8dC22xmGQqm
TiEnn2ZmJyLLirixXFGrauRxcbFQm5byURSsJd3IfNphIwyk2jU/o4nj5HqLKGWo
xwcLstCeVoeQntVYMjapmev7CG+NYSWoB7gq+Lf9Z93hL7xE71FM11o5M4FaCjyo
z/rkgEm4cUaJ76S7jjURtOsillPTVb13fHTR+F04B7c4aaVXvvicIR26FdEQENc8
iggKnJPJaFpxWZK5+T7P
=X469
-----END PGP SIGNATURE-----
