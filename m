X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["920" "Sunday" "24" "September" "2017" "22:15:08" "+0200" "Ludovic =?utf-8?B?Q291cnTDqHM=?=" "ludo@gnu.org" "<874lrr3lbn.fsf@gnu.org>" "25" "Re: [oss-security] Why send bugs embargoed to distros?" "^Cc:" nil nil "9" "2017092420:15:08" "[oss-security] Why send bugs embargoed to distros?" (number mark "        ludo@gnu.org Sep 24   25/920   " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27849 invoked by uid 550); 24 Sep 2017 21:29:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9448 invoked from network); 24 Sep 2017 20:15:24 -0000
References: <20170923134418.6e460656@pc1>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 3 =?utf-8?Q?Vend=C3=A9miaire?= an 226 de la
 =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-pc-linux-gnu
In-Reply-To: <20170923134418.6e460656@pc1> ("Hanno \=\?utf-8\?Q\?B\=C3\=B6ck\=22'\?\=
 \=\?utf-8\?Q\?s\?\= message of "Sat, 23
	Sep 2017 13:44:18 +0200")
Message-ID: <874lrr3lbn.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
X-Received-From: 2001:4830:134:3::e
Cc: oss-security@lists.openwall.com
Date: Sun, 24 Sep 2017 22:15:08 +0200
From: ludo@gnu.org (Ludovic =?utf-8?Q?Court=C3=A8s?=)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: Hanno =?utf-8?Q?B=C3=B6ck?= <hanno@hboeck.de>

Hi,

Hanno B=C3=B6ck <hanno@hboeck.de> skribis:

> I had informed the distros mailing list one week earlier about the
> upcoming disclosure with a bug description and links to the already
> available patch.
> My understanding is that the purpose of the distros list is that
> updates can be prepared so after a disclosure the time between "vuln is
> known" and "patch is available" is short.
> However from all I can see this largely didn't happen.

FWIW, for GNU=C2=A0Guix (which doesn=E2=80=99t have anyone yet on the distr=
os list),
we pushed the patch less than 30 minutes after the public disclosure on
oss-sec=C2=B9.

The fact that your message to oss-sec was very clear on the issue and
its consequences, and contained a link to the (small) patch surely made
it easier to prepare the fix.

Ludo=E2=80=99.

=C2=B9 https://git.savannah.gnu.org/cgit/guix.git/commit/?id=3De14ab0ad070b=
4eafa19fc1df81b7b5c3de1dc1b2
