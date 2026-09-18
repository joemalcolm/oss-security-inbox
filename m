X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/15
Message-ID: <f8760865-11a9-4293-86b5-3ba57f7fac71@gentoo.org>
Date: Fri, 18 Sep 2026 13:15:32 -0400
From: Eli Schwartz <eschwartz@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

On 9/18/26 11:30 AM, Kevin Riggle wrote:
> Would it be as conceptually straightforward on the distro side as
> breaking most of these less-common modules out into their own
> packages, e.g. linux-module-pppoe, linux-module-sctp, etc?

That is exactly what Hanno said to do, so I presume that he thinks it is
as simple as that.

There are, of course, challenges. Not all distribution package managers
support split subpackages -- the Gentoo package manager does not, albeit
people often compile from source on that distro ;) so it is redundant
for the most part but also impossible to implement for
"gentoo-kernel-bin", or for `--getbinpkg "gentoo-kernel"`.

It also opens up a slightly worrying concern, that if you don't ship the
whole thing together they can get out of sync. I doubt it would be very
good for ABI if modules can be built against one kernel .config, then
loaded against a very different one because package managers aren't
describing the binding between two packages with anything closer than a

rundepend="
    ${parent_package}==${exact_release_tag}-${monotonic_integer_buildid}

"

Depending on package manager, buildid may be stored as:

- part of the "Version" field (e.g. debian) and defined purely as a
  versioning convention

- some extra field that is parsed as a version, e.g. Gentoo "${PR}"
  (package revision) or Arch Linux "pkgrel", rpm "Release:", etc.


Where it exists, it inevitably refers to a text value in a build recipe.
For rpm, you can use %autorelease which parses git log; it doesn't
really solve the problem here.

So you would have to be very careful about consistently incrementing
that and then it would break anyway if someone decides to rebuild an
existing package from source, which, well, *kernels* and people
rebuilding from source. ;) Hardly uncommon.

It's quite rare for software to need such tight binding. So adding such
a package manager feature (to bind subpackages to an extra metadata
field outside of version + revision/buildid, probably a UUID or hash) is
potentially a lot of one-off effort.

...

Alternatively, kernels could ship with a default /usr/lib/modprobe.d
file that sets "install ... /bin/false" for modules that are shipped but
"a bad idea unless you really know you need it". The size of the
resulting package cannot be minimized by dropping unneeded large files,
but that's the status quo today. It seems eminently reasonable that this
would solve the security issue, and people could install an override in
/etc/modprobe.d for any modules they don't want to be masked.

Some distros also have a package manager config file setting
(INSTALL_MASK, NoExtract) to skip individual filenames or filename globs
from being unpacked by any package. It is a bit bulky to use (one record
per module you don't use) and likely not suitable for automatic
deployment with user opt-out as it's quite disruptive if you do end up
needing the module.


-- 
Eli Schwartz


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
