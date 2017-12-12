X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1088" "Tuesday" "12" "December" "2017" "16:18:34" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171212161834.3818cdd2@pc1>" "36" "[oss-security] ROBOT attack (WolfSSL, Bouncy Castle, Erlang)" "^Date:" nil nil "12" "2017121215:18:34" "[oss-security] ROBOT attack (WolfSSL, Bouncy Castle, Erlang)" (number mark "        hanno@hboeck Dec 12   36/1088  " thread-indent "\"[oss-security] ROBOT attack (WolfSSL, Bouncy Castle, Erlang)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3732 invoked by uid 550); 12 Dec 2017 15:18:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3686 invoked from network); 12 Dec 2017 15:18:47 -0000
Message-ID: <20171212161834.3818cdd2@pc1>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Dec 2017 16:18:34 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ROBOT attack (WolfSSL, Bouncy Castle, Erlang)
To: oss-security@lists.openwall.com

Hi,

I published details about the ROBOT attack today, it's a couple of
minor variations of the old Bleichenbacher attack.
(Return Of Bleichenbacher's Oracle Threat)

https://robotattack.org/

It is mostly about proprietary appliances, but also affects three FOSS
TLS stacks.

The attack is based on the fact that an attacker can distinguish valid
and invalid RSA PKCS #1 v1.5 paddings based on different server
responses.

Erlang (CVE-2017-1000385):
http://erlang.org/pipermail/erlang-questions/2017-November/094257.html
http://erlang.org/pipermail/erlang-questions/2017-November/094256.html
http://erlang.org/pipermail/erlang-questions/2017-November/094255.html

WolfSSL (CVE-2017-13099):
https://github.com/wolfSSL/wolfssl/pull/1229
(only a pull req for now, no new release yet)

Bouncy Castle (CVE-2017-13098):
https://github.com/bcgit/bc-java/commit/a00b684465b38d722ca9a3543b8af8568e6=
bad5c
1.59 beta 9 contains the fix:
https://downloads.bouncycastle.org/betas/

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
