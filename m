X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/5
Message-ID: <aa4b1354-f7a8-41f2-86c3-459b6a2f2a1f@gentoo.org>
Date: Tue, 22 Sep 2026 00:33:15 -0400
From: Eli Schwartz <eschwartz@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

On 9/19/26 4:50 PM, Greg Dahlman wrote:
> I may be missing something but I do see a path that may be clean
> without inventing new package manager features or relying on brittle,
> text-based version strings. The concern regarding loose version
> matching and local source rebuilds breaking the ABI is real, but IMHO
> we don't need to invent a new package manager feature to fix it.
> 
> As long as `CONFIG_MODVERSIONS` is enabled, why not simply hash a
> sorted version of CRCs Module.symvers, (maybe needing to use
> KBUILD_EXTRA_SYMBOLS for external dependencies? for some distros)
> 
> Then use `Provides: kernel-abi-token = <hash>` and `Depends:
> kernel-abi-token = <hash>` and let people use weak depanancies.

Your idea requires three key Package Manager factors to work:

- support for dynamically generated dependency metadata, computed during
  the packaging phase based on the results of compilation (will never be
  able to be statically parsed by tooling running against the collection
  of source recipes)

- support for Provides functionality

- handling of token = <hash> where <hash> occurs in the version field
  means that <hash> must validly parse inside the version slot

The Gentoo package manager fails on all three counts! Strict metadata
invariance is a core feature, versions are strictly enforced to "look
like real versions", and Provides support was removed in 2011, for
quality of implementation issues (and never reinstated):
https://www.gentoo.org/glep/glep-0037.html

Version numbers (dot separated components) are a fiddly topic. Some
package managers allow anything alphanumeric within any component, but
cannot promise any sort of sensible results for order comparison. Gentoo
requires versions to start with a numeric component, and later
components may optionally end with *one* alpha char. A component can
also be _pre, _alpha, _beta, _rc, or _p, followed by an integer, instead
of ".<version>". Using an arbitrary hash won't work.

Dynamically generating dependency metadata is the real killer.

Due to Reasons™, rpm has a well specified mechanism to do this via
"fileattrs" (basically shell scripts that take files from ${DESTDIR} on
stdin and spit out binary package metadata on stdout).

On the other hand, debian has deb-substvars(5) which can perform textual
replacement of ${variable} in a control file, but all variables must be
one of:

- defined statically in the text file debian/*substvars from the source
  recipe, or passed as a command line define to dpkg-source (but not
  dpkg-buildpackage?)
- produced by dpkg-shlibdeps and expanded as Depends (provides seems not
  supported)

You could probably hack it in anyway.

Arch Linux recipes are bash scripts; commands used to generate metadata
aren't specifically blocked, but will be evaluated before anything is
built and before dependencies are installed, so will produce various
amusing errors...

Gentoo sandboxes metadata, forbidding the use of external commands of
any type, and generally forbidding any desire to derive metadata that
isn't statically parseable.

Regardless of which package manager you consider, subpackages will share
a version with the primary package, so for most package managers,
official rebuilds of the kernel will evict prebuilt modules ~immediately
from the hosted repos, meaning if you do discover you need modules after
the fact, the best you can hope for is a graceful error message followed
by doing a kernel upgrade + reboot.


...

Outside of PM features, there remains the fact that a package which
depends on "kernel = 6.18.48" and "kernel-abi-token = 50eebb790f" could
be satisfied by installing each of those dependencies separately, if the
PM supports installing multiple parallel versions of a package
simultaneously (and generally you DO want to be able to install a kernel
update without blowing away the old one irrevocably). The latter may not
be guaranteed to encode the former. You will also want to consider
multiple kernel variants such as zen/hardened/pf. Hopefully your ABI
hash records these details, but as you're proposing to use
Module.symvers there's not really a guarantee of it. You could mix in
the raw .config and at least get LOCALVERSION. (It is not really obvious
that checking simple prototype matching is sufficient, anyway. I mean,
it is better than nothing...)



The whole thing is incredibly brittle. modprobe.d simply "works". Why
force the package manager to contort to handle this?


-- 
Eli Schwartz


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
