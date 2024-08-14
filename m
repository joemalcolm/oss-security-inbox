Received: (qmail 11614 invoked by uid 550); 14 Aug 2024 21:00:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5387 invoked from network); 14 Aug 2024 20:55:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1723668948;
	bh=qHzIN1XFvfiAWsYTWYiT4rTF8sC4MRUIj5nvPwB0bRg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=WBWNoSF+8zJmk0Gg8L7XU7gmGvuWp4OQ9mpWXnM1ewPjxDbb69gBGf9a9oSZ6RmKz
	 nQaJon8LUQFxEMZM5RjneQBxuPbPaSh3x5MhYgX1uryXK0wYyz3TbL6aQhVdy6Bnne
	 k/iqhHiYdDBVgriAkFurqAoIKXV6WgfuoyXJ5LlNumCG+6xB7FuaRxSXi8ztPZFRIO
	 h3gUscU8222/B8E3uUhEsiikYMr9U6zljJEm9TjTqGewtG7NqX60gXbBTsHAS25QFc
	 rh1U7V2AoE+Amms+uWjhSq2kURd+8/uq3G/PBUWVnWELV/OWYEKZvJRaCo3phecm2b
	 z3GLLYMnzNX1g==
Date: Wed, 14 Aug 2024 15:55:46 -0500
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Zr0Z0vSW19REOqVD@aeon>
References: <c4c734f10429230cd935943fd025597b223e027c.camel@orlitzky.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+bifZoOJwzredPVv"
Content-Disposition: inline
In-Reply-To: <c4c734f10429230cd935943fd025597b223e027c.camel@orlitzky.com>
Subject: Re: [oss-security] Tracking down a lost CVE request (MITRE)

--+bifZoOJwzredPVv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

MITRE is not required to assign CVEs.

It is always best to work with upstream (if possible). MITRE is more
likely to respond if upstream replies to your email ticket ACKing the
CVE request. Otherwise, you may want to ask Red Hat's CNA to assign a
CVE [0].

Upstream has already agreed that this is a vulnerability in their fix
commit message [1], so assignment should be easy to justify to either
group if you provide the commit link as a reference.

Note that upstream's publication of a fix is now considered Public
Disclosure according to the CVE Program [2].

[0] https://access.redhat.com/articles/red_hat_cve_program
[1] https://github.com/NagiosEnterprises/ndoutils/commit/18ef12037f4a68772d=
6840cbaa08aa2da07d2891
[2] https://www.cve.org/ResourcesSupport/Glossary#glossaryPubliclyDisclosed

p.s., This does not apply here, but if MITRE *had* assigned a CVE and
ignores a request, a dispute could be brought to the CVE Program's
Secretariat (who works for MITRE).

On Tue, Aug 06, 2024 at 11:10:06AM -0400, Michael Orlitzky wrote:
> Couldn't think of a better place to ask this. I requested a CVE back in
> March for an issue with the installed permissions in Nagios's NDOUtils.
> I think the request ID was #1620090.
>=20
> I received a confirmation, but never got a follow-up response. I've
> since replied to the CVE-Request@ address, and have filled out the form
> with an "other" request asking for an update, but haven't heard back.=20
> New requests are obviously still being issued -- is there some way to
> find out what happened to this one?
>=20
> FWIW:
>=20
> Before NDOUtils-2.1.4 (released five days ago), the upstream Makefile
> would install the "ndo2db" daemon executable with the same owner/group
> that it is intended eventually to run as (namely: "nagios"). But the
> daemon is designed to be started as root and drop privileges to that
> user. If the "nagios" user can edit a binary that root will run, he can
> gain root privileges.
>=20

--+bifZoOJwzredPVv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAma9Gc4ACgkQszvZgG6F
IMafWg//al7VOniVpPKGg3JRXVIZJm0VbX65lIW05i3djAF5wwshEK0tAKA24KfO
vHu/1OwS3lDB4/DlbpBthncA/z/zOoH1AIrXP0kLHMv3uRmz3bfigsWAjvYRHOC/
InDUYm+xum5SgUGxDmdACePc8vib5g8FwkhhcJaDEnomQtKnkdJI7YPQ474VNrt2
pY6si4TTixeQGzgn18XFmv1MT8dwCOJPBg+xUOq9m3uKEOQYL1Ylm+/ipHFJr5Za
BK8n6wXs9QCqYTCrtD86Z8wPkpgg98Ufl3o3cQbN7j0dhlAQt8E6xgLcGqyTW4WT
9AKG0kxeLFy5M0cfkEh+GNasscM/gbM65qAIMGhuZvawVTUep/wyq6bd4iQGAbab
n2s6ujD3DWzr3ioynzv0U5pmXYoMt3b4pjsQHRLDzA+vVB8xmDS+YcKrH10aRLBO
EVRi8Hik3NTMG75bOzkDqjaEew9+wRhLwFKO5LYyz7mHzrzbSv4o47iL+2jHhRSj
/tXBpJ272CnJgBHZfRV9cCrmOFVfFtAPeLVjgY7f9JV+LTGjE/5BQWnd6yLWsndG
J9VVTJxKqox+Lhyz7CZad2dcFOtX1kwgHSxZSCcu/gz9LaHqCw6l2c/1vgSHtKA9
1Su1PXy/YFH/wfumFCnQNSsBwUxf3SGy25Snx2vKFA7k4Jb0Mt0=
=qnQv
-----END PGP SIGNATURE-----

--+bifZoOJwzredPVv--
