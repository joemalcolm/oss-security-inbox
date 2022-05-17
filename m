Received: (qmail 3340 invoked by uid 550); 17 May 2022 03:30:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3319 invoked from network); 17 May 2022 03:30:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652758236;
	bh=2OcX0aK7vNUpNFsXNJD5HAALq96Stphk3GtNdSpLPFY=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=Vfuei03U0aIwISln5YSXSPoVmV6dKmTRsLHZRAX7eOP0k6TWz8vfVi+oV5mJaCpik
	 pzuGOTWyNBO9YvMHuuB9v5CEA7OmQuBnzZ8dp1Ii0/BemI+eLbPfyFJOqhL3iIuYQK
	 yDCaVfTjlxXJlSu4gxq+cCMR/tmvMChHDrqeXTIh/CwTawz5bH5aRLeiTsyVDWsJp3
	 zS3brsKD5u+La4zDVCQUmstf2cKU4NjV2skmTPN4Ihp83Xi8Qd6rGEj8SV5yKUllEV
	 PjnTgBS/FMnDf2f1bxPpEJFfo+8Xbq+Trg94VdtZkArcdd5zQzk3Jk/qzUE5H7mi19
	 rJ9Eb6mYqRpMA==
Date: Tue, 17 May 2022 03:30:33 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20220517033033.GA3403712@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20220515162740.GA20526@openwall.com>
 <YoJNtNJXUwLySmmO@zx2c4.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
In-Reply-To: <YoJNtNJXUwLySmmO@zx2c4.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 16, 2022 at 03:12:20PM +0200, Jason A. Donenfeld wrote:
> So I think a lot of the kernel's commit message obfuscation and unusual
> disclosure ideas stem from a sort of collective sigh and desire not to
> join the circus of security performers. They'll commit the fix, because

I have seen some kernel developers say that the "security bugs" that
get attention are no different from dozens of other bugfixes that are
committed to the kernel every cycle.

If I've understood the complaint correctly they feel like we, the security
community, are engaging in a dog-and-pony show around ten percent of the
actual problems in the kernel. The other ninety percent get obfuscated
commit messages and no one makes a fuss, because it's just way easier
that way.

I suspect there's some truth to it.

(We get hyperbolic reports from security researchers with proof-of-concept
exploits that are basically syzkaller reproducers and while they look
like they're real issues, it's hard to get excited when it's just .1%
of syzkaller's findings.)

Is this how the wider kernel community sees the various downstream
security efforts?

If this accurately describes feelings held by Linux developers, perhaps we
need larger changes. Ubuntu has (far too many) kernel trees and the only
way we can keep track of the CVEs is via our break-fix lines that show
when issues were introduced and when they were fixed. The Fixes: lines in
commit messages are wonderful assistances here.

Given how much effort it takes me to assign CVEs for kernel issues, I've
wondered before if we (me, us, the community as a whole, etc) ought to
have a very standard and lightweight way to publish kernel CVEs, something
that's not much more than the Fixes: lines already in the commits.

I know this discussion didn't start around assigning CVEs to kernel
issues, but if we're missing more than we're handling, perhaps it ought to
be part of the discussion.

Thanks

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmKDFtYACgkQ8yFyWZ2N
LpeZcgf+MUqNJfuJE95WE+XKodXsJa8d8eMmx77AXAtJ+WsdhR3Ug3/h7lg+Li9s
h7Q3EMoPLL+qYO8O3l7FN48Ff2kmsD8UR1MTgzUmjJdpsRP14DV984EcGuoNPpVd
Cvkr0AP3YDV7xwlmJi7mUO+A6h0ovr5ICQUTvCPCvUwb4WIffAHjBFy9UrDgRe03
jKNe1q3uLii4jcwANxwy1rNzH8bFdxAAhgpMxSG1hKLO27wIYfZ3eedrs0pujHVL
3ePSjkmScxQK2+YPthhx1qmQl4/CDTZIzzUoJsRk5I5Xk4kv3rg8VeHDwvwB+tv9
hXA8lMKFRZViRQT6d4EMNYDok/fCrg==
=15dD
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
