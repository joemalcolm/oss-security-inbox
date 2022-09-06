Received: (qmail 23645 invoked by uid 550); 6 Sep 2022 11:50:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23622 invoked from network); 6 Sep 2022 11:50:24 -0000
Date: Tue, 6 Sep 2022 11:50:10 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="szsnpwswdhffdiaj"
Content-Disposition: inline
In-Reply-To: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

--szsnpwswdhffdiaj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022-09-06 08:47:58 +0300 (+0300), Georgi Guninski wrote:
[...]
> sagemath gives access to the python interpreter, so code execution
> is trivial.
[...]

I'm not familiar with sagemath, but is it intended to protect
against such cases? Note that even if all it does is pass
expressions into CPython's eval(), it's pretty much impossible to
guard against misuse without completely sandboxing the underlying
processes. Denial of service scenarios are really the least of
worries in that case. Many articles have been written over the years
about this, though one of the more recent and thorough ones is:
https://netsec.expert/posts/breaking-python3-eval-protections/

If it's not trying to prevent getting access to do all the things
the interpreter can do outside sagemath as well, then I hardly see
this as a vulnerability (any more than "CPython interpreter allows
execution of arbitrary Python code" would be, at any rate).
--=20
Jeremy Stanley

--szsnpwswdhffdiaj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmMXM+tfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WClinw//cnycHb8C/M+FOsZDlxuyBCb6QltZvVUlw88S5BdaQxV6wc8hfqsh3sRR
5ClFgk3FR/RaL6wzS/wAo+BdOwxu4Ft30MyBJRP4D9Y100lABucEAvJNLbUeGXMH
lIwG3YsFwMfxB9hnW8rfImr39jGIdJMUIPb6I9Y6znuVmFkxQN3Munpn+w4aPWfJ
/2yZuvDGtCNFlVXGJrcTUnwedSbQ0zuq1tLzGeWFs4MpkVytfDzcQ1GkurFyngZ9
v/TwMZrRv0JzZ+eQGn/tZXvXaL5YCn0g0TtoZK5RUWY89FQ35EWGA4KzEDwwbtoP
j/ebJEsYBgQuqG1l+sIlT4fIypP/GH+A9S6/kAoNfpBKtM5/BvebQE7jwJVsbbn6
MbAP5sLysU3SWyBaKGS3ETdOKNlErYAz4YXGE7YT9nrnQSpVev198KVMQuCuAb2A
hjSNLiIGJZA7lr6+Q70+Ui+Dn/KB9DhqGdiG779c1NT+oKyVFvswNxTVBJ7sNxsn
FcyUpr/PumwK7QbZHzIk5wg+1d2/i6GKzMx0KKmKJEwGhjUEXO9+FxiHTVkK2dkK
Wywq9awglpT0/JsmH1b+yFwpKEA9bbN+bUkLTuQGmKLLWkHzXdDkHJhork1LtY1j
dxAUwjarD2cQC9uWtjCcNSXopqaLczV7H5/FDo7XpA/4i0Zf9vE=
=WzSY
-----END PGP SIGNATURE-----

--szsnpwswdhffdiaj--
