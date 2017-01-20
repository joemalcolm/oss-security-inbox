X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5583" "Friday" "20" "January" "2017" "09:01:17" "-0500" "Brad Spengler" "spender@grsecurity.net" "<20170120140117.GA11396@grsecurity.net>" "125" "Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012014:01:17" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        spender@grse Jan 20  125/5583  " thread-indent "\"Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") "<20170120082635.GB28326@kroah.com>" ("<1484880112.11949.24.camel@redhat.com>" "<20170120082635.GB28326@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6006 invoked by uid 550); 20 Jan 2017 14:36:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21900 invoked from network); 20 Jan 2017 14:01:30 -0000
Message-ID: <20170120140117.GA11396@grsecurity.net>
References: <1484880112.11949.24.camel@redhat.com>
 <20170120082635.GB28326@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
In-Reply-To: <20170120082635.GB28326@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
	Wade Mealing <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 09:01:17 -0500
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero
 able to crash kernel
To: oss-security@lists.openwall.com

--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Greg,

Much like you feel it's not your job to inform your own users of=20
vulnerabilities you've silently fixed, it's not the job of distros (who=20
are actually informing their own users) to do your job of determining=20
what kernels a particular fix affects, particularly when you just use it=20
as a way of getting your advertisement out there that people should be=20
running the latest Linux kernels.  Of course, what you're missing is=20
that when it's the distros themselves requesting the CVEs, this skews=20
the discussion of vulnerabilities to older kernels, not the much higher=20
number present in the latest upstream "stable".

While we're here, how about a CVE for a recent kernel, for a vulnerability
not fixed in any stable kernel yet, and introduced for a pointless mitigati=
on
no less:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3Dc4e490cf148e85ead0d1b1c2caaba833f1d5b29f
This affects upstream >=3D 4.8 when CONFIG_SLAB_FREELIST_RANDOM is enabled
("for those following along at home")

Or, since VMAP_STACK was introduced haphazardly in 4.9 without doing any=20
static analysis beyond a simple grep or smatch it seems, there are probably=
 a=20
dozen or so DoSes when CONFIG_DEBUG_SG or CONFIG_DEBUG_VIRTUAL is=20
enabled, or potential silent or not so silent memory corruption when=20
it's not, as a scatterlist crossing a virtual page boundary will then=20
end up accessing a totally unrelated adjacent physical page if a stack=20
address was passed into the scatterlist, and these vulnerabilities will=20
continue to pop up until something comprehensive is done to prevent=20
them.  Emese's written an IPA GCC plugin to find all the ones you've missed,
so we know there still are many that haven't been fixed.
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D6d104af38b570d37aa32a5803b04c354f8ed513d=20
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3Da45f795c65b479b4ba107b6ccde29b896d51ee98
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D06deeec77a5a689cc94b21a8a91a76e42176685d
0day alert, not fixed in 4.9 yet:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D05a974efa4bdf6e2a150e3f27dc6fcf0a9ad5655
Not to mention the bugs introduced via fixes for VMAP_STACK:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D146cc8a17a3b4996f6805ee5c080e7101277c410

Or how about a CVE for this huge heap infoleak (and while I'm at it, congra=
ts to
Al for not covering it up for once, maybe he's learning!):
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3Db9dc6f65bc5e232d1c05fe34b5daadc7e8bbf1fb
Or this (sgid bit not cleared on tmpfs):
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D497de07d89c1410d76a15bec2bb41f24a2a89f31

So be careful, if you keep advertising the superiority of upstream LTS=20
kernels in this passive aggressive way, you may soon find yourself on=20
the other end of such advertisement ;)

-Brad

On Fri, Jan 20, 2017 at 09:26:35AM +0100, Greg KH wrote:
> On Fri, Jan 20, 2017 at 01:41:52PM +1100, Harshula wrote:
> > Hi Folks,
> >=20
> > Red Hat Product Security has been notified of a kernel vulnerability
> > that a local attacker can exploit to crash/panic the kernel and cause a
> > denial of service.
> >=20
> > This was reported to Red Hat by Jesse Hertz (CC'd) (reproducer:
> > rt411016):
> >=20
> > "A process that is in the same process group as the ``init'' process
> > (group id zero) can crash the Linux 2 kernel with several system calls
> > by passing in a process ID or process group ID of zero. The value zero
> > is a special value that indicates the current process ID or process
> > group. However, in this case it is also the process group ID of the
> > process."
> >=20
> > I've been testing whether RHEL is vulnerable and found the following:
> >=20
> > * Upstream/mainline is not vulnerable
>=20
> Is this true for the mainline kernel tree that RHEL 6 was based on?
>=20
> > * RHEL 7 is not vulnerable
> > * RHEL 6 is vulnerable
> > * RHEL 5 is partially vulnerable
>=20
> So this is only due to a specific set of patches that were added to RHEL
> 6 and RHEL 5 yet never made it upstream?  I ask as we want to make sure
> some of the older LTS mainline kernels might be affected and it would be
> good to ensure they are not.
>=20
> thanks,
>=20
> greg k-h

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJYghgmAAoJEETRwPglJf5Jp8EP/0zmxZc74vjU463lektgQ/fw
S1SPqXWuaim9nZIryrmcK8hePIxI1+QCC94mLMqksoMOFKj5T0dXV/10oxHPqtYC
KPfieCD7Ub8ngnM+w1qvm3JkEwm6s/uoXcZNeQiDXjDr/0ZV3GXsQ7L4fgKpg3IG
ygWsJkcmvsA09bvdTd9tmhCMEqiqa9CI7NHCBm1EaXdgQXJbf0YAIY4FcHX7EERR
y6mzum8+CSfxBKOPGzQVpcufRaoONBpiNkqahJkMw5nIdUdd6ToYABiDNyGNkrLE
XRO5PgLhG6W4PWL1AiDOm89KBNUkEXdAK/ZsmPHLVbc48wE//X0n8o2eK0dnHPli
tNxNLl3EDaWRteRlhZtjTLF0RqcNjDh4jR6UZsfVhr/UL8JuWqd0h8ofTuyoIh9B
p+Ip5GtL48T3znmSlvrfVcjaoT3gwa0PIghMHJLy1SMPGssjrICfbRHDPA6dXr01
OqQaKuiDITu7Kijfy6zxEO7iyTCwRTaz81bn4teQVBi8rRK3LxfBIb+wtajDeL0z
8FYI7DkG2BALK6TQsfXti5y1JOqupek9Yf5UDMop6eRBzgaY3t6X3nlLqwWlD//w
RpVGGw8QL3uJKkjl+aBi6i5vsLK/mALIyy9KaY2tQOpx5yl5pV+bCJMwgIq+corl
AvANLSPiMAJuQOjj/P4J
=lRec
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
