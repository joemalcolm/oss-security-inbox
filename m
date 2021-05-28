X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1674" "Friday" "28" "May" "2021" "18:19:30" "+0200" "Marc Kleine-Budde" "mkl@pengutronix.de" nil "49" "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil "5" nil nil (number mark "U       mkl@pengutro May 28   49/1674  " thread-indent "\"[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24294 invoked by uid 550); 28 May 2021 18:11:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9632 invoked from network); 28 May 2021 16:19:53 -0000
Date: Fri, 28 May 2021 18:19:30 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, alex.popov@linux.com,
	seth.arnold@canonical.com, steve.beattie@canonical.com,
	cascardo@canonical.com, oss-security@lists.openwall.com,
	Norbert Slusarek <nslusarek@gmx.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, security@kernel.org
Message-ID: <20210528161930.hhbu5mkoub2ty653@pengutronix.de>
References: <trinity-10aeed49-cb96-47d9-818e-b938913e6fce-1620770433273@3c-app-gmx-bap63>
 <c80114dd-4a97-714d-232c-f4c6cf354332@gmx.net>
 <173ce2fa-fe90-4e00-e5a3-1f3163dfe13d@hartkopp.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gfvvonq242p5casm"
Content-Disposition: inline
In-Reply-To: <173ce2fa-fe90-4e00-e5a3-1f3163dfe13d@hartkopp.net>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local
 privilege escalation

--gfvvonq242p5casm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 28.05.2021 17:41:03, Oliver Hartkopp wrote:
> this patch ("can: isotp: prevent race between isotp_bind() and
> isotp_setsockopt()") has hit Linus' tree ~36h ago:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/net/can?id=3D2b17c400aeb44daf041627722581ade527bb3c1d
>=20
> It has a CVE number and is potentially exploitable - but it was not in the
> latest batch of stable kernels about ~4h ago.
>=20
> It was obviously not tagged properly for stable kernels but has a
> fixes-tag:

Oh - there was a change if networking stable handling:

| dbbe7c962c3a docs: networking: drop special stable handling

I've missed the memo, sorry.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--gfvvonq242p5casm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmCxGBAACgkQqclaivrt
76ncTQf+JljRS6sX/0HbWvCvDGrDJQH901hzFwXFhNJOn1oFWyFgvgoamqXG1Cld
y7HUec1hK8fpdMugNFLn6E8/hXzqlUgl6W8QHToKBSVBBW0u/VXfsWMSHyxMy5SN
5sI3a3Za86vRzQtYFUcw5sL2krigJhWM1iNo7SMvZPOeTrfyYIM1DDaVu8lblYTU
e5qBNPZN+JAy0Ix5mw3jqlBAh8StvDDlxK7DdWeAS/mc0cUSXQqJJh0pJLNgrrwN
iG0laXfyaN2NV2TsyyR/1v5LyYGcHvqGRJ5JQPJIEic/Cfmfa7CcTWUxau4ESDbe
hPZZSFKgcqbjJyNoUjFepOk9lO6KKg==
=kdvG
-----END PGP SIGNATURE-----

--gfvvonq242p5casm--
