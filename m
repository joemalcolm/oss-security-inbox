Received: (qmail 3691 invoked by uid 550); 17 Apr 2026 23:29:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13385 invoked from network); 17 Apr 2026 23:18:57 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
Organization: Gentoo
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
	<20260410025803.GA20948@openwall.com> <aeILrE9J6sYYPmEh@xoff>
	<545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org>
User-Agent: mu4e 1.14.0; emacs 31.0.50
Date: Sat, 18 Apr 2026 00:18:44 +0100
Message-ID: <87mrz1tbu3.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Eli Schwartz <eschwartz@gentoo.org> writes:

> On 4/17/26 6:30 AM, Matthias Ferdinand wrote:
>> On Fri, Apr 10, 2026 at 04:58:03AM +0200, Solar Designer wrote:
>>> On Wed, Apr 08, 2026 at 04:24:34PM -0700, Alan Coopersmith wrote:
>>>> https://groups.google.com/g/golang-announce/c/0uYbvbPZRWU announces:
>>>>> We have just released Go versions 1.26.2 and 1.25.9, minor point rele=
ases.
>>>>>
>>>>> These releases include 10 security fixes following the security polic=
y:
>>>
>>> This includes 2 issues in the compiler itself, which made some Go
>>> programs not memory safe:
>>   ...
>>=20
>>=20
>> I did not see any Linux distribution advisories for compiled Go programs
>> yet, but some projects using Go have released upates:
>>=20
>>   - https://rclone.org/changelog/#v1-73-4-2026-04-08
>>         Update to go 1.25.9 to fix multiple CVEs
>>=20
>>   - https://github.com/grafana/grafana/releases/tag/v12.4.3
>>         2026-04-14: Go: Update to 1.25.9
>>=20
>> I looked at https://github.com/gopasspw/gopass and
>> https://github.com/restic/restic, but they have not yet issued updated
>> releases.
>>=20
>> Perhaps the message did not spread wide enough. Or are many Go programs
>> just not affected?
>
>
> Updated *releases* don't really make sense, generically. The bug is in
> the compiler, not the package, so one would rebuild the existing release
> with a new compiler. Consider how you handle this if a package had a
> security vulnerability in the GCC version it was compiled in. Or, it
> depended on libarchive and libarchive had a security release. Do you tag
> a brand new version of rclone because the dependencies it was compiled
> against got updated? No. Well, given gomodules or rust crate locking,
> maybe, because those are "vendored libraries", but that is a bug in both
> of those languages. :)
>
>
> If I look at rclone, I see they only updated go 1.25.9 in the CI
> workflow that builds precompiled binaries and attaches them as github
> releases assets. The actual rclone release was noteworthy more for
> fixing a denial of service that required pulling in a newer version of a
> vendored library.
>

For serious issues, it may make sense for projects distributing binaries
(provided they know it was built by a buggy compiler) in the same way
they might do for a vulnerable OpenSSL DLL in their Windows offering.

But yes, I agree, it'd be pretty annoying if every Go piece of software
issued a new release that was a no-op and was just there to nudge you to
rebuild it.

> On the compiler side of things, Gentoo Linux policy is to offer a
> standard approach to rebuilding all packages that use golang:
>
> $ emerge @golang-rebuild
>
> which should be run after all golang updates that one suspects deserve a
> global rebuild. Likely all golang updates because Reasons(tm). This is
> just the name of the game when installing golang software -- the usual
> rule of thumb is to assume all golang releases contain CVEs that need
> fixing. It is regular like clockwork, so do people really need an
> invitation to do so?
>

Right, the stdlib case is pretty common.

> Other distros should be bumping the build number and recompiling the
> package in place, using the same infrastructure otherwise used for
> things like rebuilding ten thousand packages against a new major edition
> of perl or python or ruby.
>
> IIRC it is possible to determine which packages actually need rebuilding
> for any given CVE, but to do so you need to locally extract the entire
> recursive deps-included source code of every package, and run some
> arcane undocumented `go ....` invocation. Functionally, what you're
> doing is checking which programs link to an internal static library
> distributed with the go compiler. (This is not exactly correct, but it
> is a useful mental model.)

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmniv9QbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkBoo
AQDN6DFifuUJrlJg+dvhCPVOumgnzaU8BS2CUoQW19b0rgEA9dz+T5Bsh3XODgmr
9RVo814HjrvWpylb0PzYnNvgaAk=
=C0P9
-----END PGP SIGNATURE-----
--=-=-=--
