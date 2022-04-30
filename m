Received: (qmail 24173 invoked by uid 550); 30 Apr 2022 15:56:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16218 invoked from network); 30 Apr 2022 15:38:42 -0000
Date: Sat, 30 Apr 2022 10:38:27 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Ym1X82gykRQqVzd7@gentoo.org>
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge>
 <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
 <2D37FD38-B910-4D66-A5B3-0E58DA3B87C1@akamai.com>
 <ffd2934f-4e65-88ca-e3db-5204c2eb1127@greenbone.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d3K5Efw3UoSrPMu3"
Content-Disposition: inline
In-Reply-To: <ffd2934f-4e65-88ca-e3db-5204c2eb1127@greenbone.net>
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--d3K5Efw3UoSrPMu3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 30, 2022 at 01:24:36PM +0200, Christian Fischer wrote:
>  > It=E2=80=99s not that they didn=E2=80=99t/can=E2=80=99t verify, it=E2=
=80=99s already verified,=20
> they=E2=80=99re claiming those versions no longer being officially suppor=
ted=20
> means they can seemingly omit them from CVE reporting.
>  >
>  > Which is dangerous, misleading, and nonsensical.
>=20
> While i fully agree with this be aware that CVE entries could generally=20
> contain incomplete information:
>=20
> After requesting an update of a CVE entry via the MITRE CVE forum in the=
=20
> past to add additional affected products for a different vendor (which=20
> wasn't even the assigning CNA like it is the case for Oracle here) my=20
> request was rejected by MITRE with the following rationale given:

The CNA that assigned that CVE is Oracle, so Oracle is the CNA to talk
to to make changes to it. MITRE won't make changes to it as they're
not the CNA behind that CVE.

>  > A CVE description does not necessarily contain all the affected=20
> products or versions and is not part of CVE ID requirements. The=20
> products are documented in the CVE references.
> This is also matching my experiences with various other products /=20
> vendors and related CVE entries for these.

Right, this is documented in the CNA rules [1]:

"8.2.1 MUST provide enough information for a reader to have a
reasonable understanding of what products are affected. If the
affected products are not explicitly listed in the description, then
the CNA MUST provide a reference that points to the known affected
products."

[1] https://www.cve.org/ResourcesSupport/AllResources/CNARules#section_8-2_=
cve_record_prose_description_requirements

--d3K5Efw3UoSrPMu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmJtV/AACgkQXP0dAeB+
IzjNkg/9GmgY5GoJM1VGhr7QeN39KIiCyFntmd6VlZcQKKvAj8/sz+uwqFgJhFGD
bLNmdJR/qHQ6SBJTw4QMe2V7uexV4yOBqKk/rnqY0s67ahakffC7e9twqqWvr5ll
VIAriUtlwW1JcFyuwihk94IRprDva4Ucgc70LvKdMBIRVaSa7171NPqMHlZD65ad
n12elPZg4gX8M495dUe3KTH4mtUMfv5r9002M3XrEkdF7D6EJUeHcAsXrLi63KV5
lkZlSVB5d41wyUf8ixZvcOKodWmtq2zNy3UAz+Qt+S6PUEUchOyPxWKCTIFzXdyq
iVBO39/MyQAdbcMvSWUstymrvIttFZyzDQzKD0BKm/iCE4UaQPXKvq80gq00lUy0
gZHRG4PhF2oOWb8fgYFqXNv+Ok0M+eYJBW87TLdTTY9oOvxDNZumUk/6zF3U9Jot
j30L3g4/qVTpv1Q0tkiPxNyKjZD4fmnTB0+/uBcxoF4WYGC9WbpbScoyF+cqyMSs
mi+ognPIGK54X3QZC+P44mbZtau80rRX4810OYIKFv8OdSvf0O8DaDa0hm+th5bu
29lWSa/PquYBHh1BsKC87cmBEnPVflAJLUGqht74NZmYl4iZGRyoXRhXBrOVc5Yc
OWELkVcrtRM/dR6dcbR3Jk6geOkCRflMQMX3bSue7g9Jf8yuEg0=
=cVF1
-----END PGP SIGNATURE-----

--d3K5Efw3UoSrPMu3--
