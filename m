X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["681" "Sunday" "25" "November" "2018" "15:18:53" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181125151853.20345cbf@computer>" "25" "Re: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault" "^Date:" nil nil "11" "2018112514:18:53" "[oss-security] catdoc: out of bounds heap read and nullpointer / segfault" (number mark "        hanno@hboeck Nov 25   25/681   " thread-indent "\"Re: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault\"\n") "<1690836.rk9JpRbEkN@wanheda>" ("<20181125095737.5f7e726d@computer>" "<1690836.rk9JpRbEkN@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26020 invoked by uid 550); 25 Nov 2018 14:19:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25998 invoked from network); 25 Nov 2018 14:19:04 -0000
Message-ID: <20181125151853.20345cbf@computer>
In-Reply-To: <1690836.rk9JpRbEkN@wanheda>
References: <20181125095737.5f7e726d@computer>
	<1690836.rk9JpRbEkN@wanheda>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Nov 2018 15:18:53 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] catdoc: out of bounds heap read and nullpointer
 / segfault
To: oss-security@lists.openwall.com

Hi,

On Sun, 25 Nov 2018 13:09:12 +0100
Agostino Sarubbo <ago@gentoo.org> wrote:

> something about catdoc was already reported time ago:
> https://marc.info/?l=3Doss-security&m=3D142627461816744&w=3D2
>=20
> I don't know atm if your findings are duplicate or not.

There was a version with fixes inbetween (0.95, may 2016) which says in
the changelog "Fixed lot of segfaults on incorrect or corrupted
data" [1].
My reports are mainly to have it publicly referenced that it's still
not robust.


[1] https://www.wagner.pp.ru/~vitus/software/catdoc/changelog.html

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
