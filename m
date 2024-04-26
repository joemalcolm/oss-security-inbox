Received: (qmail 32727 invoked by uid 550); 26 Apr 2024 20:59:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32709 invoked from network); 26 Apr 2024 20:59:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=qQKonZLy/G1nwlnZ5zl4/kBinlbpzE4q7hNIrmQqFxU=; b=UfPTeadVtwxeIaBBWVpDTuQ7Nc
	sDqnNWswHQ/VXkOSfT7+W0ZUrOmZpDS2mNNSKR1NPgLHO/alv29kwsdlZi9X/3+ozaX9DNRaMUiDk
	Ob6xllqk5u02ywyRHTzTwQXiagRd5bBR0nFZldCmykwR/agAdJAu3xn62zU06XBnvCONSPYOQnSzf
	HBhqjmtQasEr1YdG5evP3iQvj5mfjn511oqkfeheopizCcvnMxHd1gWlfvsEWZcR+A6RmoXv/z61S
	DCTHMqZk444OZ9Od68xPWugAayF7mX6P5Hnz4jLhhCA34B1mMI6KjhiN7Vz/katnA5xdV3dTePQQt
	V6f0dqAQ==;
Date: Fri, 26 Apr 2024 21:59:06 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZiwVmhV2muRhsAfy@remnant.pseudorandom.co.uk>
References: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

On Fri, 26 Apr 2024 at 14:06:16 -0600, Hank Leininger wrote:
>   - Turns out serial numbers are made up and the points don't matter.
>     But still, this author appears to have _thought_ they were
>     important.

The serial number of a m4 file matters if the attacker wants their back
door to remain in place when a distro runs autoreconf -fi or similar
(as many Autoconf-built Debian packages do, for example); or, less
maliciously, if the author of a legitimate set of Autoconf macros wants
their bug fixes to remain in place when an older distro does the same.

The purpose of the serial number is so that autoreconf can upgrade bundled
macros in the `make dist` tarball to the distro version if it happens
to be newer (for example if I prepared a Flatpak release on Debian 12
but you are building it on Arch), without downgrading to an older distro
version that might be lacking newer features or bug fixes (for example
when someone else builds that same Flatpak release on Debian 11).

If a developer of Autoconf macros is following its documentation, the
serial number should go up whenever the code changes. The observant
will of course notice that this doesn't account for the possibility of
non-linear development (macros being modified in a non-canonical location,
forked, edited collaboratively, or otherwise not having a monotonically
increasing version number) which I think is a reflection of what was
and wasn't considered to be normal when it was designed - it's very much
from the "cathedral" era.

(Many projects don't follow the documentation and do make changes without
incrementing the serial number, which is a bug.)

Beyond that single purpose, yes, the serial number is made up and doesn't
matter.

    smcv
