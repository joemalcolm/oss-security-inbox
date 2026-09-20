X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/20/3
Message-ID: <6288-1789924616.794246@7dSB.AgCk.mJ86>
Date: Sun, 20 Sep 2026 17:16:56 +0000
From: Roman Fiedler <roman.fiedler@...aralleled.eu>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

On Sat, 19 Sep 2026 14:50:50 -0600 Greg Dahlman wrote:
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
> Then use `Provides: kernel-abi-token =3D <hash>` and `Depends:
> kernel-abi-token =3D <hash>` and let people use weak depanancies.
>
> You could have a monolithic source recipe, but the automated build
> pipeline programmatically spits out separate .deb, .rpm, or
> .pkg.tar.zst files for each module.
>
> There is a complexity shift to the repository infrastructure but does
> not require sub-packaging and also solves the local build conflict
> problem at least in the common case I am thinking about.
>
> I guess the recommends may get a bit large and require metapackages by
> following the simplest pattern:
>
> ```
> Package: linux-image-generic
> Recommends: linux-module-pppoe, linux-module-sctp, linux-module-rds, ...
> ```
> So there may be some risk based packaging decisions to make or...
>
> To me it seems that `Provides: kernel-abi-token =3D <hash>` resolves
> many of the above concerns.
>
> On Fri, Sep 18, 2026 at 11:57=E2=80=AFAM Eli Schwartz <eschwartz@...too.org=
>> wrote:
>>
>> On 9/18/26 11:30 AM, Kevin Riggle wrote:
>> > Would it be as conceptually straightforward on the distro side as
>> > breaking most of these less-common modules out into their own
>> > packages, e.g. linux-module-pppoe, linux-module-sctp, etc?
>>
>> That is exactly what Hanno said to do, so I presume that he thinks it is
>> as simple as that.
>>
>> There are, of course, challenges. Not all distribution package managers
>> support split subpackages -- the Gentoo package manager does not, albeit
>> people often compile from source on that distro ;) so it is redundant
>> for the most part but also impossible to implement for
>> "gentoo-kernel-bin", or for `--getbinpkg "gentoo-kernel"`.
>>
>> It also opens up a slightly worrying concern, that if you don't ship the
>> whole thing together they can get out of sync. I doubt it would be very
>> good for ABI if modules can be built against one kernel .config, then
>> loaded against a very different one because package managers aren't
>> describing the binding between two packages with anything closer than a
>>
>> rundepend=3D"
>>     ${parent_package}=3D=3D${exact_release_tag}-${monotonic_integer_build=
> id}
>>
>> "
>>
>> Depending on package manager, buildid may be stored as:
>>
>> - part of the "Version" field (e.g. debian) and defined purely as a
>>   versioning convention
>>
>> - some extra field that is parsed as a version, e.g. Gentoo "${PR}"
>>   (package revision) or Arch Linux "pkgrel", rpm "Release:", etc.
>>
>>
>> Where it exists, it inevitably refers to a text value in a build recipe.
>> For rpm, you can use %autorelease which parses git log; it doesn't
>> really solve the problem here.
>>
>> So you would have to be very careful about consistently incrementing
>> that and then it would break anyway if someone decides to rebuild an
>> existing package from source, which, well, *kernels* and people
>> rebuilding from source. ;) Hardly uncommon.
>>
>> It's quite rare for software to need such tight binding. So adding such
>> a package manager feature (to bind subpackages to an extra metadata
>> field outside of version + revision/buildid, probably a UUID or hash) is
>> potentially a lot of one-off effort.
>>
>> ...
>>
>> Alternatively, kernels could ship with a default /usr/lib/modprobe.d
>> file that sets "install ... /bin/false" for modules that are shipped but
>> "a bad idea unless you really know you need it". The size of the
>> resulting package cannot be minimized by dropping unneeded large files,
>> but that's the status quo today. It seems eminently reasonable that this
>> would solve the security issue, and people could install an override in
>> /etc/modprobe.d for any modules they don't want to be masked.
>>
>> Some distros also have a package manager config file setting
>> (INSTALL_MASK, NoExtract) to skip individual filenames or filename globs
>> from being unpacked by any package. It is a bit bulky to use (one record
>> per module you don't use) and likely not suitable for automatic
>> deployment with user opt-out as it's quite disruptive if you do end up
>> needing the module.
>> --
>> Eli Schwartz

Well, splitting the kernel in per module packages may have other
advantages, e.g. less data transferred due to using selected small
packages only, but I don't know if in age of GBit-networking and
huge disks is worth it.

Otherwise I would assume, that package selection on diverse hardware
might get quite annoying during install: you detect some USB hardware,
install some USB controller packages, install them, load the
modules, the next run detects some USB devices, you select more
packages, load modules, ...

I would more appreciate it, if modprobing would stop using historic
blacklist approach - which was to my knowledge mainly used to
avoid system lockup due to loading of buggy hardware drivers -
and go to a whitelist approach.

The kernel module packaging could stay as is, also no custom kernel
compiling is needed. Instead the modprobe would be changed and
distros could just ship 3 whitelists for convenience: all.whitelist;
recommended.whitelist; none.whitelist.

After a successful install with "all.whitelist", security-aware folks
could essentially just do a "lsmod | sed -e '...' > my.whitelist.

Too easy, so what have I gotten wrong, missed?

Roman
