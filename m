X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2740" "Wednesday" "13" "February" "2019" "02:31:12" "+1100" "Aleksa Sarai" "cyphar@cyphar.com" "<20190212153112.xntebicjokknhqcy@yavin>" "70" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021215:31:12" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        cyphar@cypha Feb 13   70/2740  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<2160454.BXy79Bclyo@x2>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>" "<2160454.BXy79Bclyo@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19671 invoked by uid 550); 12 Feb 2019 15:39:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7500 invoked from network); 12 Feb 2019 15:31:41 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190212153112.xntebicjokknhqcy@yavin>
References: <20190211130520.xwi6vpay3sc56pza@yavin>
 <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
 <2160454.BXy79Bclyo@x2>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6suyx37rnkvohm4j"
Content-Disposition: inline
In-Reply-To: <2160454.BXy79Bclyo@x2>
Cc: oss-security@lists.openwall.com, Florian Weimer <fweimer@redhat.com>,
	dev@opencontainers.org,
	Christian Brauner <christian.brauner@ubuntu.com>
Date: Wed, 13 Feb 2019 02:31:12 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all
 versions)
To: Steve Grubb <sgrubb@redhat.com>

--6suyx37rnkvohm4j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-12, Steve Grubb <sgrubb@redhat.com> wrote:
> On Tuesday, February 12, 2019 8:55:18 AM EST Florian Weimer wrote:
> > * Aleksa Sarai:
> > > +	memfd =3D memfd_create(MEMFD_COMMENT, MFD_CLOEXEC|MFD_ALLOW_SEALING=
);
> > > +	if (memfd < 0)
> > > +		goto err_binfd;
> >=20
> > Is it really necessary to use a memfd_create here?  Do you really need
> > sealing?  It's a bit odd to add a new system call dependency in a
> > security update.
>=20
> That's along the lines of what I was thinking also. This looks like more =
of a=20
> workaround than a root cause fix. Without seeing the exploit or a full=20
> discussion of the theory of operation, we really can't pinpoint where the=
=20
> issue is. Was it because of CAP_DAC_OVERRIDE? Is there a missing permissi=
on=20
> check crossing a trust boundary? Was excessive permissions requested in a=
=20
> syscall? Given the patch, we can sort of see what the issue is but not th=
e=20
> exact issue.

It's not because of CAP_DAC_OVERRIDE. It's just regular DAC. As for it
not being a root cause fix, I disagree (it protects against a variety of
concerning attacks that aren't related to this CVE). Obviously if
everyone used correctly-configured user namespaces then this wouldn't be
a problem -- but here were are.

But if you would like an even better fix there is the O_THISROOT
patchset[1] which I'm going to re-send tomorrow and would help fix this
and could help fix a wide variety of other container runtime issues that
have been bothering me for a couple of years. :P

[1]: https://lwn.net/Articles/767547/

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--6suyx37rnkvohm4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlxi5sAACgkQSnvnv3De
m5+fOBAA1Ko1U5LRBYxCesLDd9Wrufu3XkPSAbwDJ1NOrY56+BqGY8oGPa70wGp3
2gg5I6sA03+ICkysUsddrQx433B8rkbw9GzUeFaXqssoOwXWIdWGPb6tOHr1MG+y
lyJDQ6Kgb2W+unJwfMhFC6kmIkQaWKMq/D5i2rZpOIYwIwdDsibde8ywELRqbUpc
bY39O+LPVGh4xNmpHgm5j5+KLa2oXoaRFMM8O63dM9eIxZCPjd2Qdl9RpjFxeEch
2+ZrW/HvbT9rInv6sz57eSYSL4ypIHSFO2rSxuJtoY104tB53vCBN5W9VJZG163D
Ze379Brkpo2jaDNv4DPqfSSuOyjd/GUWaC8KqSPabj0TSpqopUHhibMEP48iF0jD
tvdAswAq98VJHzBQ3i6yTI/hFPWdFLyXnm4yKQrcDOER36yCMI9nDMAZLkZpDDsN
ofvagnLPT+aX/lX5Ccia06nOGCM1MU2h3HsP/48/kSKNJIJ9/bkcPffnJJXvmLPi
l460J4Sa+xB0yWkGoWxMGvWASRjWUi1FV5WWaZVR89SQ4lI/WmfxMLwyYuqrAd3L
JV5xcrQKZSFfLx3fhluWdyCuydP2EKq1NQg7FzasqIgey+jMHn3teV3+lMqMwDf3
aUTDLQb8NeoBqu4rE8llNSdIZm85ZwLdGkf4gapMgvymHe5WgNU=
=f8Oo
-----END PGP SIGNATURE-----

--6suyx37rnkvohm4j--
