Received: (qmail 15461 invoked by uid 550); 14 Mar 2023 11:10:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15443 invoked from network); 14 Mar 2023 11:10:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=x8vWO25e5sAOWJA0EnaBtXyIgE0XGUwJUNfuTu0Sg94=; b=cVLrnc4HMrZ4A2TLzBhIBUtxos
	3vwVCn+6Re5Z1jWI10/6HhcfaS5of49t4H4Q6Iwfz1v5lCBWfW++a96u5KLsqCbI8boXQeAz2RbhH
	cQtiweozxyGjvaziC+XA6xmGsk3TagXDixhBThh/irxzFLVDIS2I+xliQGZ3ztKkf6dY=;
Date: Tue, 14 Mar 2023 12:10:37 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Message-ID: <ZBBWLS+7hGnvtsqQ@doggett>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <ZBBQifYr6J8OSNXP@doggett>
 <20230314120117.46a105cc.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qJm6xOQLNAx3GWP1"
Content-Disposition: inline
In-Reply-To: <20230314120117.46a105cc.hanno@hboeck.de>
X-PGP-Key: https://www.more-magic.net/peter-bex.asc
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--qJm6xOQLNAx3GWP1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 12:01:17PM +0100, Hanno B=F6ck wrote:
> On Tue, 14 Mar 2023 11:46:33 +0100
> Peter Bex <peter@more-magic.net> wrote:
>=20
> > Indeed, opendoas (the portable version of OpenBSD's "doas") has this
> > exact bug as well: https://github.com/Duncaen/OpenDoas/issues/106
>=20
> Though some context is relevant here: doas is a tool from OpenBSD.
> According to the Linux kernel commit message [1] OpenBSD has fixed this
> already 3 years ago by entirely removing TIOCSTI [2][3].

Indeed, the GitHub issue makes this clear as well (that's why I
specifically mentioned opendoas and not doas in general).
It just shows that even for security-minded folks it's a big trap
to fall into.

This is the case *especially* when either
a) the developers are mainly working on OpenBSD
or
b) it's a port from OpenBSD

Because it isn't even an issue there.  And you wouldn't expect an
OpenBSD-developer to include a PTY allocating feature unless they
explicitly also target Linux.

=46rom a very cursory search, it looks like NetBSD and FreeBSD haven't
disabled the option either, so more fun to be had if they include
doas versions as well.

Cheers,
Peter

--qJm6xOQLNAx3GWP1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAmQQVikACgkQER25+ctF
ibB6vQf/aGSZ/Avu5gE62fcbC/PsnElhviyN9oJ4oxZ9B/OctZx6j8BFOZ81t95O
e+b7m7FcMDDCE3SzKrVU7YaPFL8JUHteD7hMBNquAAHH7O5Wy+qcBR0/1PsuFLC9
yr8dWmkpFwUhUWMoGo6np/OoK5uWs/9xwi5hR9GtKLWl8Aa2DPBVjl5dzrlMPAwy
cX8fb2RahxJdyvffCb8haCFU5wcg4V485IjYRWjU419k1y+VLnNFywu1PRoYhAaG
Re0akb5OlaImwswqJLJrNa2QXNRqnrVZ+z2yv3NyvzylH8klJ+jQwZHtRDaxJ1dg
P+Ud8ZO4kMzV+6MkpgLuh3iyulS1tA==
=VXu5
-----END PGP SIGNATURE-----

--qJm6xOQLNAx3GWP1--
