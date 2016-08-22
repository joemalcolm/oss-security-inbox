X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Monday" "22" "August" "2016" "12:11:47" "+0200" "Werner Koch" "wk@gnupg.org" "<8760qtaza4.fsf@wheatstone.g10code.de>" "43" "[oss-security] Re: memory issues in libksba 1.3.4 and git" nil nil nil "8" "2016082210:11:47" "[oss-security] Re: memory issues in libksba 1.3.4 and git" (number mark "U       wk@gnupg.org Aug 22   43/1474  " thread-indent "\"[oss-security] Re: memory issues in libksba 1.3.4 and git\"\n") "<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>" ("<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5357 invoked by uid 550); 22 Aug 2016 10:56:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17744 invoked from network); 22 Aug 2016 10:17:35 -0000
From: Werner Koch <wk@gnupg.org>
To: Pascal Cuoq <cuoq@trust-in-soft.com>
Cc: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>,
  =?utf-8?Q?Rapha=C3=ABl?= Rieu-Helft <raphael.rieu-helft@trust-in-soft.com>
References: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>
Organisation: g10 Code GmbH
X-message-flag: Mails containing HTML will not be read!
	 Please send only plain text.
OpenPGP: url=https://k.gnupg.net/80615870F5BAD690333686D0F2AD85AC1E42B367
Date: Mon, 22 Aug 2016 12:11:47 +0200
In-Reply-To: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com> (Pascal
	Cuoq's message of "Sat, 20 Aug 2016 14:06:42 +0000")
Message-ID: <8760qtaza4.fsf@wheatstone.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=SRI-target-ANDVT-Freeh-anthrax-[Hello-to-all-my-friends-and-fans-in=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Subject: [oss-security] Re: memory issues in libksba 1.3.4 and git


On Sat, 20 Aug 2016 16:06, cuoq@trust-in-soft.com said:

> These inputs have been set to Werner Koch, privately as per his
> request, on May 25, June 11 and July 11. I am publishing them now so

I am sorry about the delays.  I asked Pascal to discuss this privately
for the simple matter that I would anyway be the one to fix the things.
In the future I will take care to CC my co-hackers on such private mails
so they can jump in or remind me of such delays.

> that anyone who uses or might want to use libksba to parse messages
> (received pre-authentification by definition) can make an informed
> choice considering the risks of denial of service and information

I just release libksba 1.3.5 which limits the allocation to a 16 MiB
which is the best solution I could come up with.  Note that this parser
is only used for smallish ASN.1 objects like certificates or small parts
of of larger ASN.1 objects (like CRLs).

Thanks to Pascal for looking at Libksba.


Shalom-Salam,

   Werner


=2D-=20
Die Gedanken sind frei.  Ausnahmen regelt ein Bundesgesetz.
 /* Join us at OpenPGP.conf  <https://openpgp-conf.org> */

--=SRI-target-ANDVT-Freeh-anthrax-[Hello-to-all-my-friends-and-fans-in=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAle6z+QACgkQTwVA1Xf5X5VfLACeJ2hnudBTxAh46ZTqkiO+1zqY
vLQAnRCtB/wREfKRPoVvr2vCtRtfrcOx
=k0xn
-----END PGP SIGNATURE-----
--=SRI-target-ANDVT-Freeh-anthrax-[Hello-to-all-my-friends-and-fans-in=--

