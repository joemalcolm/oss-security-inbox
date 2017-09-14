X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1152" "Thursday" "14" "September" "2017" "13:12:20" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<18140748.47rzSOn8yn@wanheda>" "33" "Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" nil nil nil "9" "2017091411:12:20" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" (number mark "U       ago@gentoo.o Sep 14   33/1152  " thread-indent "\"Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)\"\n") "<20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>" ("<427445.19640425-sendEmail@localhost>" "<4196795.4HvRXNqvRy@wanheda>" "<20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13855 invoked by uid 550); 14 Sep 2017 11:12:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13835 invoked from network); 14 Sep 2017 11:12:34 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Date: Thu, 14 Sep 2017 13:12:20 +0200
Message-ID: <18140748.47rzSOn8yn@wanheda>
In-Reply-To: <20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>
References: <427445.19640425-sendEmail@localhost> <4196795.4HvRXNqvRy@wanheda> <20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)

On gioved=C3=AC 14 settembre 2017 11:51:42 CEST Dr. Thomas Orgis wrote:
> I disagree. I am considering cleaning up mp3gain and omitting nearly
> all of the vulnerabilities by removing the decoder fork. Reason: rgain
> does not do what mp3gain did. Mp3gain can directly modify the MPEG
> frames so that the gain is changed also for decoders that do not
> support the added metadata (it additionally stores metadata to be able
> to revert the changes).
>=20
> While I am not regularily using this myself, I do think that it's a
> nifty hack that should not disappear. Maybe it can re-enter distros if
> it does not rely on an outdated internal decoder =E2=80=A6
>=20
> This is becoming a bit off-topic =E2=80=A6 but I just wanted to note that=
 the
> bug reports do serve a purpose in alerting me to that other copy of
> mpg123 code in the wild.
>=20
>=20
> Alrighty then,
>=20
> Thomas

Hello Thomas,

the suggestion of removal was because of the dead status of the upstream=20
project.
If there will be people that fix the issues, will be great.

Feel free to update this thread when you have news about.

--=20
Agostino Sarubbo
Gentoo Linux Developer
