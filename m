X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1175" "Monday" "22" "August" "2016" "14:56:20" "+0200" "Werner Koch" "wk@gnupg.org" "<87mvk59d3f.fsf@wheatstone.g10code.de>" "41" "Re: [oss-security] memory issues in libksba 1.3.4 and git" nil nil nil "8" "2016082212:56:20" "[oss-security] memory issues in libksba 1.3.4 and git" (number mark "U       wk@gnupg.org Aug 22   41/1175  " thread-indent "\"Re: [oss-security] memory issues in libksba 1.3.4 and git\"\n") "<20160822111506.GA4403@openwall.com>" ("<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>" "<8760qtaza4.fsf@wheatstone.g10code.de>" "<20160822111506.GA4403@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15975 invoked by uid 550); 22 Aug 2016 13:09:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1893 invoked from network); 22 Aug 2016 13:02:36 -0000
From: Werner Koch <wk@gnupg.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,  Pascal Cuoq <cuoq@trust-in-soft.com>,  Rapha??l Rieu-Helft <raphael.rieu-helft@trust-in-soft.com>
References: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>
	<8760qtaza4.fsf@wheatstone.g10code.de>
	<20160822111506.GA4403@openwall.com>
Organisation: g10 Code GmbH
X-message-flag: Mails containing HTML will not be read!
	 Please send only plain text.
OpenPGP: url=https://k.gnupg.net/80615870F5BAD690333686D0F2AD85AC1E42B367
Date: Mon, 22 Aug 2016 14:56:20 +0200
In-Reply-To: <20160822111506.GA4403@openwall.com> (Solar Designer's message of
	"Mon, 22 Aug 2016 14:15:06 +0300")
Message-ID: <87mvk59d3f.fsf@wheatstone.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=Compsec_ASO_Ron_Brown_SDI_Kennedy_Islam_Abduganievich_Karimov=indust";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Subject: Re: [oss-security] memory issues in libksba 1.3.4 and git


On Mon, 22 Aug 2016 13:15, solar@openwall.com said:

> The "[" character isn't in the allowed set per RFC 2046:

Ooops.  This is the first report after 15 years or so.  spook.lines
apparently has a new entry since some time.

>                       "+" / "_" / "," / "-" / "." /

Oh cool, underscore is also allowed; looks better anyway.

> Werner, maybe you could try this old workaround for next time you post? -
>
>   (setq mml-insert-mime-headers-always t)

Done.  Thanks for pointing me to this setting; for reference this is:

  If non-nil, always put Content-Type: text/plain at top of empty parts.
  It is necessary to work against a bug in certain clients.


Shalom-Salam,

   Werner

=2D-=20
Die Gedanken sind frei.  Ausnahmen regelt ein Bundesgesetz.
 /* Join us at OpenPGP.conf  <https://openpgp-conf.org> */

--=Compsec_ASO_Ron_Brown_SDI_Kennedy_Islam_Abduganievich_Karimov=indust
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAle69nQACgkQTwVA1Xf5X5V9QwCbBvskL4/CjyWK4HJ7NTvFO6P5
BYQAnjHqy8imjofHry3o7itRzB1bs+Kf
=0LYK
-----END PGP SIGNATURE-----
--=Compsec_ASO_Ron_Brown_SDI_Kennedy_Islam_Abduganievich_Karimov=indust--

