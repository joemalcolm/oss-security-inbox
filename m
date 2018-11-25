X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Sunday" "25" "November" "2018" "13:09:12" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1690836.rk9JpRbEkN@wanheda>" "22" "Re: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault" "^Date:" nil nil "11" "2018112512:09:12" "[oss-security] catdoc: out of bounds heap read and nullpointer / segfault" (number mark "        ago@gentoo.o Nov 25   22/638   " thread-indent "\"Re: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault\"\n") "<20181125095737.5f7e726d@computer>" ("<20181125095737.5f7e726d@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6059 invoked by uid 550); 25 Nov 2018 12:09:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6027 invoked from network); 25 Nov 2018 12:09:29 -0000
Message-ID: <1690836.rk9JpRbEkN@wanheda>
In-Reply-To: <20181125095737.5f7e726d@computer>
References: <20181125095737.5f7e726d@computer>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Date: Sun, 25 Nov 2018 13:09:12 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault
To: oss-security@lists.openwall.com

On domenica 25 novembre 2018 09:57:37 CET Hanno B=F6ck wrote:
> I reported two memory safety bugs in the command line tool catdoc.
> However the mails to the developer bounced.
>=20
> The first is an out of bounds heap read, to detect it catdoc needs to
> be compiled with address sanitizer (test it with -fsanitize=3Daddress in
> CFLAGS).
>=20
> The second is a null pointer and will just crash catdoc.

Hi Hanno,

something about catdoc was already reported time ago:
https://marc.info/?l=3Doss-security&m=3D142627461816744&w=3D2

I don't know atm if your findings are duplicate or not.

--=20
Agostino Sarubbo
Gentoo Linux Developer


