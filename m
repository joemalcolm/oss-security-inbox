X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/4
Message-ID: <e0f7836e-eba5-45f5-b6d2-014444530ff6@gmail.com>
Date: Tue, 21 Apr 2026 21:25:17 -0400
From: Demi Marie Obenour <demiobenour@...il.com>
To: oss-security@...ts.openwall.com, Michael Orlitzky <michael@...itzky.com>
Cc: Morten Linderud <morten@...derud.pw>
Subject: Re: Go 1.26.2 and Go 1.25.9 are released with 10 security fixes
Content-Type: text/plain; charset=utf-8

On 4/21/26 07:36, Michael Orlitzky wrote:
> On 2026-04-20 13:10:13, Demi Marie Obenour wrote:
>>
>> I wonder if build infra needs to be updated to support automated
>> rebuilds when a reverse dependency is updated.  My understanding is
>> that FreeBSD ports, Nix, and OBS already support this.
> 
> On its own this isn't sufficient because many packages pin their
> dependencies to specific versions or git commits. This causes a
> cascade of problems:
> 
>  * Most dependencies can't be packaged separately, because eventually
>    two applications will require two different versions of the same
>    library, not to mention the labor involved.

I believe Fedora manages to package multiple versions of Rust libraries
without any problems.  They don't ship them to users, though.

>  * You can try to loosen the dependency constraints yourself, but with
>    everyone else bundling, no one cares about API/ABI stability and
>    breakage is likely.
> 
>  * OTOH with dependencies left bundled and pinned to specific
>    versions, rebuilding does nothing except change mtimes.

At least Rust libraries generally *do* care about API stability.
You're correct that nobody cares about ABI stability, but cascading
rebuilds are exactly what that is meant to avoid.  'cargo install'
doesn't use the lockfile by default, so problems with newer but
semver-compatible dependency versions are likely to be caught.

I don't know if the Go ecosystem has the same problem.  I know Maven
does have that problem.
-- 
Sincerely,
Demi Marie Obenour (she/her/hers)
Download attachment "OpenPGP_0xB288B55FFF9C22C1.asc" of type "application/pgp-keys" (7141 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
