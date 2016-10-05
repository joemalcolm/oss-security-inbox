X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Wednesday" "5" "October" "2016" "19:32:54" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161005193254.7a46fc48@pc1>" "45" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100517:32:54" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        hanno@hboeck Oct  5   45/1622  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005184753.417dd846@pc1>" "<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>" "<CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>" "<CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22330 invoked by uid 550); 5 Oct 2016 17:33:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22309 invoked from network); 5 Oct 2016 17:33:06 -0000
Message-ID: <20161005193254.7a46fc48@pc1>
In-Reply-To: <CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
	<20161005184753.417dd846@pc1>
	<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>
	<CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>
	<CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-8386-1475688775-0001-2"
Date: Wed, 5 Oct 2016 19:32:54 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER
 sandbox problems
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-8386-1475688775-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 5 Oct 2016 10:09:07 -0700
Tavis Ormandy <taviso@google.com> wrote:

> Ahh, no, I was right - it's using libgs, and the same issues apply
> there.

To clarify the confusion here:
I didn't see ghostscript as a dependency and saw libspectre for ps
rendering. But libspected itself uses ghostscript, so it seems it's
just a wrapper around it.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-8386-1475688775-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX9TlGAAoJEKWIAHK7tR5CcIgQALzeWpNyyW5QTDF9iiHFldf8
0UFp1u0cUexrSb3ziboQQDfLtc4Kckv7fiUiYG9jhjjuXNKCd0YSruxfQNc7/N5x
htUqaG5sQ+ZBUPFC4fLnXKR78dCDIMYQbkhy1lEqgUMDa619BCf6A0txCttuDhrf
Y92pVyjDC+Tpgy37XIrERi4xAX/EwlO46oi7IfyRlEyW6uyRHcgzxiNi/dhEynGa
IscAVdwDg+MP7LAiAAq6uY30jhuTlNytWqRG3FQBJUCmVcTulac+z2zAg9P0U2g4
cWRM0j8SxMgRSAX34xwp4t4w9XHfv2IHfn1PWTQuC50HsGhlLPH2KGDcM0olHwmJ
YZ8U4+AynnLDwUJUbc5lrovVVdJtp8SvQm/7Z5fYHLz8Zi4GRhUZ8H2iMZff2cg2
tVUZ+VXIhKzeOS/h08fThhpO/O5ZP4jo8axXF7frOHHTxxG3Jov8BupADGbORz8q
KZaNj0HT+eKwd49M9rtjJU3WhkqviWQIvINe+L8Q4KV8+JlijFkfEL5ScoH1j84Z
r9++wwXRM0g1rEZluCeF3PhSN1DMikbiwoB885PGbQgMag424VMf8rxqe5/07ISk
pkmJCcfvAEOn9ss5580JV2/IG3jmp56zq/jviEu7rkd5HefKITjfwQvSrkCvLi8u
7bv8qdhBOLfJxYmFtW1t
=e++Y
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-8386-1475688775-0001-2--
