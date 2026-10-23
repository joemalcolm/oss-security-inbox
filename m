X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/1
Message-ID: <dbf33d8d-82c6-4e7f-abcd-06d474ecdc4b@gentoo.org>
Date: Thu, 22 Oct 2026 21:53:52 -0400
From: Eli Schwartz <eschwartz@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: Information for Python users regarding eMudhra / emSign CA certificate security incident
Content-Type: text/plain; charset=utf-8

On 10/22/26 5:07 PM, Valtteri Vuorikoski wrote:
> Having spent the day whacking this particular molehill, my strong opinion is
> that these packages (minus certifi) should stop vendoring roots immediately.
> 
> Users should install their distro's ca-certificates package or similar. If that
> is completely impossible for whatever reason, offer an option to use certifi
> (which should be a dependency, not vendored) - but the system trust store should
> be the default source of truth.
> 
> This sort of easter egg hiding to serve users with broken installations reduces
> the security of everyone else.
> 
> (Missing from the quoted list: botocore also includes a vendored copy. I haven't
> checked how it's used.)


This is why using packages from a Linux distro is good: linux distro
provided "certifi" packages typically are patched or outright build from
https://github.com/projg2/certifi-system-store, to use, well, the system
store.

And pip is unbundled to use the system certifi. Well ok, technically it
is unbundled to use the system requests, and the system requests uses
the system certifi.

sigstore's "update" was updating a lockfile to lock newer certifi, they
didn't even actually add a >= dependency on "new enough to have the
eMudhra fix" so the whole thing is actually ludicrous. If you had
sigstore installed before a couple days ago, upgrading sigstore won't
upgrade your certs, and if you actually updated all packages then
certifi would be updated regardless of whether sigstore tagged a new
version.

conda actually responded by adding a dependency constraint to >= the
suitable version of certifi.

uv / pixi are rust software, which means a) infinite vendoring, b)
`cargo build` will usually error out if you *try* to patch anything to
unvendor it, so, "good luck" (and also stick to pip IMO).

...

This is why vendoring is always fundamentally treated with such
suspicion. We have had ample proof over the decades that issues like
this will just continue to crop up again and again, in so many various
ways, despite what the

"AcKshUAlLY sTaTIc LinkING iS MORE efFiCIEnt"

crowd says.

Python vendored packages is just static linking with the additional
possibility of trivial monkeypatching.


-- 
Eli Schwartz


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
