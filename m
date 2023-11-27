Received: (qmail 17506 invoked by uid 550); 27 Nov 2023 09:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17484 invoked from network); 27 Nov 2023 09:01:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1701075678; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gIvAVYyvCzoRGpoj9A/Xyjrl6+8515RD67LDUUM2Krs=;
	b=MYk8crn2WEbnmDVzyYlc8hQ2jLlUQEJErVjCIFvCD1m87y2YTyiugCnW7CGK17tGoQGK5N
	++OUIPaE5ucgiwHXyGil6jzFCVB7EsjBy1XSExfBtJjhwoenxlMK8sGcvmKXy/rYdxTmHS
	3G0ODfD2qXNWzO0ffqBsvgSBDNvwoZE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1701075678;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gIvAVYyvCzoRGpoj9A/Xyjrl6+8515RD67LDUUM2Krs=;
	b=jsy7G6o8Kqmq31m0+ahdijG2qdE7rgLmvp9KZ0jTnGHrV/RIfiU55Esfa/988wuksnI/qP
	mU6Vfu/iPLkpPOCg==
Date: Mon, 27 Nov 2023 10:01:16 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZWRa3EI5Oa-5621n@kasco.suse.de>
References: <AEBE0F32-EAA7-4BC5-ABDB-2EBA7B3046C9@vmware.com>
 <ZTuJmmJnWifdT1RJ@kasco.suse.de>
 <ZWOeyo-BtEAvbBXV@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FHiN7tzUB+mDlgjp"
Content-Disposition: inline
In-Reply-To: <ZWOeyo-BtEAvbBXV@gentoo.org>
Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [oss-security] CVE-2023-34059 - File Descriptor Hijack
 vulnerability in open-vm-tools

--FHiN7tzUB+mDlgjp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 10:01:16 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-34059 - File Descriptor Hijack
 vulnerability in open-vm-tools

Hi,

On Sun, Nov 26, 2023 at 11:38:50AM -0800, John Helmert III wrote:
> On Fri, Oct 27, 2023 at 11:57:46AM +0200, Matthias Gerstner wrote:
> > Hello list,
> >=20
> > I want to share my full report for this finding, please find it below.
> >=20
> > Introduction
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > During a routine review of the setuid-root binary
> > "vmware-user-suid-wrapper" from the open-vm-tools [1] repository I
> > discovered the vulnerability described in this report. The version under
> > review was open-vm-tools version 12.2.0. The setuid-root binary's source
> > code in the open-vm-tools repository did not change since version 10.3.0
> > (released in 2018), however, so likely most current installations of
> > open-vm-tools are affected by this finding.
>=20
> Hm, it looks like there *was* a commit to vmware-user-suid-wrapper
> that looks very similar to the patch that was linked in the original
> advisory mail:
>=20
> https://github.com/vmware/open-vm-tools/commit/63f7c79c4aecb14d37cc4ce9da=
509419e31d394f
>=20
> Was that fix insufficient, or maybe wasn't there when your mail was sent?

There seems to be a misunderstanding here. It seems I phrased that not
properly. I did not mean to say that the issue is unfixed. As the
initial email from VMware states there is a patch and bugfix release
available.

What I wanted to express is that all versions of open-vm-tools ranging
from 10.3.0 up until before the bugfix release are likely affected by
the issue.

Cheers

Matthias

--FHiN7tzUB+mDlgjp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmVkWtwACgkQFMQFyXGS
NVM2wg//bx9d+uEwLHes1UWdVKJi/tbhLFBS5xJfPOEVacBc6G9t8/BiQZtq21wZ
evVE3K/pRjrvLF+AU7Nhx0bbpJguNOGq5Wqrbe5h5bjIj2tsKQFVXr6jhvfcW4uO
IcgtbdtFgNFfQSP7ShMu3NXu4pNO4LNKORnSkYsiek6yyfl8cua85282G21RlVms
1CDfY060zj8pA3gfjicpCwYDiYqYAqSuc56K7kvU5yWwIa5IWoCurUsw1kGwjyrx
CPH+KaErjAMUsjMdv4mKo06LHQfbs4eAXtq0KnjbYX9wuZdrNF5MUcy0vjv9JOma
jg93VrLUEnkbbNniRwiUdrwvBid5g12sRoJUHBxJdgb6+3n8jFUrcDvtOsRMCY5f
4eUimdfkmHDfgm6D1YrHopg9/Iip6oEA8/D3AkmLu0vpsRnyswKypwDpb2JdipFP
VcXeqQ2XNhp/kfcyY8SNStoqlj5fUvnvDVrIGFDvMqYJKGjyl8M5VALDiPdTlS1b
SVUOlwPZTAz/wkBFHVt6+/wudPQP6DeieW9F3Vl+ZHzr2edcPxccuyAo7vTYDFxb
XhNbc/osSUPQXc5plsQIgxp/34vNovf0ItMMj5wvKRAv/BHjp4wbxMVuphbX0FIl
YYM/8JOLIi3qevALycfpAzuSy0osrCNMFUdv8ZaQIHYfAYZX+f8=
=DSJq
-----END PGP SIGNATURE-----

--FHiN7tzUB+mDlgjp--
