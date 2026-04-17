Received: (qmail 9263 invoked by uid 550); 17 Apr 2026 22:53:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6009 invoked from network); 17 Apr 2026 19:04:17 -0000
Message-ID: <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
Date: Fri, 17 Apr 2026 15:04:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com> <aeILrE9J6sYYPmEh@xoff>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <aeILrE9J6sYYPmEh@xoff>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------27lg0796rLgvLWS6kgpkYiaH"
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

--------------27lg0796rLgvLWS6kgpkYiaH
Content-Type: multipart/mixed; boundary="------------AE4s2i3Z6Lv5R0cvQuT2oPl0";
 protected-headers="v1"
Message-ID: <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
Date: Fri, 17 Apr 2026 15:04:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes
To: oss-security@lists.openwall.com
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com> <aeILrE9J6sYYPmEh@xoff>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <aeILrE9J6sYYPmEh@xoff>

--------------AE4s2i3Z6Lv5R0cvQuT2oPl0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/17/26 6:30 AM, Matthias Ferdinand wrote:
> On Fri, Apr 10, 2026 at 04:58:03AM +0200, Solar Designer wrote:
>> On Wed, Apr 08, 2026 at 04:24:34PM -0700, Alan Coopersmith wrote:
>>> https://groups.google.com/g/golang-announce/c/0uYbvbPZRWU announces:
>>>> We have just released Go versions 1.26.2 and 1.25.9, minor point relea=
ses.
>>>>
>>>> These releases include 10 security fixes following the security policy:
>>
>> This includes 2 issues in the compiler itself, which made some Go
>> programs not memory safe:
>   ...
>=20
>=20
> I did not see any Linux distribution advisories for compiled Go programs
> yet, but some projects using Go have released upates:
>=20
>   - https://rclone.org/changelog/#v1-73-4-2026-04-08
>         Update to go 1.25.9 to fix multiple CVEs
>=20
>   - https://github.com/grafana/grafana/releases/tag/v12.4.3
>         2026-04-14: Go: Update to 1.25.9
>=20
> I looked at https://github.com/gopasspw/gopass and
> https://github.com/restic/restic, but they have not yet issued updated
> releases.
>=20
> Perhaps the message did not spread wide enough. Or are many Go programs
> just not affected?


Updated *releases* don't really make sense, generically. The bug is in
the compiler, not the package, so one would rebuild the existing release
with a new compiler. Consider how you handle this if a package had a
security vulnerability in the GCC version it was compiled in. Or, it
depended on libarchive and libarchive had a security release. Do you tag
a brand new version of rclone because the dependencies it was compiled
against got updated? No. Well, given gomodules or rust crate locking,
maybe, because those are "vendored libraries", but that is a bug in both
of those languages. :)

If I look at rclone, I see they only updated go 1.25.9 in the CI
workflow that builds precompiled binaries and attaches them as github
releases assets. The actual rclone release was noteworthy more for
fixing a denial of service that required pulling in a newer version of a
vendored library.

On the compiler side of things, Gentoo Linux policy is to offer a
standard approach to rebuilding all packages that use golang:

$ emerge @golang-rebuild

which should be run after all golang updates that one suspects deserve a
global rebuild. Likely all golang updates because Reasons(tm). This is
just the name of the game when installing golang software -- the usual
rule of thumb is to assume all golang releases contain CVEs that need
fixing. It is regular like clockwork, so do people really need an
invitation to do so?

Other distros should be bumping the build number and recompiling the
package in place, using the same infrastructure otherwise used for
things like rebuilding ten thousand packages against a new major edition
of perl or python or ruby.

IIRC it is possible to determine which packages actually need rebuilding
for any given CVE, but to do so you need to locally extract the entire
recursive deps-included source code of every package, and run some
arcane undocumented `go ....` invocation. Functionally, what you're
doing is checking which programs link to an internal static library
distributed with the go compiler. (This is not exactly correct, but it
is a useful mental model.)


--=20
Eli Schwartz

--------------AE4s2i3Z6Lv5R0cvQuT2oPl0--

--------------27lg0796rLgvLWS6kgpkYiaH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaeKEJAUDAAAAAAAKCRCEp9ErcA0vV5V8
AP0dtZbeeiKXuSrmyfZEYA3nmsXMzt7U+yWaaMTt00lUhwEAwvdtzKS7eadaPAmkn76cJ7xAbHUM
x+u1hqGB2IRTXgQ=
=ADXT
-----END PGP SIGNATURE-----

--------------27lg0796rLgvLWS6kgpkYiaH--
