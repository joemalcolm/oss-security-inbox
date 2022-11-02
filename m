Received: (qmail 17696 invoked by uid 550); 2 Nov 2022 02:56:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17603 invoked from network); 2 Nov 2022 02:56:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667357788; x=
	1667444188; bh=4TUvBRWbFpDpAyTz19EUdu9LAoQ8VL0OK/J3IxFqRyQ=; b=K
	aVx8yu4AJudJ59DxtOwHGlCxvBx505RI67zOws+ssbe184Q0hTv7Y+YQjz8POllh
	6/f/6E4ANZ3do/9vROfKbtTwWIctSMk3xF5V00aWWZ8KkZn18yzRV4hTHKcGg9nl
	8HdBO4dcdcuPVfvhneDZ1JaJ9c5SSGh909E0fqVObPkx/qnd9VT9yH5UQRTJI0jY
	BiJpFVUf5H2zYmz+DWHWB/bBYbdHVmpZF9TS6hWbYDJIwzqgZs1NmUlGCUVIzY5o
	o4p+q3ync2PYf2oTGMvgTBvSWJn6zYzoHvQ+COUMO+3wPlmMH8qKu0xr94SU8Gzc
	aO6kn35QTgEPy+5vDKVQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667357788; x=1667444188; bh=4TUvBRWbFpDpAyTz19EUdu9LAoQ8
	VL0OK/J3IxFqRyQ=; b=t+HOo2egfOpYHKT+MwWMI9gsdO5i7jtgtkbdiwVF3dzH
	N7JUj6Iw0dBGuEASP1x8uUhAlO3h5SOWrlsNUonM4Z0xKLl5gwviufS8Bo2F1IkA
	LxhYQDPwet+x6Zk+MmP/YHDRw6pMluOrJePAFMccAsZ3APfXrW2sPofIGH5r6pdZ
	rdJ7bwp5cGl35BlWao7VC0nHo/QpCSrOvVHW1fWoxFopTscwkXA4E8WUUfQgGXBS
	1HDjssICfizxC6Z435IsRqQncSSL2TjSH1G9wGfdlASZdM2SPAeBg9ZOxxQgTWmL
	bsdeETd14mc/gd/ZXc2/2F6MIgHYG4p99XaUASlptQ==
X-ME-Sender: <xms:XNxhY8HFqjbM7bRzAnz2ggp-uCQ0Ae0dehyqQZxOMWESM9jmjhedrQ>
    <xme:XNxhY1W1Q6h8AmkMKe7k-hwyOPdkrpjonqNARXd_p1IPj1J1mnwaUfxbNG4n4MywD
    VBIiPsUAAZ3GUs>
X-ME-Received: <xmr:XNxhY2LrelFCvdU7xTIVlzO0mOq1q9ASfcdCegXs-jtK3oeMBEu6b829FV_9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrudeigdehfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eukeeitedvfeffffehveelheeitdfgiedtueekieeuheejkefhtedttdevffejfeenucff
    ohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgr
    sgdrtghomh
X-ME-Proxy: <xmx:XNxhY-GwC2B8kINYEJ3GWCAk5wqUz8-eDrnZT5zpU4m1PjxEHvjR4A>
    <xmx:XNxhYyU6lM_2EWLnyqUgjiDHN8_rExLudTDfxf0g9LIoagolm2_DwQ>
    <xmx:XNxhYxOcXL-zPNKMOOIYP8VQPQZnlcOyBLnH5jUj6m2_3cCa4MjQUw>
    <xmx:XNxhY6jHCx1d7Pb6vNm1hjGxtCog2ekpJIWKHy6TYD1TOLaZ67OHmg>
Feedback-ID: iac594737:Fastmail
Date: Tue, 1 Nov 2022 22:56:23 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y2HcWkqpp9KhX80r@itl-email>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IwPaahApQ0LGX2Z+"
Content-Disposition: inline
In-Reply-To: <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--IwPaahApQ0LGX2Z+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 1 Nov 2022 22:56:23 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Tue, Nov 01, 2022 at 04:57:25PM -0400, Jeffrey Walton wrote:
> On Tue, Nov 1, 2022 at 3:55 PM Pavan Maddamsetti
> <pavan.maddamsetti@gmail.com> wrote:
> >
> > https://github.com/RustCrypto
>=20
> I hope this does not start a war.. The problem with Rust is, it's only
> guaranteed to work on i686 and x86_64.
>=20
> Trying to compile Rust programs on armel, armhf, aarch64 and PowerPC
> has been excruciatingly painful. The tool cannot compile its own
> cargo's on those platforms. I gave up trying to use Rust on anything
> but x86_64.

Rust should certainly be able to compile its own Cargo, so this is an
outright bug.  Please report it.  If the instructions are confusing
enough that it is easy to make a mistake, that=E2=80=99s a bug in the
documentation.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--IwPaahApQ0LGX2Z+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNh3FkACgkQsoi1X/+c
IsHAUg/9F6Q3sQM/KaFuuRxtuDkz2My3XdUD+qEf/FNoe9sViopdU5lLt9+ZNwtq
GwcEJlycKN4VW/rNrDwDJZ2j7rJ1CGfeAz+2dFHzr5fI2itRw9q6hUgIfQD1UBTx
u9tp05IMhmsyuKahu6jKrGqHMaKZGBXDiC+6LHnWcYLH+Tu7zykVWsH2yqJAGjoO
NxBUn82fUGzUXkZoZBjaunAnOBNGyoFPgx/QhIOswjSEaQSikt9wCYnuyRpxnmkS
nvnlFD7T39vYeevGkN06K+CjG4IR7tXkGQkT2eFcr5lv1voOKeSzwcI+znnT1nkx
CQoWQMO3ePEXyjD3Im1dBE1xvzkDBBxaqoaqcs/0MChySd5e0UDpcS8JAbwblyIv
cOLizjRU8lvGdWzzu7BaeW/7g5JP/fKgxF4HR6aHCJfAfbZ9EoKaeeFtIGDz0QkI
sjmPC70Qo9khlA+LHGF014iCbaaANqbi/7gY8hh8AkEoPHdUpCKyw3DIUnQLOsZ1
f2R8nWiA7btVrr/tHgE81896j9/sP10WfB9XzIeJ/huNgg4yX6lO+9VWMVNjvNFY
g6PuMTVbtPfbtamEL3NNj1fI4WuvQAJO9KcyKKeocFHD2Z8QiRdYqlKGfGMLYjKm
7GIhdHWZOM2oDDozYtyEkIMnZtQ3ffMarVft4Wo4IF1puohXrc0=
=Drty
-----END PGP SIGNATURE-----

--IwPaahApQ0LGX2Z+--
