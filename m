X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2231" "Wednesday" "5" "October" "2016" "18:47:53" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161005184753.417dd846@pc1>" "55" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100516:47:53" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        hanno@hboeck Oct  5   55/2231  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17875 invoked by uid 550); 5 Oct 2016 16:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17854 invoked from network); 5 Oct 2016 16:48:06 -0000
Message-ID: <20161005184753.417dd846@pc1>
In-Reply-To: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-24738-1475686075-0001-2"
Date: Wed, 5 Oct 2016 18:47:53 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER
 sandbox problems
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-24738-1475686075-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 5 Oct 2016 09:13:03 -0700
Tavis Ormandy <taviso@google.com> wrote:

> If you're using ImageMagick, I would recommend disabling the PS, EPS,
> PDF and XPS coders in policy.xml. Applications like gimp, evince,
> claws, and most other applications that generate thumbnails of PDF/PS
> documents should probably not do so without a prompt (NOTE: A lot of
> packages do this

I was surprised to see evince in this list. It uses poppler for pdf and
libspectre for postscript, so there seems to be no use of
ghostscript (maybe in an older version).
Also for claws the only use of ghostscript is in a plugin that's not
enabled by default.

While I agree that avoiding parsing for things like thumbnails should
be tried I still wonder what the overall solution to this is. Because
even if we avoid non-prompted ps parsing we still want to be able to
parse PS files without code execution.
Do you feel dSAFER could be secured or is this a loosing battle?

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-24738-1475686075-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX9S65AAoJEKWIAHK7tR5CVwgP/2Yu0r0tDyCzs6Z0vq3I/G3K
hRewV+UzQMehb8zEIQoilynRaa6BR2Q13/uTXH2TAvJotHX0l9/WVFhRvEF+y0zG
8EmI54NzICghaomC2iSyhFZlSCdfTGvBwmGOKgyPv7/ENDx+/Qpvfy/jV3JKVIAy
0Qm1vvI17moHsb3j9Q3Bk8FhgCWVblO6pcyHc4WXGbwqNtm4KKiDN5MZ3ja7yeBo
9ujPCFkNMzJrxsn1Eu9OjmUiCJIXLBgxkFttvM0KGFKsvwAWxcVSDUvQSGNItfjJ
kM0iheWOFIGlfSfo/rZRrrivLtz40XehaKUL/VInkRAiK1CzLcBgHf49JDV8bFVM
acS8pnXgHChQDPFaDlZRjwj33klwvrDLMaLUz0L0QUzI5z+QDxkcq3mOU1glUge/
XdAZfq9BS32f5dP1xv8OPTsHf+EUJq/+kPyw1iLYiGNEr2uYnToqOoku3u9jYjjl
vlcg5JP7SKqCZ+0xqMfIc/J9gD8ax2Gsud+icIbkwbvVTYDmfCNeoKr2TQLWTKa3
kONbYksS2f7exThIu1jknT6s1O3ZO4dVftv2qNhsiS8EnMMC9v7aimVE5fp4QHkh
MVVg9Arpuh2J9pEiUNQgEz1/p3ZR57Vr0CXqobcPsTrqBvBox6Fl26IQgCKT2ETi
dhgV4TXOYzJTvf6iy312
=QBe5
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-24738-1475686075-0001-2--
