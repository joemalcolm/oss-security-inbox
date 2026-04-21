Received: (qmail 11657 invoked by uid 550); 21 Apr 2026 11:36:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11602 invoked from network); 21 Apr 2026 11:36:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1776771368; bh=ydWZkqhgOrEQcGq+tRdI3LMu6k+6GVUEUISLYAoN6WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=L3JP5k1JzHU7FhPiNklxYKx237APKe0deoKeUVVIRlCFO0i5Uo8y7tlREJrha96TQ
	 L/6YO9K8ltuHpTkLOoXIiQjrnUE9WFTTxEncSaZXBpP7Cyft/hEkofJ6iBBXZdr/CS
	 r5+3ztH67/VJOFybL1qEuaB96NgdgmHI+UxXJZnc=
Date: Tue, 21 Apr 2026 07:36:06 -0400
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Cc: Morten Linderud <morten@linderud.pw>
Message-ID: <aedhJq1VF7pR2sc1@mertle>
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com>
 <aeILrE9J6sYYPmEh@xoff>
 <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
 <87mrz1tbu3.fsf@gentoo.org>
 <aeU_M_lpglZoXOqI@xoff>
 <aeZOttxgx4WSc-Kj@framework>
 <5a747a70-61e1-4efe-914f-13cedca4c229@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8G6NP8eot0W4vSyj"
Content-Disposition: inline
In-Reply-To: <5a747a70-61e1-4efe-914f-13cedca4c229@gmail.com>
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

--8G6NP8eot0W4vSyj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2026-04-20 13:10:13, Demi Marie Obenour wrote:
>=20
> I wonder if build infra needs to be updated to support automated
> rebuilds when a reverse dependency is updated.  My understanding is
> that FreeBSD ports, Nix, and OBS already support this.

On its own this isn't sufficient because many packages pin their
dependencies to specific versions or git commits. This causes a
cascade of problems:

 * Most dependencies can't be packaged separately, because eventually
   two applications will require two different versions of the same
   library, not to mention the labor involved.

 * You can try to loosen the dependency constraints yourself, but with
   everyone else bundling, no one cares about API/ABI stability and
   breakage is likely.

 * OTOH with dependencies left bundled and pinned to specific
   versions, rebuilding does nothing except change mtimes.

--8G6NP8eot0W4vSyj
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEFOnXLXsa/e/AtBwfb0jT2gXC2tsFAmnnYSEbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMCwyAAoJEG9I09oFwtrb2ZMQALFqcp69+OToGtW8iR0/
IB4osqIaDJISJCcf5IVMYFNNqK7Vxg0byDQiqN87QcI3muDBSEjIgj1E+p2fD7Em
w9tfFWSdoeKYul57HL6ktJNpSYuvEorNsgwmLdJNLaVvlneAW5rSsKCgGlY7WADD
9Z++Crb9aoLVDie7m1bMDb1ndZIxyOZE/cu3x74yy7IQ+0DnV4BOv++PJiA67wYY
X9WQ3azYMxihZdlmRSLNqvs/r8iAuFpTJn9CJOeQvRuM+vXHu5ccw91MYn6hA265
Bo7W8Bs6kPsFdUSNbrMherEztq2Ku6S36FKIjKe3F58KOO3QKb9vNHlIeI09+Z8v
PmOC573LO10nR6bRJMo9CJTxOrQdH7ruRRXGE1SLG6sisghfhujKx+undjp3vU0L
QM1PcMTF9qeeAJ5QTiv7l2GBRCvR1jNn6sX89R8phj6OzGKup3oVbx8oGfJUg9hh
DOJlPpnsWxE4jb5PNNfbW2RBU01J2zUeZm/iLatiEXFj/F+6QAY75DEjGJDDQfyH
Enr2kZpBUfVxZXB9HkMz2g6KYLy14Ecxcio2zFikuZHuKqN3oB0gmDngt+UAYSvD
m/mfEkVxT9YhqmEh4c1oLPudH7Gx6/3GeNY+Ll4FK/mAph0KlE+Us801gvrvJTFY
PXhGq+6/ZIRZBa8XgG3UYpVN
=BXCu
-----END PGP SIGNATURE-----

--8G6NP8eot0W4vSyj--
