X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5114" "Tuesday" "17" "March" "2015" "16:18:43" "+0100" "Sven Schwedas" "sven.schwedas@tao.at" "<550845D3.1020509@tao.at>" "139" "Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" nil nil nil "3" "2015031715:18:43" "[oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" (number mark "        sven.schweda Mar 17  139/5114  " thread-indent "\"Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont\"\n") "<5508443E.401@oracle.com>" ("<20150317150833.GA2934@also.us.oracle.com>" "<5508443E.401@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31829 invoked by uid 550); 17 Mar 2015 15:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31808 invoked from network); 17 Mar 2015 15:19:10 -0000
X-Clam:  OK
X-Virus: NO
Message-ID: <550845D3.1020509@tao.at>
Organization: TAO Software
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150317150833.GA2934@also.us.oracle.com> <5508443E.401@oracle.com>
In-Reply-To: <5508443E.401@oracle.com>
X-Enigmail-Version: 1.6
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="a0AVNeu3fFkmHlO52wVTuebB1orSPaeTJ"
Date: Tue, 17 Mar 2015 16:18:43 +0100
From: Sven Schwedas <sven.schwedas@tao.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More
 BDF file parsing issues in libXfont
To: oss-security@lists.openwall.com

--a0AVNeu3fFkmHlO52wVTuebB1orSPaeTJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 2015-03-17 16:11, Alan Coopersmith wrote:
>=20
>=20
>=20
> -------- Original Message --------
> Subject: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing
> issues in libXfont
> Date: Tue, 17 Mar 2015 08:08:33 -0700
> From: Alan Coopersmith <alan.coopersmith@oracle.com>
> To: xorg-announce@lists.x.org
> CC: William Robinet <william.robinet@conostix.com>, xorg@lists.x.org,
> xorg-devel@lists.x.org, Ilja Van Sprundel <ivansprundel@ioactive.com>
>=20
> X.Org Security Advisory:  March 17, 2015
> More BDF file parsing issues in libXfont
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Description:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Ilja van Sprundel, a security researcher with IOActive, has discovered an
> issue in the parsing of BDF font files by libXfont.  Additional testing by
> Alan Coopersmith and William Robinet with the American Fuzzy Lop (afl) to=
ol
> uncovered two more issues in the parsing of BDF font files.
>=20
> As libXfont is used by the X server to read font files, and an unprivileg=
ed
> user with access to the X server can tell the X server to read a given fo=
nt
> file from a path of their choosing, these vulnerabilities have the
> potential

Can this be exploited by any current browser's web fonts implementation,
or will this require local access? (Loading fonts from user-writeable
~/.fonts seems to be enabled by default.)

> to allow unprivileged users to run code with the privileges of the X serv=
er
> (often root access).
>=20
> The vulnerabilities are:
>=20
> - CVE-2015-1802: bdfReadProperties: property count needs range check
>=20
>     The bdf parser reads a count for the number of properties defined in
>     a font from the font file, and allocates arrays with entries for each
>     property based on that count.  It never checked to see if that count
>     was negative, or large enough to overflow when multiplied by the size
>     of the structures being allocated, and could thus allocate the wrong
>     buffer size, leading to out of bounds writes.
>=20
> - CVE-2015-1803: bdfReadCharacters: bailout if a char's bitmap cannot be
> read
>=20
>     If the bdf parser failed to parse the data for the bitmap for any
>     character, it would proceed with an invalid pointer to the bitmap
>     data and later crash when trying to read the bitmap from that pointer.
>=20
> - CVE-2015-1804: bdfReadCharacters: ensure metrics fit into xCharInfo
> struct
>=20
>     The bdf parser read metrics values as 32-bit integers, but stored
>     them into 16-bit integers.  Overflows could occur in various operatio=
ns
>     leading to out-of-bounds memory access.
>=20
> Affected Versions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> X.Org believes all prior versions of this library contain these flaws,
> dating back to its introduction in X11R5.
>=20
>=20
> Fixes
> =3D=3D=3D=3D=3D
>=20
> Fixes are available in the patches for these libXfont git commits:
>       2deda9906480f9c8ae07b8c2a5510cc7e4c59a8e
>       78c2e3d70d29698244f70164428bd2868c0ab34c
>       2351c83a77a478b49cba6beb2ad386835e264744
>=20
> Which are now available from:
>       git://anongit.freedesktop.org/git/xorg/lib/libXfont
>       http://cgit.freedesktop.org/xorg/lib/libXfont/
>=20
> Fixes will also be included in the libXfont 1.5.1 & 1.4.9 module releases
> from X.Org.
>=20
> Thanks
> =3D=3D=3D=3D=3D=3D
>=20
> X.Org thanks Ilja van Sprundel of IOActive, Alan Coopersmith of Oracle, a=
nd
> William Robinet of Conostix for reporting these issues to our security te=
am
> and helping evaluate and test the fixes; and thanks Michal Zalewski and t=
he
> American Fuzzy Lop community for providing their fuzz testing tool as an
> open
> source project we can all benefit from at http://lcamtuf.coredump.cx/afl/=
 .
>=20

--=20
Mit freundlichen Gr=C3=BC=C3=9Fen, / Best Regards,
Sven Schwedas
Systemadministrator
TAO Beratungs- und Management GmbH | Lendplatz 45 | A - 8020 Graz
Mail/XMPP: sven.schwedas@tao.at | +43 (0)680 301 7167
http://software.tao.at


--a0AVNeu3fFkmHlO52wVTuebB1orSPaeTJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQGcBAEBCAAGBQJVCEXTAAoJEGFKJ36biFJyqlwL/iFXZjME/M4f96dheIJR6vR0
koAG/VAlwnMbfR52VeAoFUeYtfr0ZgqwVtUdxbuLuQTInwV+pP4dLjQRiS1LFxCF
YJRRMZUHdE3/VfdRWdWbzfHtmMk3+kiHM1YwLXZywiSq0jIpDUeeMZjJw8ychkGb
1jQRIPUnXzXuic7rqRk6VIpMQKkDXJ0SFp4PnZvnDT7QXQ9GFoYOc3tTWqvhyxcE
gPWZ1M9sd4RpTkXgiOoab/HkF5QNRXbhFKRsyyHeATuBTF3/sVMBcP8KOLSDO4Pr
Glko1PMynnm6FPqz9+6oXyctMctY2EGxZ21bXWD9P1HIZaoqFLa7G4AixUKErFGE
FJdwtsVbhnNTEM5XrZ30JyEfMiJSapA/R+Oe+Z1K7loPlOLJSWRlzU5DlLcfbhVa
iSKRQz+s538c3e5BS7pQLAhT/Bs2rEUpoqBqpJt87O7qRXdi1O9pp6A4da0KX6QC
RooqNcOVCYbF9OsMoezlarzV2qSfzFlmE6ndfkcYgQ==
=TcML
-----END PGP SIGNATURE-----

--a0AVNeu3fFkmHlO52wVTuebB1orSPaeTJ--
