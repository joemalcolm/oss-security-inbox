X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1680" "Friday" "22" "June" "2018" "12:26:07" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20180622192607.GA27571@hunt>" "60" "Re: [oss-security] Intel hyper-threading security issues" "^Date:" nil nil "6" "2018062219:26:07" "[oss-security] Intel hyper-threading security issues" (number mark "        seth.arnold@ Jun 22   60/1680  " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<87vaabea58.fsf@concordia.ellerman.id.au>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" "<20180621125049.GA14978@openwall.com>" "<87vaabea58.fsf@concordia.ellerman.id.au>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9896 invoked by uid 550); 22 Jun 2018 19:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9869 invoked from network); 22 Jun 2018 19:26:20 -0000
Message-ID: <20180622192607.GA27571@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>
 <20180621093754.GY53290@symphytum.spacehopper.org>
 <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
 <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>
 <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
 <20180621125049.GA14978@openwall.com>
 <87vaabea58.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
In-Reply-To: <87vaabea58.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Fri, 22 Jun 2018 12:26:07 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2018 at 02:08:03PM +1000, Michael Ellerman wrote:
> See the script below for example, which shows CPUs grouped by core.

> #!/usr/bin/python3
>=20
> import os
> import glob
>=20
> by_core =3D {}
>=20
> for path in glob.iglob('/sys/devices/system/cpu/cpu*/topology/core_id'):
>     num =3D int(path.split('/')[5].replace('cpu', ''))
>     core_id =3D int(open(path).read(), 10)
>     by_core.setdefault(core_id, []).append(num)
>=20
> for core in sorted(by_core.keys()):
>     print('%d: %s' % (core, ', '.join([str(s) for s in sorted(by_core[cor=
e])])))
>=20

Note that this gives misleading results on multi-socket systems:

0: 0, 8, 16, 24
1: 1, 9, 17, 25
2: 2, 10, 18, 26
3: 3, 11, 19, 27
4: 4, 12, 20, 28
5: 5, 13, 21, 29
6: 6, 14, 22, 30
7: 7, 15, 23, 31

This system has two sockets, eight cores per socket, two threads per core.

Solar's cpuinfo reports;
$ ./cpuinfo
Found 32 logical processors across 16 physical cores

Thanks

--ReaqsoxgOBHFXBhH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAlstTUoACgkQ8yFyWZ2N
LpdhHwf/b3IjdS/4VgG+ypXls8jwvFzAlZCynIYEOX/QOhlvJjOHgGpNXJsTGrkK
vuxxmHMSZntma6qFm1lBVheKcYkQ+mHYtFCHaiVQ27NxancaSaSBeFE3Cltii3uo
V7aJ5xsPNJGS/8sjpkWWaREpdqHl/AS0mj2GeZcZwfULtRibqbiBLtmC0BgzBbED
Q3OLqWyz0I5R1cvnyoH9Euj2W/ms5DtS3NqKCvZ7d6sCyXvmaWovdvYjHUtgDA0X
bSkVNuvhmcB/r3uktES2hy6GXIrKLls5v15L0EBrXcwRekKLtx3Uc4JFeMefr3Dt
gmFouwm19wLhALXlWt20ckPncUpYPw==
=Q+Bd
-----END PGP SIGNATURE-----

--ReaqsoxgOBHFXBhH--
