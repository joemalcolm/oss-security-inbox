X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4277" "Sunday" "3" "October" "2021" "12:00:11" "+0000" "Samanta Navarro" "ferivoz@riseup.net" nil "108" "[oss-security] Supply Chain Security and Tar" nil nil nil "10" nil nil (number mark "U       ferivoz@rise Oct  3  108/4277  " thread-indent "\"[oss-security] Supply Chain Security and Tar\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Supply Chain Security and Tar" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32642 invoked by uid 550); 3 Oct 2021 12:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11536 invoked from network); 3 Oct 2021 12:00:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1633262435; bh=JdwPT6ay/jlcFtVzGNm8HKm5hC2eVsgWNY8NecLbeq0=;
	h=Date:From:To:Subject:From;
	b=fuw+MQfWLAH2LpKCGM7b3jaWoP0rIgKUMRTZQQm84CPd0jiwflAP4RfozoDSzMLZz
	 TwhIbZoJgKkSyGLmeoUA8Y71Bqm1WdjPEqniE/D4X+Iu/2T7qiUf8A6c7QGm5J6LjW
	 BG9zlvqv16nJghdYbc8twP7BGyeAtiTbyFBO5iBs=
X-Riseup-User-ID: FAC1713F305C20BD1F452098F46A48B542B1A68A96DD7FC1062E4896B366973E
Date: Sun, 3 Oct 2021 12:00:11 +0000
From: Samanta Navarro <ferivoz@riseup.net>
To: oss-security@lists.openwall.com
Message-ID: <20211003120011.gb6vljzhs2tedfis@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Supply Chain Security and Tar

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Introduction
============

Tar files are commonly used to transport files throughout the supply
chain. They are used for source code archives but also for containers.

Many different tar formats evolved to satisfy different demands, just
like many different tar implementations have been written. Some of
these programs and libraries try to support as many formats as possible
and even previous implementation mistakes for backward compatibility.

This allows a malicious actor to create a single tar archive which leads
to different file outputs based on the implementation in use. A clever
combination even allows the creation of a tar file which leads to no
error message among the most common tar implementations.

Proof of Concept
================

A specially crafted file can be downloaded here:
https://github.com/ferivoz/alquitran-samples/blob/master/v7_001/archive.tar

The archive itself contains a hello world C program. It depends on your
tar implementation whether the program returns 0 or 1. Known tools which
lead to a "return 1" version are bsdtar and p7zip.

The archive abuses two implementation mistakes:

1. directory entries may have a size, which must not be interpreted as
   data size, i.e. no data blocks follow a directory
2. GNU extensions exist which allow "long names". Implementations do not
   consider an archive as invalid if no actual entry follows it

The archive is not fully stealthy (star shows warnings) on purpose but
should highlight the possibility of creating such archives.

Attack Scenario
===============

Arch Linux uses libarchive (bsdtar) in its build environment. The
default tar program installed is GNU tar. It is possible to create a
source distribution which leads to different files seen by the build
environment than compared to a careful reviewer and other Linux
distributions.

The code is reproducibly built and hopefully reviewed, yet it differs
in its functionality.

If all source distributions could be rebuilt from a repository then this
attack would be harder to implement, but common distributions use
prepared tar archives offered by maintainers, e.g. signed archives with
autoconf generated files.

I have inspected some projects and xscreensaver gets closest to this
scenario: Extracting xscreensaver-6.01.tar.gz with bsdtar leads to an
error because a hardlink exists which points to itself. The repository
itself is not available, so it is the only point of trust available.

Mitigation
==========

I have submitted bug reports and patches to some projects but eventually
I had to conclude that the problem itself cannot be fixed by these
implementations alone. The best choice for these tools would be to only
allow archives which are fully compatible to standards but this in turn
would render a lot of archives broken.

The best possibility from my point of view is that maintainers switch
to ustar format because it is at least standardized and offers enough
features required for source distributions. If path lengths are too long,
then pax format (super set of ustar) should be used, because it is
covered by POSIX as well.

The ustar format is also supported by all common tar implementations.

Analysis of existing archives
=============================

I have written a diagnosis tool called "alquitran" which is available
here: https://github.com/ferivoz/alquitran

It scans a given tar archive for standards compatibility towards the
ustar format as specified by POSIX. The attack scenarios which are known
to me at this point are properly detected.

The previously mentioned "alquitran-samples" project contains crafted
tar archives and a check.sh script which can be used to inspect an
individual tar program regarding its handling of malicious tar archives.

Conclusion
==========

I am not aware of an already performed attack based on a malicious tar
archive. The mentioned scenarios should be carefully reviewed and the
community should find a way to safely and securely transport sources.

Sincerely,
Samanta
-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRmzXViX+AZPnBGVbhlTlmbj2CavQUCYVmbHwAKCRBlTlmbj2Ca
vXVvAQDPHY8HioRMpzQ7Xfjlf3UoODI07plEQRdhFRQhYipmZwD/VAOt1lqOGozb
mB0w8DHMAQ4pe4r8NdljdUTJLrntFgc=
=Jkat
-----END PGP SIGNATURE-----
