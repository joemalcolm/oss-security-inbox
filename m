X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1411" "Wednesday" "30" "August" "2017" "00:54:23" "+0900" "=?ISO-2022-JP?B?IkRhaXN1a2UgTm9ndWNoaVtOUkkbJEIlOxsoQg==?==?ISO-2022-JP?B?GyRCJS0lZSUiISFMbjh9GyhCXSI=?=" "noguchi@nri-secure.co.jp" "<20170830005418.4E30.93016A1C@nri-secure.co.jp>" "38" "[oss-security] ConnMan #ConnManDo Vulnerability" nil nil nil "8" "2017082915:54:23" "[oss-security] ConnMan #ConnManDo Vulnerability" (number mark "U       noguchi@nri- Aug 30   38/1411  " thread-indent "\"[oss-security] ConnMan #ConnManDo Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7179 invoked by uid 550); 29 Aug 2017 19:02:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28033 invoked from network); 29 Aug 2017 15:54:57 -0000
Date: Wed, 30 Aug 2017 00:54:23 +0900
From: =?ISO-2022-JP?B?IkRhaXN1a2UgTm9ndWNoaVtOUkkbJEIlOxsoQg==?=
 =?ISO-2022-JP?B?GyRCJS0lZSUiISFMbjh9GyhCXSI=?= <noguchi@nri-secure.co.jp>
To: <oss-security@lists.openwall.com>
CC: noguchi@nri-secure.co.jp
Message-ID: <20170830005418.4E30.93016A1C@nri-secure.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-2022-JP"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Becky! ver. 2.68 [ja]
X-Proofpoint-Triggered-Rule: 172.17.130.127 module.pdr.rule.pass
Subject: [oss-security] ConnMan #ConnManDo Vulnerability

Hi ALL

We have published the web page which describes about detail of CVE-2017-128=
65, ConnMan vulnerability.
http://connmando.nri-secure.co.jp/index.html

This patch has been merged to master branch of debian and yocto Linux distr=
ibution.
And now we are trying to communicate with other Linux distribution security=
 teams.
- [debian][DSA 3956-1] connman security update
  https://www.debian.org/security/2017/dsa-3956
- [yocto]connman: Fix for CVE-2017-12865
  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D9086b525dd00f=
482ea68a384540cd30778413c9e

If it would be worth posting, could you please deal with it.

Best regards,

------------------------------------------------------------
Daisuke Noguchi
Seinor Security Consultant
NRI Secure Technologies, Ltd. Cyber Security Technical Development Departme=
nt
Tokyo Office   TEL +81-3-6831-8514 Fax +81-3-6706-0599



----------------------------------------------------------------
=1B$B$3$N%a!<%k$O!"K\Mh$N08@h$NJ}$N$_$K8BDj$5$l$?5!L)>pJs$,4^$^$l$F$$=1B(B
=1B$B$k>l9g$,$4$6$$$^$9!#$*?4$"$?$j$N$J$$>l9g$O!"Aw?.<T$K$4O"Mm$N$&$(!"=1B(B
=1B$B$3$N%a!<%k$r:o=3D|$$$?$@$-$^$9$h$&$*4j$$?=3D$7>e$2$^$9!#=1B(B

PLEASE READ :This e-mail is confidential and intended for the
named recipient only. If you are not an intended recipient,
please notify the sender and delete this e-mail.
----------------------------------------------------------------
