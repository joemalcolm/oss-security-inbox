Received: (qmail 2011 invoked by uid 550); 26 Apr 2024 20:08:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26561 invoked from network); 26 Apr 2024 20:06:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=korelogic.com;
	s=mail; t=1714161978;
	bh=yxpBhi/s3xRaMvgCm8XgeVKdKHjypHn74DQh5TjcmFw=;
	h=Date:From:To:Subject:Reply-To;
	b=RKYfRF8biG70zdwMiplbr6CEGW9zs/wdBsOl3emx4EZV7HWTo2wq3cs2s8NxUWSo8
	 tCMhs4XyVW1uNWYt12hFOSlSdfF6on4v74JnQNlZVu0UIM/IUkju+9CKRqjL/dGHBR
	 DIUnGYGWG8IdCaNau/dfa5uZFwcKkhWIemXBthR8=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.8 at mail.korelogic.com
Date: Fri, 26 Apr 2024 14:06:16 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OtOWzjbffCC7/NGU"
Content-Disposition: inline
Subject: [oss-security] Update on the distro-backdoor-scanner effort

--OtOWzjbffCC7/NGU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tl;dr: We've pursued a number of avenues, with plans for more; so far
no "smoking gun" of other backdoors of a similar vein; help wanted.

So: what is this, where are we, what's next, what do we need, credits.

What is this?

- Ongoing work to look for backdoors similar to those found in=20
  xz-utils, or using vectors that were discussed in its aftermath,=20
  that have made their way into Linux distributions' build pipelines;
  see https://marc.info/?l=3Doss-security&m=3D171208242904550&w=3D4

- All the below is also covered in code, READMEs, or GH issues at
  https://github.com/hlein/distro-backdoor-scanner; the tools are
  intended to be bog-standard and work on any of the supported=20
  distros, and to document what they need so our work should be
  repeatable by anybody.

Where we are: main things investigated:

- Similar exploitation toolkits / operator-behavior in other packages?

  - Unpack and scan all packages in multiple distribution families
    looking for the "fist" of the operator: similar stage0 / stage1 /
    stage2 loaders, characteristic command-line switch combinations,
    etc.; can we find earlier generations of any of the widgets used
    (and now burned) in other packages previously backdoored? See the
    patterns in bin/package_scan_all.sh

  - Unpacked and scanned (generally post-distro-patches, to focus on
    as-used-by-distros, not just rescan the same upstreams 4 times):

    - ~11k EndeavourOS/Arch packages
    - ~40k Debian packages
    - ~19k Gentoo packages
    - ~9k Rocky/RPM packages

  - Output is manageable; able to rule out all hits not part of the
    actual xz-utils backdoors as false positives.

- Examine the provenance of every .m4 in every package unpacked above

  - What m4 macro files unique/introduced by a project? Which are
    recognizable, but updated/modified from any revision ever in an
    upstreams (GNU autotools, etc.) in some way? m4 files have serial
    numbers, and the xz-utils backdoor used a big jump in its backdoor
    .m4; maybe an attempt to keep from getting clobbered after
    upstream upgrades?

  - Turns out serial numbers are made up and the points don't matter.
    But still, this author appears to have _thought_ they were
    important. So if they'd done similar somewhere else, should stand
    out there too.

  - Analyzing about 50k m4 files found about 5k that didn't match an
    upstream. around 1k of those had a near-match so we can diff them.
    That's still too many to digest manually. 3 had big serial jumps.
    2 of those seem benign; the third is of course, the trojan in
    xz-utils.

  - Big TODOs here are to implement fuzzy hashing when we don't have
    a perfect match, so that we can pick the best knowngood candidate
    to offer a diff against and to group the unknowns amongst
    themselves, and something to facilitate tracking of diff-review
    (CSV or another sqlite DB that tracks review status?), and then
    to actually read all the diffs (currently only spot-checked).

- Compare decompression of xz-utils vs other compatible tools

  - Just to check for some obvious Thompsonesque weird machine where
    xz injects malicious .c code into a tarball it unpacks, etc. Very
    unlikely to find anything.

  - Found nothing except some minor bugs in other decompressors (will
    submit upstream bugs, but low priority).

  - Still plan to add more different decompressors for completeness.

What's next: rough notions only, not yet implemented:

- Analyze IFUNC real-world use. They're dodgy and weird and useful for
  backdoors like this one. Removing IFUNC support from glibc has been
  floated: https://marc.info/?l=3Dglibc-alpha&m=3D171389592724184&w=3D4
  But that'll get hung up on "but what if users". AFAWK nobody knows.
  So let's find out: survey sources & binaries from major distros and
  get some actual numbers. Also thegrugq made an interesting
  observation: it'd be telling which projects recently _added_ IFUNC
  use, if any. See
  https://github.com/hlein/distro-backdoor-scanner/issues/16

- Check for irregular contents in .pc files, inspired by Vegard
  Nossum's oss-security post
  https://marc.info/?l=3Doss-security&m=3D171335763115933&w=3D4
  This seems it'd be pretty easy to look for known bads. Starting
  notes: https://github.com/hlein/distro-backdoor-scanner/issues/7

- Systematically compare git-tagged versions of software to release
  artifacts for that same version. What differs, and why? There's
  often minor differences for what seem like good releng reasons. But
  in the xz-utils case, the backdoor author was able to get access to
  post Release assets even w/o commit/merge access; their backdoor was
  injected in files/contents that didn't match the Git repo contents.
  See https://github.com/hlein/distro-backdoor-scanner/issues/17

What do we need:

- Testers, especially on other distros in a family we support but
  only tested on one so far.

- Reproducers to rerun our analysis yourself and make sure you concur
  with our conclusions.

- Contributors to the currently outstanding issues/tools.

- Analysis help on the m4 diffs (once we have fuzzy-matching to choose
  best-fit diff comparison targets).

- Brainstorming to come up with the next big items to put on the list.

Credits:

  Most of this work has been done by Sam James of the Gentoo team and
  Hank Leininger (me), partially sponsored by KoreLogic. Thanks also
  to folks who helped us get a handle on a lot of different distros'
  ecosystems, especially Solar Designer (Rocky/RPM family), brocellous
  (Arch family).

--OtOWzjbffCC7/NGU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEhCjtFFJoxycMSPRUhG8GN1/rFhIFAmYsCTgACgkQhG8GN1/r
FhL03g//Sv58hGL0WHEK6QIWEHH8aUTkRskSPz0+iJzTzQsg/AC6WEGAcXHHfjAx
58VDQXVsOB9nQPEZp+iRxyKAMBZ3VROep1edH0cS744mc7Zbdg+wO2mqrV4stJYD
3YXaoIaVB2bOa2vrNJC1ZzBOGuSxip6RG1A+mYTYtvsXtRPxAJXRQ6yv6bIhqyp+
CbViAbwNDVVYN2Ifakqox/eErE3y/vg6gJY591IFzg8pKJ/+yWXDJLzNDmGOcY94
N+2pEIEuntEvI6RUA82kw2WUxn/cSwdj5ocQ5uK59kadU8CzcvF4f736QccTVSJ2
XxciNWDw7XxZB5ZPzvPLFJEsW57usrYeXktcJzxcVkvAX0Lobwf3/Oh5mmkzfgZC
cBXl41g22BApMOJjYMffuKdRwa7h63S72a1P8codsbpDSscGqs7pbsr8rpr7eRS3
rpQL0Jrt/5UdkMstO+7ipUbeyGQST6u5QbBFr+8RjcP22Q9iFYiJZPMiPRQTLz9J
lKpPFeK3OiHh2lVxWTNKiOB3crToNCh8v4w475Mz8eROiJReHIWDcVNhtKB7opIN
PsbcKqErTG2FQTkNyh0wUjQM6kwyYAzlaJoEqdFzsv3aEhFHyrUlti95DSFgcMtj
r0/YxMyhtwI9V6C5H9NWAUaJLix6liddQNPksKxxNRXH4TO0iu0=
=bXAF
-----END PGP SIGNATURE-----

--OtOWzjbffCC7/NGU--
