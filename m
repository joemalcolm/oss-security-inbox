Received: (qmail 12144 invoked by uid 550); 25 Nov 2024 16:25:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5762 invoked from network); 25 Nov 2024 07:55:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail2; t=1732521313; x=1732780513;
	bh=pCspf4f/jR3VXE6qVsfqYgfmGBAbjCKZd1cDKxxq6ow=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=Ud37cVl/KQRnp61fDcdbz5r5drS8ZOWNCiJiFNHGA/2xZ/3JIXX3zXFgBl0P+Z1ir
	 i2no/4BoXim8uvz1fsvJoupizZ/9PHiMrnIicu96tDRKOwsPDzF+ko5yo7pHT7EbEo
	 LQ97kMrtlrt6n0+5/Cf6f2eCQTY4tMOP2ABfS61tu7mf86KXCGBvJ78LnxL5O7FvVX
	 IefU9B4M+tzfudQnovfhEbTZt8IZIYR9AdxtFgWJLtDdJs/pUoz+VclKMc6j1/AX7W
	 ZDCXUXzQoc3RxgaWM7AYJGIJV0R3iRs/q7U3ejzK7SmNsV1zS/Kf2LxeC+V04IYNki
	 StZKrr6MXsDZw==
Date: Mon, 25 Nov 2024 07:55:09 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <IW-eMMXAqM58NQPGh_wBQx2k5KV7gmtS_g1wIgjYCmSrHaRdpwURqHr7l6oNRQ59hn_EY55doPntuEJB5RZLuvgOCIcKcTkvnu-d4xao88o=@hexsys.org>
In-Reply-To: <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org> <20240520120909.GA8629@openwall.com> <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 7d602a8f5b3b17801668ec81edd4333cfbaeedcc
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------304747c7ff7a65cffc85e093a25aa9c00f82670188dae9d06aa1fd987cd125e4"; charset=utf-8
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--------304747c7ff7a65cffc85e093a25aa9c00f82670188dae9d06aa1fd987cd125e4
Content-Type: multipart/mixed;boundary=---------------------50133b9161b663084840a53635b640b4

-----------------------50133b9161b663084840a53635b640b4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Monday, November 25th, 2024 at 00:12, Evan Carroll <me@evancarroll.com> =
wrote:

>
>
> A lot of words on that one,
>
> Not sure if you're the author of the paper. But off the get go, I'm
> extremely confused. I wanted to give my critique on the paper instead of
> the technology. My experience with "user-space sandboxing" is kernel
> user-namespaces. My interface to them is podman. It's not clear what this
> "sandbox" offers that podman's rootless mode does not. I believe I'm in t=
he
> majority with experience in containerization. But you're grounding this
> paper in "two prime examples of sandbox: Gentoo's sandbox and Exherbo's
> sydbox" -- things most people have probably never used. This for me raises
> the question: when would I want "Gentoo's sandbox and Exherbo's sydbox"
> over kernel user-namespaces and podman?

You're comparing apples and oranges. podman is a container engine that gives
you isolation. You can use a sandboxing solution on top, such as gVisor or
syd-oci to provide a security boundary.

> I don't see that answer immediately and so my desire to continue reading
> drops significantly. This is only constructive criticism, maybe I'm not
> your desired audience but the title was interesting enough for me to jump
> in.

I appreciate your feedback regardless. I can see how the article may have b=
een
confusing for you. However that confusion stems from an important misunders=
tanding:
Namespaces provide isolation, not necessarily security.

> --
> Evan Carroll - me@evancarroll.com
> System Lord of the Internets
> web: http://www.evancarroll.com
> ph: 281.901.0011 <+1-281-901-0011>

Best regards,
Ali Polatel=

-----------------------50133b9161b663084840a53635b640b4
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdRSmRSWUpLd1lCQkFI
YVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRWSXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdG
c2FYQkFhR1Y0YzNsekxtOXlaeUE4WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllK
bUJBbDFCQXNKQndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVFd2ky
cDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1FzYzdpVDF0STcvMTAKakJW
aklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStqbzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQ
CnVzcFViZy9PT0FSbUJBbDFFZ29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZz
elJKbQpWWHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtCY2phUTFH
WTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRMb0FBTHNMQVAwWUVEUkw1OVdi
UndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9rM3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHlu
ZGdZbEpxUFVpZk1CZGU5ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBC
TE9DSy0tLS0tCg==

-----------------------50133b9161b663084840a53635b640b4--

--------304747c7ff7a65cffc85e093a25aa9c00f82670188dae9d06aa1fd987cd125e4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmdELUQJkBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeqNPVOaGZ5cwGQ837xDeblfi5lQXi7XcL31soV
ECXO8RYhBMItqd5JievnmvQPrRcjaQ1GY3S6AABeogD/WP0USY4AWQT2J+rX
jaJ2xpBeYo2bzXfYPvvGg5ViHDsA/iq4FeuZ8BdONRuqQ3ajO5OkqIo+HOv/
0va45+yCKUwA
=4TId
-----END PGP SIGNATURE-----


--------304747c7ff7a65cffc85e093a25aa9c00f82670188dae9d06aa1fd987cd125e4--

