X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4292" "Thursday" "27" "September" "2018" "17:59:34" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180927155934.GB8696@f195.suse.de>" "97" "[oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "9" "2018092715:59:34" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "        mgerstner@su Sep 27   97/4292  " thread-indent "\"[oss-security] Using quilt on untrusted RPM spec files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23591 invoked by uid 550); 27 Sep 2018 15:59:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23559 invoked from network); 27 Sep 2018 15:59:46 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180927155934.GB8696@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IiVenqGWf+H9Y6IX"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 27 Sep 2018 17:59:34 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

--IiVenqGWf+H9Y6IX
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

in the SUSE security team we have been recently looking into the security of
using quilt on untrusted RPM spec files and patches. The openSUSE distribut=
ion
is RPM based and uses the open build service (OBS) [1] for collaboration wi=
th
the community. Packagers, contributors and interested people can host their
packages in personal home projects and can become maintainers of development
packages that are targeted for inclusion in SUSE distributions.

Once packages are submitted into an actual SUSE distribution like openSUSE
Tumbleweed human and automated reviews of the package contents will take
place for quality assurance and security. One of the typical workflows for
many people concerned with managing the openSUSE distribution is to checkout
a (possible not yet reviewed) OBS package and run `quilt setup` on the RPM
spec file for extracting the package sources and applying any specified
patches. When building an RPM package on server or client side then this
happens in an isolated environment (e.g. a chroot [2] or in a virtual
machine). The `quilt setup` invocation, however, typically happens
interactively on client machines without special security measures.

It turns out that running `quilt setup` on untrusted sources is not a good
idea:

- The statements in the `%prep` section of the RPM spec file are
  plainly executed in the context of the calling user.
- Arbitrary flags can be passed to `patch` via `%define _default_patch_flags
  ...` in the spec file. By embedding semicolons into the flags also arbitr=
ary
  commands can be injected this way.
- By combining the available vectors, difficult to spot malicious code can =
be
  hidden in RPM spec files. For example patch can be caused to follow
  symlinks, thereby "patching" files in a user's home directory as demonstr=
ated
  in [3].

Now we would be interested in discussing this topic with the community. Do
other distributions have similar workflows and therefore similar attack
surface as we do? What would be viable countermeasures?

Our current assessment is that most people that use quilt this way are
probably not aware of the potential dangers involved. Furthermore we think
that in order to fix this a simple to use default protection mechanism
would be required. While running `quilt setup` e.g. in a docker
container would provide fair security against such scenarios it would
introduce quite some dependencies and complexities that make it not well
suited for a default approach.

We are currently testing isolation of quilt with nsjail [4]. A first result,
the wrapper "squilt" [5], can confine quilt's execution to a package
directory, thereby reducing the attack surface significantly.

[1]: https://openbuildservice.org
[2]: https://build.opensuse.org/package/show/openSUSE:Tools/build
[3]: https://build.opensuse.org/package/show/home:mgerstner/surprise
[4]: http://nsjail.com
[5]: https://github.com/jsegitz/squilt

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--IiVenqGWf+H9Y6IX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlus/mYACgkQFMQFyXGS
NVOStg/+MZnmrFJLDqRoOjgxrTP/+huTGqFh+iPFhnwOd5AJRhYpu9bMdPQUytwD
7E6IQXR6QBcWd3TCjpP7uMdLAe8YKeZqiwV5cyLp7DdgmtcB3NdgWIbC31gmobNd
eur9Rjg7sC2cDOjfgv2HDlLaCUA+3Yr3HmlOMJSFf7fGOSxmg4AxSM+6NRQEMZa7
Z/JiaAAxwqX6ZGAAYkA4smVL4o4vMpk0g1bbWszyJBafqhI7CXIFPfcxdUMXb5q0
tZzp48vKJXAMuldlKsZDJJYSIFXUDvYLZeDON/Fodzai576B25LgYz59x70TIDIF
Z/AJks4+PL75OBjSu7cLPFmudPbDExeZLDyJz3Rc6GoQkb6BvBPKuFNfhpeTzyrI
A7AHwUokCatK6Qyyp6ZsoMSR4dMxsUDUH/w0jprkBc8m3GOwsDxTitdUna4/RxDE
9x9YgI1jjNliBMBiYQPtxN1VAha+2C+xoXrckhISZOMnXhlLRhY6tTyxWo1NpTDH
lClpxZ+rzLRNL7oub2HGF9W0HHWe3C6WfeILPSX9nNfmw2x3Vu0YrLZN78YZ+zpf
nHgfdLwfoN2IWzRPJziF9NLUpewz7zJJfzQ6VbcnOceT6zWanmWX5kU8c1+BEqOE
LT0HK+mTRNd1SGqB9DIF/qL2OXxkWuBaiaNjYzdAOioWNm5vLmk=
=TojU
-----END PGP SIGNATURE-----

--IiVenqGWf+H9Y6IX--
