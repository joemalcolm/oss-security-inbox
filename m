Received: (qmail 30261 invoked by uid 550); 10 May 2023 11:43:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31943 invoked from network); 10 May 2023 07:17:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1683703047; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qPSosGp1vaqoT2FMSJGpPIRxGjCXm4c7TFf93SfXv00=;
	b=nBsBgyn7Tp8Y7kbZUAvLITCJ7bG31Y+PDbBtCwvUhfEOXxVRNl8+EHmiRtB0JcB/42js0f
	n2E+X2CQE/2NQQyYMnwMDDzlWZBiKy8BKq+GPLevL0tZtFyJwivvHh9jnI1NRGYzECbMcs
	y58+pxXpkVkg1Qo6TjOyjq8NDRuZWY4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1683703047;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qPSosGp1vaqoT2FMSJGpPIRxGjCXm4c7TFf93SfXv00=;
	b=mIxTgTIIgGdBAx2JYyCbZc9BNkpecwmVTKSylpkXHK0YkJORh4S7qVA9AHhQp9af3K5ISY
	ggmUVCVwSAJIKrBQ==
Message-ID: <80a16fe009b363a5f3b2fdd3219a1435001c3e43.camel@suse.de>
From: Cathy Hu <cahu@suse.de>
To: oss-security@lists.openwall.com
Date: Wed, 10 May 2023 09:17:26 +0200
In-Reply-To: <006a66843d1c12eb1c1ee187b764e570d2623932.camel@suse.de>
References: <006a66843d1c12eb1c1ee187b764e570d2623932.camel@suse.de>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fCVSpbqduSARaTTLoeN2"
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2023-2253: distribution/distribution:
 Catalog API endpoint can lead to OOM via malicious user input

--=-fCVSpbqduSARaTTLoeN2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update:=20

The github advisory is public now:
https://github.com/distribution/distribution/security/advisories/GHSA-hqxw-=
f8mx-cpmw

Please refer to the advisory for more information and the affected
versions and fixing commits.

On Tue, 2023-05-09 at 17:17 +0200, Cathy Hu wrote:
> Publishing to oss-security as our agreed maximum embargo date has
> passed now
>=20
> Summary
> =3D=3D=3D=3D=3D=3D=3D
>=20
> distribution/distribution
> (https://github.com/distribution/distribution) is the Open Source
> Registry implementation for storing and distributing container images
> using the OCI Distribution Specification.
>=20
> Systems that run distribution/distribution on memory-restricted
> environments can suffer from denial of service by a crafted malicious
> /v2/_catalog API endpoint request.
>=20
>=20
> Affected software
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> - CVE ID: CVE-2023-2253
> - CVSS Score: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> (important)
> - Affected: distribution/distribution < 2.8.2-beta.1 tentatively (!)
> (not public yet, see timeline section below)
> - Commit introducing the issue:
> https://github.com/distribution/distribution/blob/b7e26bac741c76cb792f8e1=
4c41a2163b5dae8df/registry/handlers/catalog.go#L45
>=20
> The OCI Distribution Specification is *not* affected since the
> catalog
> endpoint was moved to a reserved extension:
> https://github.com/opencontainers/distribution-spec/blob/c3e48b9d94b104d5=
e3db2f984bb83a55fb7ac023/extensions/README.md?plain=3D1#L20
>=20
>=20
> Fix/Patches
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Fixes for main and v2.8 are attached to this email.
>=20
> Patches are available to upstream in the private github advisory (see
> timeline section below) but not published yet.
>=20
>=20
> General Recommendation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> The /v2/_catalog endpoint was designed specifically to do registry
> syncs with search or other API systems. Such an endpoint would create
> a
> lot of load on the backend system, due to overfetch required to serve
> a
> request in certain implementations.
>=20
> Because of this, we strongly recommend to always this API endpoint
> behind heightened privilege and avoid leaving it exposed to the
> internet.
>=20
>=20
> Background
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> /v2/_catalog endpoint accepts a parameter to control the maximum
> amount
> of records returned (query string: n).
>=20
> When not given the default n=3D100 is used. The server trusts that n
> has
> an acceptable value, however when using a
> maliciously large value, it allocates an array/slice of n of strings
> before filling the slice with data.
>=20
>=20
> Steps to reproduce (provided by Jose Gomez (SUSE))
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> Have a running registry with at least one image on it. and pass a=20
> sufficiently long
> `n` to the `/v2/_catalog`.
>=20
> ---
> $=C2=A0 =3D host machine shell A
> %=C2=A0 =3D host machine shell B
> #=C2=A0 =3D container
> -- =3D comment
>=20
> Tested against main branch (commit-sha:=20
> 362910506bc213e9bfc3e3e8999e0cfc757d34ba):
>=20
> -- build distribution
> $ git clone git@github.com:distribution/distribution distribution
> $ cd $_
> $ make bin/registry
> $ cat >bin/registry-configuration.yml <<EOF
> version: 0.1
> log:
> =C2=A0level: info
> storage:
> =C2=A0filesystem:
> =C2=A0rootdirectory: /var/lib/docker-registry
> http:
> =C2=A0addr: 0.0.0.0:5000
> EOF
> $ docker run --memory "512M" -v $(pwd)/bin:/upstream --rm -it -p=20
> 5000:5000 registry.suse.com/suse/sle15:15.4 /upstream/registry serve=20
> /upstream/registry-configuration.yml
>=20
> -- on another shell:
> % docker pull registry.suse.com/bci/bci-busybox
> % docker tag $_ localhost:5000/busybox
> % docker push $_
> % curl localhost:5000/v2/_catalog?n=3D4294967297
> -- See the registry process dead.
> ---
>=20
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D
> - 2023-01-27: Issue was reported by Jose Gomez (SUSE) to upstream via
> email to the cncf-distribution-security list
> - 2023-02-06: Response from upstream, they created a private github
> advisory repository to work collaboratively on a fix
> - 2023-02-07: Coordinated release date set to 2023-04-27 13:00 UTC
> (90
> days)
> - 2023-02-10: Initial fix provided by Jose Gomez in the private
> github
> advisory for main branch, discussions and improvements
> - 2023-03-21: Backport provided by Jose Gomez in the private v2.8
> branch, discussions and improvements
> - 2023-04-07: I asked upstream in the github advisory for a CVE, no
> response
> - 2023-04-24: I posted to distros to ask for a CVE, new CRD agreed
> with
> upstream to 2023-05-08 13:00 UTC (max 14 days as per distros list
> policy); also pre-notified quay and the OCI security contact
> - 2023-04-25: The OCI security contact provided insight into the OCI
> spec, upstream added recommendation to advisory to block the
> endpoint;
> OCI spec itself is not affected
> - 2023-05-08: Upstream asked to move coordinated release date +1 day
> due to bank holiday, we agreed to new CRD: 2023-05-09 15:00 UTC
> - 2023-05-09 15:00 UTC: Publish to oss-security since the maximum
> agreed embargo period has passed
>=20
>=20
> Credits
> =3D=3D=3D=3D=3D=3D=3D
>=20
> Found and fixes provided by: Jose Gomez (SUSE)
>=20
>=20

--=20
Cathy Hu <cahu@suse.de>
Security Engineer
GPG: 5873 CFD1 8C0E A6D4 9CBB F6C4 062A 1016 1505 A08A

SUSE Software Solutions Germany GmbH
Frankenstrasse 146
90461 N=C3=BCrnberg

Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Martje
Boudien Moerman (HRB 36809, AG N=C3=BCrnberg)



--=-fCVSpbqduSARaTTLoeN2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEWHPP0YwOptScu/bEBioQFhUFoIoFAmRbRQYACgkQBioQFhUF
oIpbLw/9Ep13K4qnEI1z4ThREeeUm+Ei4OsptnwjWHmbkKE0n+k0UjgXWfksm7Rb
N0evDtiM7Rbe+jgDRDeAuEvmOeGF7H0141burNCZhIwbIlxs5paNTo2Zsq438yR9
6adgtWeSfk8QLK1UVxkrambLTySrnykCOtkSsFpbuLxUtRKrkHJGz5avyRkujcsx
arq5EsrzebE9LusNOK9m/v7AmD+Aqtej4bBYz8FFd+4xghZSivVRq9uXUNrkQe9B
yHgIgeVTO5ZvJc+XV1DSk6FLISkArcVZG75zlrTlFhjLuPTeJkyJBnTI5loX0y8j
3JeQBJN7UnxYo1OUSdQ2645fSD3p3jcX+BhBff2UJ9rWPjB594TVIBK3viAXYSZg
+PAvxeCSNbfVD+fnBRfloq1grATHaaarrATurZ/YEeDn2j8VvXRasvJGOsY1dfRQ
GWhtqfDQk5SZob5sNEmCDPsABXx6ZI+VBmDMkxWmXXZm0qQoHVGMdxG7Rq+hf2Aq
ijsFvcNvYRSyJjlMKJuZSyDdnThKb9d1J0adRIcbaV3z4WMIM0BL057YeZhZS9ju
IPsB7yeIad+Bf0pVVGuglg8l4NUCiePR3JCOxL0sZCTKFQ94YdaP1PJFvLeee4eV
HLDhix5LCuHKKf/ExRvqDR5Sbn7MC3xFNqVhjnBXfQsJ6Ad+06Y=
=Jk83
-----END PGP SIGNATURE-----

--=-fCVSpbqduSARaTTLoeN2--
