Received: (qmail 18347 invoked by uid 550); 20 Apr 2026 16:19:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26161 invoked from network); 20 Apr 2026 16:08:15 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on velox
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	autolearn_force=no version=3.4.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linderud.pw;
	s=linderud; t=1776701285;
	bh=FhynE+OoX4K1qmvvMCD4WMy3fWsm8YIYcSVW6nWkKac=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=CBwlYyIOwLhx67JnYtHhI5RZnTndFQH1I+n3kBayC06+kW1ukO7x2s1wKwCZr+f+B
	 94zw37H8RA0TPxtEeZQ88ST39OWrtdRl61oMfdG37EEuJce+aTOEGfv+nfe/Ag32Gn
	 vwHXWo2qKqFzaDwP5/hpCenbA2iGEkB4v9VA0hXkNhwUFxxv5GM4FJySrGHmIRQGns
	 tJpTDKWziZFVlO4Y8/WUzuz+IQ29ObJyQ1MNV7rRHpbMw/COFR2w9q6yBlNDW0mueT
	 y3nB+8laP5UzPeD/WLXnFVN0ZjzqF+pxjSmMHE0x1WMYUJClKlEhMfw6yWU31essU0
	 fKWmssTmHIeeudm2OP830oOo4UBqeRix8CAYgumXV8AcfMDp4xlQSifLLz0xjshWg2
	 z8PlYmmyR1WFcoAR7ZOQbYrqRpa2hqAxmWXuXwdDzmpVLSNWHgzpaYzRiarKNUaasH
	 m/q8hfY2kTzHPUOdzXjteFJeTFOEJWthaZ40+5oivaSX/60wn2AobTiCwpp90hGC8l
	 Hf3mdpGInIR7fmXoecM8niwWizMnCokVxJ1he/Q6kd09gHgE1NFJnLIlPKwEwqmb8t
	 gIhYEQVaNehJzphxwzbYZRdr/huuPZZIPOpBHVy7c43Bu1s5nym2vCzoJKHpQSd4M+
	 TIKdvgsDQQSh2F/QJYnV6yUU=
Date: Mon, 20 Apr 2026 18:07:59 +0200
From: Morten Linderud <morten@linderud.pw>
To: oss-security@lists.openwall.com
Message-ID: <aeZOttxgx4WSc-Kj@framework>
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com>
 <aeILrE9J6sYYPmEh@xoff>
 <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
 <87mrz1tbu3.fsf@gentoo.org>
 <aeU_M_lpglZoXOqI@xoff>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zo4jxgfj52gptkvo"
Content-Disposition: inline
In-Reply-To: <aeU_M_lpglZoXOqI@xoff>
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

--zo4jxgfj52gptkvo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes
MIME-Version: 1.0

On Sun, Apr 19, 2026 at 10:46:43PM +0200, Matthias Ferdinand wrote:
>
> Arch linux appears not to have recompiled Go applications (or at least
> not all of them, only checked restic)

We don't.

I originall did this work a few years ago but it just produced a huge list =
of
packages that would need to be worked through that carried other issues. The
build infra is not there to dispatch larger rebuilds for this and all of it
would be hand holding.

There are 431 depending on go, and each project would need to be
unpacked/scanned and then rebuilt accordingly.

You could just rebuild everything, but that alone would take a few days
depending on volunteer time.

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--zo4jxgfj52gptkvo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwQA0ZnZjToDJQPuenAL/QZ/svhYFAmnmT1AACgkQnAL/QZ/s
vhZHIQ/+MWxkj16PAaqAmyDHxV0rCsucWblDZtBPzteXf26O29brLb1Rs6DMpYLe
UD/hrs7VoMCucKPtNZdR6hAekv2vbmqAyfKFjrH2gKD5lzmcYXyELcWb4BD3PkLq
BolvYxgpfJryghPjbmGBw611ZEQOi6A0v4u2hMBjkVucbUZdrBlyghFpHuuAlpT7
Pon6zkG19gexoQ6UvowvNhXna3sGtqP6esU63iniWvhhh7Jh5EMK7q7wG8glNt/O
9w07S7eP0D4ogkf+t8CWS1sVsGC0I2pdJvPkA/yA8sIwbWzWHzLUYzXCwQBlRupy
BiTJvfWQZHGLdhQ8Rg7ikZvALy69U1mpuuUnChWvXfmIObJ4oIy8Wf7GJSsNrrkT
2+03LfWnJ0BtS6fJM7JqhfXCM5TmNvRD0psI3Ewpqj5WzY48FTJypqCLsEFe5uTa
ND3hmd5KV87RIgeFh3363bI5IQ5gW7C3tsq2ywYHDV7pwP0mPzOrEd+gp1N2hHJa
cmAPRPR2u/0I+pUVjwMXc89qvTyz9K4Ku2JDZpCoeDECTAeMs2YEt+IyKCankSkX
aYiK/oG17RKlkZibv4cQS3R3XuSjFDJEiGKPsjRo/bZSrp3z9kXJ0/dOs89ZFrNJ
kTposn5CsIcRiv5OqLHsCwH7YCKGMzqzsklqPwJybkdKwNs+RQk=
=LgDk
-----END PGP SIGNATURE-----

--zo4jxgfj52gptkvo--
