X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1520" "Monday" "21" "August" "2017" "18:08:56" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170821160856.y3ewehenfowokfot@f195.suse.de>" "40" "Re: [oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" nil nil nil "8" "2017082116:08:56" "[oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" (number mark "U       mgerstner@su Aug 21   40/1520  " thread-indent "\"Re: [oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak\"\n") "<20170821140808.nwvjj5nmdmf45vro@f195.suse.de>" ("<20170724101204.GA22772@f195.suse.de>" "<20170821140808.nwvjj5nmdmf45vro@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15823 invoked by uid 550); 21 Aug 2017 16:09:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15505 invoked from network); 21 Aug 2017 16:09:08 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 21 Aug 2017 18:08:56 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170821160856.y3ewehenfowokfot@f195.suse.de>
References: <20170724101204.GA22772@f195.suse.de>
 <20170821140808.nwvjj5nmdmf45vro@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ct5k57twqvpmsklo"
Content-Disposition: inline
In-Reply-To: <20170821140808.nwvjj5nmdmf45vro@f195.suse.de>
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: Re: [oss-security] tcmu-runner: multiple vulnerabilities in
 tcmu-runner daemon allowing local DoS, information leak and a memory leak

--ct5k57twqvpmsklo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > ------------------------------------------------------------------------
> > qcow handler opens up an information leak via the CheckConfig D-Bus
> > method
> > ------------------------------------------------------------------------
> [...]
> >   https://github.com/open-iscsi/tcmu-runner/commit/8cf8208775022301adaa=
59c240bb7f93742d1329
>=20
> CVE-2017-1000190

Sorry, made a mistake here. This is CVE-2017-1000199.

--ct5k57twqvpmsklo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZmwWYAAoJEBTEBclxkjVTmVEP/RJ3kW9AeCt7zxEA1w+oNyGB
ZQkmtfnTLM8+tgZ6e5HkScpqylE4JfNtxNOx8Ds2gEmOFrWd4V2rMR47cEHheDZ0
bm4W6HSY61ZVWou47otFUYZj9rvAW1ke3S7HX3DR4aE5JRjljGQZJbulkrmpbaxA
hJ9g8azsw2H5n5DgJaany1NAVCIFBOZAV473gG62gQlxltm98gwh1hcf03tqW9QA
e5zdBtKStlKmdKskqu5cpF5ob7hN7vQt/flU2KRDa948S9EwGN5ek4tKEvA87afK
nendcx9OOMxYFGO3B3s3DncFtzraPYa9kjf0As+NE8GfQAuMdXdEieQg1m2V+4xR
ctDm/Gsf0JoxTL96iBFOKXusRMYnfGjHIsf/DYivHIys0yNeln0CALMH6K/AXcvl
9MwsfPzHjDQliRsAqdJZz1t0YX+0HtUZC8IBkDEKn/rq3/eU9Qq3hCl/lWoI3wY+
Xa8lFz0BbO1hdlTt4jucx6dPq2jLjFhrjQnm3rpVYF/V5iOyv2I5E0aiACy8DRiN
RlDilIAHX7ThDxp1L5fU4mVfvScbmEx/3Qm1TFnIpAElpWPoYaw2phGZeZj9Ubcn
+zQApeJgEaCop6A9RxvP1F2DEETKhvjo8FtUyLdLdxhJX6Df5XJkynZVBpmtEqHO
MXGaDj47B5EFg6EdPVlB
=Ybeo
-----END PGP SIGNATURE-----

--ct5k57twqvpmsklo--
