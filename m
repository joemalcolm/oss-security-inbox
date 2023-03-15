Received: (qmail 23727 invoked by uid 550); 15 Mar 2023 08:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23701 invoked from network); 15 Mar 2023 08:44:18 -0000
Date: Wed, 15 Mar 2023 09:40:18 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20230315094018.27d65aae@fabiankeil.de>
In-Reply-To: <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
	<20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/8fkfWhHbFCg55ziP5bQ/287";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--Sig_/8fkfWhHbFCg55ziP5bQ/287
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Shawn Webb <shawn.webb@hardenedbsd.org> wrote on 2023-03-14 at 16:57:25:

> On Tue, Mar 14, 2023 at 09:51:03AM +0100, Hanno B=C3=B6ck wrote:
> > Hi,
> >=20
> > This blogpost highlights TTY Pushback vulnerabilities enabled via the
> > TIOCSTI kernel functionality available in the Linux kernel:
> > https://www.errno.fr/TTYPushback.html
> >=20
> > This has been discussed here previously:
> > https://www.openwall.com/lists/oss-security/2017/06/03/9
> >=20
> > Though I think there are some noteworthy updates. In the 2017 post
> > solar designer mentioned that the Linux kernel developers have multiple
> > times rejected changes in the kernel. However this has now changed:
> > Starting with Kernel 6.2 it is possible to disable TIOCSTI
> > (unset CONFIG_LEGACY_TIOCSTI). It also appears that very few (or no?)
> > applications practically use TIOCSTI.
> >=20
> > This seems to be the only real mitigation for this issue. It appears
> > su has a parameter, and in sudo one can configure the creation of a new
> > pty in the sudoers file. I don't consider these as satisfying fixes, as
> > they are optinal, and thus rely on the expectation that users are aware
> > of this risk and manually use these mitigations. That does not seem
> > realistic to me.
> >=20
> > This also affects such a large number of tools, not just
> > su/sudo-like tools, but also sandboxing tools. E.g. bubblewrap [1] is
> > affected by this by default.
> >=20
> > Thus I strongly recommend that people disable this in the kernel.
> >=20
> > [1] https://github.com/containers/bubblewrap/issues/555
>=20
> With commit c7d6d4bb4874720d9dab1625df62c2ea6eeb9df5[0], I've added a
> toggle in HardenedBSD to disable TIOCSTI. The toggle is set to
> prohibit TIOCSTI by default. Now attempts to use TIOCSTI will be met
> with EPERM.

In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't
noticed any problems.

According to the commit message "TIOCSTI is still used in tcsh,
but as tcsh isn't compiled on ElectroBSD we don't care".

> I've verified the toggle in a real-world scenario with the doas issue
> PoC found at [1].

I should probably do the same.

Fabian

[0]: <https://www.fabiankeil.de/sourcecode/electrobsd/ElectroBSD-20220822-d=
9391cfeef5b/0157-sys-kern-Follow-OpenBSD-s-lead-and-remove-TIOCSTI-sup.diff>

--Sig_/8fkfWhHbFCg55ziP5bQ/287
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCZBGEcgAKCRAFiohV/3dU
na0uAJ9R7PKH5fa66X/57i+/umgSSmi8NACePzNxDsD/NTCQYHLInd3FfK8GEQo=
=cZm/
-----END PGP SIGNATURE-----

--Sig_/8fkfWhHbFCg55ziP5bQ/287--
