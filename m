X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1544" "Tuesday" "24" "November" "2020" "12:02:52" "-0600" "John Helmert III" "jchelmert3@posteo.net" "<X71KzJHgsplpNDjT@sol>" "49" "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil "11" "2020112418:02:52" "[oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" (number mark "U       jchelmert3@p Nov 24   49/1544  " thread-indent "\"Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions\"\n") "<20201124182021.GB13107@suse.de>" ("<20201124182021.GB13107@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some conditions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8175 invoked by uid 550); 24 Nov 2020 18:09:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3780 invoked from network); 24 Nov 2020 18:03:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1606240974; bh=KsZ0jETsvnWzai2y94dLHnWUfYcIAq2pf1YKF7RC/sU=;
	h=Date:From:To:Subject:From;
	b=moJE22CBB1c6LwKr8R2yboQQnTD0pnY+daR/HvnMs607N2F3CaJEy7cJ8ltEWD5HL
	 O3jQc2cQAbgRQlmxKd/yno6XnvBH1EzHkbLy6q6u+obTkQgrPy0cA2DGPlL4VPCHc0
	 lwgIKCdtGx4IPl5Zh7rO+3gLhBn0/Fh4jhzdflwoTdHM4U6Bm6cEY56FhhUCPuxJCO
	 lmrVxtp9maVdOzqHlPW/pcTtlLAI+lf8cZNRcX4PSGI2kno6Bkg9FaGAkyQHzPIpB+
	 Bm6W+Qut3p5HooImYf4AUh0ublIZVQSpcg6XIteoWl1ovQ0qhb+J2d/hS47fusMRTC
	 dwXIrxSIiCZ8A==
Date: Tue, 24 Nov 2020 12:02:52 -0600
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <X71KzJHgsplpNDjT@sol>
References: <20201124182021.GB13107@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9aMo8qwS8TSgcohY"
Content-Disposition: inline
In-Reply-To: <20201124182021.GB13107@suse.de>
Subject: Re: [oss-security] Heads up: PAM 1.5.0 has a auth bypass under some
 conditions

--9aMo8qwS8TSgcohY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 24, 2020 at 07:20:21PM +0100, Marcus Meissner wrote:
> Hi,
>=20
> (via IRC, spotted by Foxboron)
>=20
> PAM 1.5.0 had a potential auth bypass, if a user did not exist and the ro=
ot password was
> empty (but root locked down).
>=20
> The reporters usecase was spammers pretending to be unknown users with a =
PAM enabled dovecot.
>=20
> This issue affected only pam 1.5.0.
>=20
> News entry:
> https://github.com/linux-pam/linux-pam/commit/28b8c7045ac8ea4ea080bce02a2=
df9e3b9e98f06
>=20
> CVE-2020-27780
>=20
> github issue reporting the problem: https://github.com/linux-pam/linux-pa=
m/issues/284
> Fixing commit: https://github.com/linux-pam/linux-pam/commit/af0faf666c50=
08e54dfe43684f210e3581ff1bca

It looks like that commit is in 1.5.0, and the issue was closed by
commit 30fdfb9 (not af0faf6).

--9aMo8qwS8TSgcohY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEOTM8ebe9hc1VwC5MgSvfy5dLV4MFAl+9SsoACgkQgSvfy5dL
V4O0Egf/e1zfoLUDQh2l6C5vsinfTT1JWA+DDhnvcPe3hndFYXp3PHjrwWR4fG5e
gV5Heu3gK2EoGdRheNm2Av0axw+E5a8/Hezj4182gcDmyG9WWjpVaiA609JECCQ8
79A2y4Qmb5OcoVrifWRcs40FcKg7MqSUEq9EOr5gRPGKMY4Eq/+opJP3gZq9GjQs
gMMiRiOy0Jm9IHzMkUYzEPc7fs5vPCTHFztC/8QR102t9Mq2ZbXb3HWet5xFKVH0
7AnaftIBvgN9QdBCylas0udGExmE27KyvQ9E/jBPaMRkSgaMbQaXvmdruppvpK3b
AjStEblgbcApzSCMgpvkqCbD/lGtuA==
=0tiN
-----END PGP SIGNATURE-----

--9aMo8qwS8TSgcohY--
