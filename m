X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Thursday" "26" "July" "2018" "09:50:57" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180726095057.796664f1@computer>" "25" "[oss-security] Squirrelmail XSS security fix" nil nil nil "7" "2018072607:50:57" "[oss-security] Squirrelmail XSS security fix" (number mark "U       hanno@hboeck Jul 26   25/818   " thread-indent "\"[oss-security] Squirrelmail XSS security fix\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30034 invoked by uid 550); 26 Jul 2018 07:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30000 invoked from network); 26 Jul 2018 07:51:03 -0000
Date: Thu, 26 Jul 2018 09:50:57 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180726095057.796664f1@computer>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Squirrelmail XSS security fix

Hi,

I recently posted info about several XSS vulns in squirrelmail [1] to
this list.

Given its upstream state I considered forking squirrelmail, though I
reached out to the maintainer and he claims he's still actively working
on it. I sent him a couple of patches, but they're not applied yet.

For now I'm sharing the patches I use on my own installations:
https://github.com/hannob/squirrelpatches

This contains a security fix for the known XSS issues and hopefully a
few more (though I make no claims that this is safe from XSS now, I'd
appreciate if others could check). It also contains patches for PHP
warnings and issues with PHP 7.2.

[1] https://sourceforge.net/p/squirrelmail/bugs/2831/

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
