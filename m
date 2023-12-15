Received: (qmail 3898 invoked by uid 550); 15 Dec 2023 11:34:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3796 invoked from network); 15 Dec 2023 11:34:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1702640068; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A5CMV9Wc9AGWCmXoKJlIXeqCXT7lAkt84VdwHdDo0k0=;
	b=rl0/CdQZkiMsM3z/eupXhwKCeTlxpL7B5++uRANXManoUn3bDlJMasbZHCf7g417hds94R
	xFfJ7yD1woBaT14HzCqorMExvSVFFnXu66Q4LLNYXVwICiMpSaIzvBUgHE3/dalCPPUCrw
	2DIkKxlit6xDmi4e/OaD+OL1ga6OI2Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1702640068;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A5CMV9Wc9AGWCmXoKJlIXeqCXT7lAkt84VdwHdDo0k0=;
	b=TJw2UlleezFSrPy42UpqRJb4qIlM+cLNyx16EY41d9rEwXBA4IGJsQkMrsyVxVjNGVplNE
	GO2H39WLKPRRZ2Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1702640068; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A5CMV9Wc9AGWCmXoKJlIXeqCXT7lAkt84VdwHdDo0k0=;
	b=rl0/CdQZkiMsM3z/eupXhwKCeTlxpL7B5++uRANXManoUn3bDlJMasbZHCf7g417hds94R
	xFfJ7yD1woBaT14HzCqorMExvSVFFnXu66Q4LLNYXVwICiMpSaIzvBUgHE3/dalCPPUCrw
	2DIkKxlit6xDmi4e/OaD+OL1ga6OI2Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1702640068;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A5CMV9Wc9AGWCmXoKJlIXeqCXT7lAkt84VdwHdDo0k0=;
	b=TJw2UlleezFSrPy42UpqRJb4qIlM+cLNyx16EY41d9rEwXBA4IGJsQkMrsyVxVjNGVplNE
	GO2H39WLKPRRZ2Bw==
Date: Fri, 15 Dec 2023 12:34:24 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZXw5wvknxlxHfRkI@kasco.suse.de>
References: <ZXr2P6zT-PLtWShn@kasco.suse.de>
 <20231214221502.aXOhm-Sw@steffen%sdaoden.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lFZ2q5L7Wmj65BJx"
Content-Disposition: inline
In-Reply-To: <20231214221502.aXOhm-Sw@steffen%sdaoden.eu>
Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [oss-security] XDG_RUNTIME_DIR "misuse" as $TMPDIR (was: Re:
 [oss-security] budgie-extras: multiple predictable /tmp path issues in
 various applications)

--lFZ2q5L7Wmj65BJx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Date: Fri, 15 Dec 2023 12:34:24 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] XDG_RUNTIME_DIR "misuse" as $TMPDIR (was: Re:
 [oss-security] budgie-extras: multiple predictable /tmp path issues in
 various applications)

Hi Steffen,

On Thu, Dec 14, 2023 at 11:15:02PM +0100, Steffen Nurpmeso wrote:
> All that makes me think whether XDG_RUNTIME_DIR is such a good
> target for temporary files, generally speaking.

in general I would also not recommend using it for temporary files. At
least in this concrete case of the budgie-extras applications the files
placed in there can be considered small enough for a desktop environment.

I recommended using XDG_RUNTIME_DIR as a quick fix for these issues, but
as I also tried to point out, I don't believe the way temporary files
are used here is a good design.

At least the immediate dangers for security should be addressed by these
quick fixes applied, so sacrificing a bit of the cleanliness of the
filesystem seems justified.

Cheers

Matthias

--lFZ2q5L7Wmj65BJx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmV8OcIACgkQFMQFyXGS
NVNVsxAAwKhVMOErAoeBLYsuM45RsT+86RH5OHdydI+dMS83Pfqtw+nwKqxWdSq2
OX3QuyMDsx8S/8SWCU3uKnK8jBwEcuydC6XZ06IgkxAecL5RL7ojkY8pokHHEAUi
Aa2FEcS4qI8a9sXMnrKRm8k1W3AECYNyTU07VG86ubTYAZaH2d5kr8UjqM0G2vy+
qyZZE2tsy3/Ml9Vv1s7BnrSUW2tdquz1lnZ7QRSC0U3AsqdcepeQkipdZmlUVbbq
doB7j3VP//cszdEbZ/0U9r4C+cnCAR6F58ouSyrV5e4kh6BhZL8GiwHGenU526rK
b8D2njzOb0lDA4tZfglKioYaOx9cBn6p2tsOn1t3oous12JxcXggDR/m53UHJs6+
82JuKYjhQ0t5vr1elqN6MbesEYC112eYJeQ5oFXSPMRclD4QHzF0vR/zvcfQBIcS
fKxxT1FQ+AWwMaEhrMXrRdVCy0RvtsObbo6IyG/Idwm6OIEw7c7xP9/26mMQLp97
gSOe27Sqrj5wFHDltHBDMjYDH860gyTfDrShw+okjZlNe227jR1yer/fo+hoj5+E
dLH0zg0KA7lqwG5DuoxAeDDQly63yD8CAO39YHEU4ZZnl1cS1Pv4VzJMgucDYoji
YSpDIlwIZwH/o55q+W8VfzYH+AlCUUWb43dP9HzZp2zjOrLNSAo=
=u/C4
-----END PGP SIGNATURE-----

--lFZ2q5L7Wmj65BJx--
