X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2497" "Saturday" "7" "August" "2021" "04:49:39" "+0200" "Axel Beckert" "abe@debian.org" nil "74" "[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       abe@debian.o Aug  7   74/2497  " thread-indent "\"[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1499 invoked by uid 550); 7 Aug 2021 12:23:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3388 invoked from network); 7 Aug 2021 02:49:53 -0000
Date: Sat, 7 Aug 2021 04:49:39 +0200
From: Axel Beckert <abe@debian.org>
To: Thorsten Glaser <tg@mirbsd.de>
Cc: oss-security@lists.openwall.com, security@debian.org
Message-ID: <20210807024937.g43ooqppdm7zozbh@sym.noone.org>
Mail-Followup-To: Thorsten Glaser <tg@mirbsd.de>,
	oss-security@lists.openwall.com, security@debian.org
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
 <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ml6qlbhhymoycc7e"
Content-Disposition: inline
In-Reply-To: <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
X-Operating-System: Linux 4.9.0-16-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAAAAAC3mUtaAAAABGdBTUEAALGPC/xhBQAAADh0RVh0U29mdHdhcmUAWFYgVmVyc2lvbiAzLjEwYSAgUmV2OiAxMi8yOS85NCAoUE5HIHBhdGNoIDEuMindFS5JAAACGElEQVQ4jXXQMU8UYRDG8f8shNjdDH4AbpfGDjAWlKiJiZ0ajL1aGCvsNCbGaCGG1koLaztaTYz6ATy+gOyehYmF3MxVxgg3FnDsHcTpJr/M+8w7Rf6nCsaVTTDqxbg9hoOXmw83H71+Eyfg4E1d7/Z2fG9rGkZbTQiu+K+3U/C+76lmkvAhJuDndnoAiftou4V84okAGclop4U/jYACZDTxrYWP0gkxVfAm/W//GLZpxIzwIN0Hn8dw0B+IWkZmQmRsj2HfhwokEklHfNCCiQCRgAR7YyhQVRVTCKCzP4Y5zBBE0t0zY3Q8oQaBqqAMlVEcgVQd9706zGirAFium8HXumlMIeMwqQCInju+2+uB6MRENupdpMt8pRlHZyuAW0F+Mb6XSIVqtxjD+iVmVqqystLEzFTGT92YqRaXpNT5eTVjeJhbALPnrTxLUZUKZsgxcNm64hAOYisT/xhF+oKTGU5RegtC3Rt6eEDi/QnIevdTx9Md2EMmYBRmCQR1026FCGQQJJExsRUqgkMGaWSbwYLnoO4T6VgpbQbdELPMBAHWWrhYrcxXnYgAsatPWygkFCBD4K62MAsOTqA6szYRPpsu6e6Y8mPiVrBMNuGIMrgwBUu4p2DgG1Ownu6hpuTv7hScefHAzAC/yRRw5U5pALMbJ4AUALvHSZhxgHPXTsHcdWD1GadAHr9avP+c0wCr7263Df8ASLwXWHWs+KIAAAAHdElNRQfYBQEBODPr
Organization: The Debian Project
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Re: bug in Lynx' SSL certificate validation -> leaks password in
 clear text via SNI (under some circumstances)

--ml6qlbhhymoycc7e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thorsten,

I'm dropping the lynx-specific recipients, i.e. lynx-dev and the bug
report=E2=80=A6

Thorsten Glaser wrote:
> Axel Beckert dixit:
> > This is more severe than it initially looked like: Due to TLS Server
> > Name Indication (SNI) the hostname as parsed by Lynx (i.e with
> > "user:pass@" included) is sent in _clear_ text over the wire even
>=20
> I *ALWAYS* SAID SNI IS A SHIT THING [=E2=80=A6]

Don't blame the messenger. ;-)

> Other browsers also need checking.

Good idea.

I just checked in Debian Unstable those tools I'd mostly expect with
such URLs and commandline usage:

* Axel (sic! :-) 2.17.10-2
* ELinks 0.13.2-1+b1
* LibWWW-Perl (aka LWP) 6.53-1 via /usr/bin/GET
* Links/Links2 2.21-1+b1
* Wget (1.21-1+b1)
* Wget2 (1.99.1-2.2)

I didn't find any such issue in any of these tools. All cases verified
via Wireshark's "follow TCP stream" against an Apache 2.4.48 (from
Debian Unstable as well).

But yeah, there are probably many more to check. But so far it looks
like a lynx-specific issue.

> Thanks for the detective work,

You're welcome. Thanks for stumbling over this issue and triggering my
digging. :-)

		Regards, Axel
--=20
 ,''`.  |  Axel Beckert <abe@debian.org>, https://people.debian.org/~abe/
: :' :  |  Debian Developer, ftp.ch.debian.org Admin
`. `'   |  4096R: 2517 B724 C5F6 CA99 5329  6E61 2FF9 CD59 6126 16B5
  `-    |  1024D: F067 EA27 26B9 C3FC 1486  202E C09E 1D89 9593 0EDE

--ml6qlbhhymoycc7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmEN9LoACgkQa+Zjx1o1
yXVYaRAAlloegg8x4NXmkkyP8EHZUiTZ2CRmSAA/DnQWzFHT2USBCEI+XoYR4YVI
5pjN//xXd1+NdX4yIzSD/oSpi6akbzJo+WauJtjCsSVnKS64QKuRUsUkhBzovx6J
mtbS1dVE4ZAjAliOLNlSpksaP94TXLa+e0F4YDEQ7Xb2Ah2CkYWk7NujGJEJFKFv
p9tMrLc7Dwaf3Cqh5ZROcd6uF1rENwWsK9mPfLGciOmoMHQ3pMWc/g2woPcQiD0Y
leohPLThlWYAjVRM4ozmjV7Vg/9+kz0YDXmVyZihToZWAHYpvefuw/Su4lE2jUKv
bBgrEupHRUn+SdcpuPC7Mu/4McL6yZxSL8iDL+uMh3Hw3bcJaN8hdabW43McRSls
agci6DtqLqSIysOUBbbQybneJICX9f9XfR7UY/5tYUWprsh1jo7DOsnjBCARvFD2
fyJSRHmPBy+/F2YFunsMLo+zlxtOZeCftOm9EVZ9EhldvWQfHeQs/Y11NWdfHlkF
cnMtZV3e8dcK+yCIMFp95kLFuzZtK3WE/ypn6/XRUTjsxfRWwoU+9FWhPE/RjxYl
7pAcEPzAubb7GYAPQLkfEMPbqel8pTGhp2gqV6CTe7cOZy5JAkVZbsqW0LccR/EA
0F80a5QjrMxW/5jYZCms4Tv+F9d0NGxrFp+3g3vwSiVXsTenRe4=
=C4/p
-----END PGP SIGNATURE-----

--ml6qlbhhymoycc7e--
