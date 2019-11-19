X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3254" "Tuesday" "19" "November" "2019" "17:03:50" "+0100" "Morten Linderud" "morten@linderud.pw" "<20191119160252.zzrknyo46u52pm26@anathema>" "84" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019111916:03:50" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        morten@linde Nov 19   84/3254  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191119121910.g6tc5zwbmbdiuiuh@anathema>" "<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26160 invoked by uid 550); 19 Nov 2019 16:45:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28552 invoked from network); 19 Nov 2019 16:04:06 -0000
X-Spam-BL-Results: 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linderud.pw; s=mail;
	t=1574179435; bh=zcKdsfrFILu9yzGcEKQtVy2CjjGxxUuv9Gobz0LqNfY=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=DlBWS2xUjhjBvsSBpgimAT9xjfsSAqxnGuBe52iOvWjgmuIZSDNf38pLLNX8mrcce
	 oY6e4N+MHGp7RH5Z5CudaYGAutbCk0B2NCb/1sXetCj/pv4LX692QO0BYXaU+drEg2
	 KL+5TTd9jGH9iHLGbBiGom3tyxFy385kmQiQdGyQ=
Message-ID: <20191119160252.zzrknyo46u52pm26@anathema>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
 <20191119121910.g6tc5zwbmbdiuiuh@anathema>
 <2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jalsa67kjslscf5u"
Content-Disposition: inline
In-Reply-To: <2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>
Date: Tue, 19 Nov 2019 17:03:50 +0100
From: Morten Linderud <morten@linderud.pw>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

--jalsa67kjslscf5u
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 19, 2019 at 03:37:23PM +0100, Tim Kuijsten wrote:
> > There is not a definitive solution here. But there are multiple efforts=
 and
> > research going on. The most important one, in my opinion, is the reprod=
ucible
> > builds project [1]. We need to ensure we are not inserting random or
> > non-deterministic data into our build artifacts. This stretches from up=
stream
> > developers providing tarballs, to pre-compiled sources and packages from
> > distributions. There is no distribution today that has full reproducibl=
e builds,
> > but there are many projects that work towards this and work on reproduc=
ible
> > builds.
>=20
> One attack that is not solved by reproducible builds is one on the toolch=
ain.
> This can be solved with bootstrappable builds[1] which is about minimizin=
g the
> number of trusted binaries that are needed to produce the toolchain, that
> produced the toolchain, ... that was used to build your package.

Indeed. Reproducible builds does not solve the case described by Ken Thomps=
on in
Trusting Trust [1], nor enables the work described by David Wheeler and DDC=
 [2].
But that isn't explicitly the goal either. We first need to be in a state w=
here
we are capable of reproducing the distributed artifacts. Then we can invest=
igate
the boostrap problem.

Which is why Reproducible Builds is also invested in this problem :) There =
is a
yearly summit with projects that contribute to reproducible builds. Last ye=
ar in
Paris there where 3 sessions on bootstrapping [3][4][5]. The sessions where
mostly lead by Guix developers if I recall correctly, and they have been do=
ing
great progress on this problem [6].


(I see Ludovic replied first but sent it regardless :D)

[1]: https://dl.acm.org/citation.cfm?id=3D358210
[2]: https://dwheeler.com/trusting-trust/
[3]: https://reproducible-builds.org/events/paris2018/report/#Toc11358_3317=
63073
[4]: https://reproducible-builds.org/events/paris2018/report/#Toc11376_3317=
63073
[5]: https://reproducible-builds.org/events/paris2018/report/#Toc11402_3317=
63073
[6]: https://guix.gnu.org/blog/2019/guix-reduces-bootstrap-seed-by-50/

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--jalsa67kjslscf5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEktnGzemaICTWkKdu50JoO6CMsv8FAl3UEmYACgkQ50JoO6CM
sv/N9Q/+PHagclVcyMKdrQWz171kXn9xuIvHsbHJWDCldGO2biQO8vkW74h7jbAM
Nv8zR2txFiQut1etZasKuNvseCqFSP4SmM95nUh5lssinBDjj9ZIBiyMfQSVFoph
NwxMVmwwl5LaV5koGAHE1FoTFBVimD8ULPqcUgX3W7ZyvLfqSdPzkt/vb7JKE7ji
xki9jWkIO26ILw9Hgo/D6vqufIVfRgkAlBBV4mAdmFXSTkyEEAA6OuY1S14JnluR
cXf6hZrU5cVHTTQDq1drAF14f6c8zit2yxk/WpJSfu/U1idmwt3dNpJV08Os+pR7
TUg9mgY3BFGySqJMHuN+dJo0hVhCSuxj/bVKs3hytWDoYwlyIaPeHJvKf4bCqmVr
vbFLrI/e91gT8XS8abjcLE/wW4oDNz04j4OhMkmeBGOPtQ96KYVrHxN9clpvQXXS
bmAVnezs3dezAVFSshtYKOx5UfaetuBmqxj6oRIq1P6vUS/x7/Vi++WTXSPlryCP
2j+4q2kWRyjLVJcaeVKQqdF9zdSUebDErMyjwRI7AaiUvYEMyx9pNRp246mrsMpV
zqyDJz7dZpB+yRviSi5cue///QsA8UQVwhtOrFp8SmzNDXkhMzzubk5PqdxsW16K
f++VMeNNapm+1ZGRykyVQxlCTR/4ovP4pNdhGgcunX33SMvAKrw=
=u5EG
-----END PGP SIGNATURE-----

--jalsa67kjslscf5u--
