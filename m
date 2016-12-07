X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1979" "Wednesday" "7" "December" "2016" "08:48:35" "-0500" "Brad Spengler" "spender@grsecurity.net" "<20161207134835.GA20060@grsecurity.net>" "56" "Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" "^Date:" nil nil "12" "2016120713:48:35" "[oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" (number mark "        spender@grse Dec  7   56/1979  " thread-indent "\"Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)\"\n") "<20161207141515.4f21682f@pc1>" ("<CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>" "<CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>" "<20161207141515.4f21682f@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13606 invoked by uid 550); 7 Dec 2016 14:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13558 invoked from network); 7 Dec 2016 13:48:47 -0000
Message-ID: <20161207134835.GA20060@grsecurity.net>
References: <CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>
 <CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>
 <20161207141515.4f21682f@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
In-Reply-To: <20161207141515.4f21682f@pc1>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 7 Dec 2016 08:48:35 -0500
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race
 condition (local root)
To: oss-security@lists.openwall.com

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

4.8.12 doesn't have the fix included, despite being released on the same
day the commit was merged into net/ and despite the advance notice in
private via security@kernel.org.  It's currently in the net/ "stable" queue
which operates seperately from the rest of the kernel.  It'll be merged
whenever that process plays itself out.

-Brad

On Wed, Dec 07, 2016 at 02:15:15PM +0100, Hanno B??ck wrote:
> Hi,
>=20
> I'm running kernel 4.8.12, which has the fix you pointed out included,
> however:
>=20
> > You can also run it with "crash" as the first argument to force a
> > panic.
>=20
> running your code with the "crash" parameter reliably panics this
> kernel.
> This doesn't seem right. Is this an incomplete or nonworking fix?
>=20
> --=20
> Hanno B??ck
> https://hboeck.de/
>=20
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJYSBMsAAoJEETRwPglJf5JuNwQAIT7KwM36z9FYllmStG4SJXs
g5sZBLS5wQmlkvSFFXqxGp5WS4HbPt8IVU0kwLVWgKXPgsyU6T6m80bgyT9xzKK2
v7Ile/LpIHhT+v9Di/9iguwaaYMjOv11zL7mhe+mHTG05NoxWjn4MWQCsrToUIFy
6FJmKEHOQ1EwdbI+t2kM1fc2E3fJuOZJqf14N4UAVLk2aOUSwAyfqETBjpM9Vi9j
WQWwvGpqBnfI1pY4N0YOcWS+56c5y+CPDDGUFBJtWyMRyiTPkTRz1++oY76wTII5
6GYfyfRsQ/Yfpm8HY097d13fHJtSHkFZrbRoOtn5myZ7lyUpA5KUqqYJQJXMq1oD
EXysiM1ooRXTvg3/le6FkXqLnd6DMOjb2H3Cd3QpUy3XdxHUmGJLeNT4z1iZFKIV
OyFfi5185Z31oat/lOeIvoJge82Zgf3h7nVpb+0SoLfqrmwjCC90vxiFwXnt3Rm2
XuoncHOQo3v/dTta8YF9S5BVT28k0zs5lDXMHVkaM6r2Jdr7Stee/g+2qcCb6b5g
qRXBLxXYZNvPmovfEV2ZX0w4Z/FKqAgAvdbQYm39DE/ilI6hpMUXQ+f4Dswzgmqa
xBq6VSpV6pKcnsDJuNpK76bRcH4OhNUshZKXzHt0sYYavrMP2PrIIiYnhjMgy9Kq
VqlQC8dICxd6ZpbFuYw2
=XsSX
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--
