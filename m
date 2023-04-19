Received: (qmail 5497 invoked by uid 550); 19 Apr 2023 01:29:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5473 invoked from network); 19 Apr 2023 01:29:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681867772;
	bh=Y0fc0h39K4Reybbqtu2hsrRco9NKOEzswQeJjPpsPBc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=iOKmc96Ot2+kUuaOKmUzwENUNoq+5kwiss9ndxhH3UgdibhkZqY5G7+zesSecdwzc
	 j8Yi2FldV6wu572Um4z2Ql4S47lB0WpBSeVSnj6UnvYh65yij+Pv04QYpy+wB7TSl1
	 6kU21myzGmUxSfvokKKxcJUB9RxY3UM/hXHyA8D+Rev6L9gvlbkdI8RyPXJ/J4BC6R
	 KCFdggKueExLecbhZ0HbeghM+aApcffKCbRtFUrVHeFxhS+oFhHuKBbVBLxLKFOXzT
	 oKTul+K6klqmRiaHpHpSd8YGYFCKdm60Wescnf9+kyhQHY6mTifKk0ahO0Wqd4AWnP
	 2l/qnf6TSt0+w==
Date: Wed, 19 Apr 2023 01:29:30 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com, Arnout Engelen <engelen@apache.org>,
	"security@apache.org" <security@apache.org>,
	"security@ofbiz.apache.org" <security@ofbiz.apache.org>
Message-ID: <20230419012930.GO1655348@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com,
	Arnout Engelen <engelen@apache.org>,
	"security@apache.org" <security@apache.org>,
	"security@ofbiz.apache.org" <security@ofbiz.apache.org>
References: <8a4746bb-6c19-dd80-10ca-9aa2b87d605b@apache.org>
 <20230418012752.GI1655348@millbarge>
 <536fea8d-f1e3-0914-49e7-a0961abce35c@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tzZdJ4yHDV5r1Akt"
Content-Disposition: inline
In-Reply-To: <536fea8d-f1e3-0914-49e7-a0961abce35c@apache.org>
Subject: Re: [oss-security] CVE-2022-47501: Apache OFBiz: Arbitrary file
 reading vulnerability

--tzZdJ4yHDV5r1Akt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 18, 2023 at 11:15:52AM +0200, Jacques Le Roux wrote:
> I used to give more information. For this one, using our "new" internal
> process* (need an ASF credential) and=A0 following step 11 of**, notably
>=20
>    <<Generally, reports should contain enough information to enable
>    people to assess the risk the vulnerability poses for their own
>    system, and no more.>>
>=20
> I restricted the information to a minimum.

Hello Jacques, thanks for the reply. I'd like to suggest that this policy
should receive a review, as other list members have found the Apache
defaults a bit wanting:

https://www.openwall.com/lists/oss-security/2023/01/31/7
https://www.openwall.com/lists/oss-security/2022/10/12/2
https://www.openwall.com/lists/oss-security/2022/08/26/4
https://www.openwall.com/lists/oss-security/2022/01/25/15

> When sending to Mitre we replaced
> https://lists.apache.org/list.html?announce@apache.org
> by
> https://lists.apache.org/thread/k8s76l0whydy45bfm4b69vq0mf94p3wc
>=20
> You can see the result at https://www.cve.org/CVERecord?id=3DCVE-2022-475=
01

This is nice, and friendly.

> We also changed the "problem type" to be more specific. Following the CWE
> classification, we used "CWE-22 Improper Limitation of a Pathname to a
> Restricted Directory ('Path Traversal')" rather than "Arbitrary file read=
ing
> vulnerability" used by the finder who stayed as the CVE title. You can see
> it at https://cveawg.mitre.org/api/cve/CVE-2022-47501 which is the json
> version of the report.

This is also nice and friendly.

> Regarding your points:
>=20
>  * the vulnerability was introduced long ago (years) when the plugin was
>  created. It was around 2013.

This information is gold!

>  * https://ofbiz.apache.org/security.html gives indirect information
>  about the fix. Do you suggest that we need to put a direct link like
>  https://github.com/apache/ofbiz-plugins/commit/582add7d3 ?

The link to the security page is a good start; it's even one of the better
security.html pages I've seen. (Thanks!) But we've all spent too much time
trying to figure out what exactly might have been "the intended content"
on a page five or ten years later. Having more specific information (such
as the "582add7d3" here) directly available in the list archives will
simplify future searches for information.

> Thanks for the links. We will certainly consider what can be done to
> ease the work of downstream distributors and consumers.

Thank you :)

--tzZdJ4yHDV5r1Akt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ/Q/YACgkQ8yFyWZ2N
LpelrAf+Lpdwm1vrfCKB6PXg2MIxbxh3tKKD9KrA7repMP+686DiEFhBPoeldx1h
x1pe9hEEZnMmP5hz+xGmKIehD3TCuQ2A7j+7xfVdQkdg8JKsD7qAeM7ub7W07Sb1
y2CtYqMQUImmRtDI4Ts/PQeT1C/GqwsISJtEjMWbEBThyI5PO/HKdwPAKCx9JWfo
8qYkPbaOyaXTDXFLE5S58HhUZxlNxYPYVhfXlvulZBlW/l/bebQWGbT0fOBpQn5r
us8wdsxkFHiWSAaC0CmvNzJd40ejsWxEe7CKM6lsTT9diki0yX9ep3pZzjwvyYa0
iZ8je00ZVVTQBzWweMFOkovUAtEfpw==
=VZSl
-----END PGP SIGNATURE-----

--tzZdJ4yHDV5r1Akt--
