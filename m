X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4148" "Sunday" "3" "April" "2016" "02:37:45" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1459647465.2704.96.camel@decadent.org.uk>" "99" "Re: [oss-security] ext4 data corruption due to punch hole races" "^Cc:" nil nil "4" "2016040301:37:45" "[oss-security] ext4 data corruption due to punch hole races" (number mark "        ben@decadent Apr  3   99/4148  " thread-indent "\"Re: [oss-security] ext4 data corruption due to punch hole races\"\n") "<20160402154634.GA3334@thunk.org>" ("<20160331151128.GK26612@suse.de>" "<1459602897.9149.3.camel@debian.org>" "<20160402154634.GA3334@thunk.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1913 invoked by uid 550); 3 Apr 2016 01:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1891 invoked from network); 3 Apr 2016 01:38:09 -0000
Message-ID: <1459647465.2704.96.camel@decadent.org.uk>
In-Reply-To: <20160402154634.GA3334@thunk.org>
References: <20160331151128.GK26612@suse.de>
	 <1459602897.9149.3.camel@debian.org> <20160402154634.GA3334@thunk.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-EqJ/vqrTLsJIlD6qNTKY"
X-Mailer: Evolution 3.18.5.1-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:8011:400e:2:6f00:88c8:c921:d332
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com, Johannes Segitz <jsegitz@suse.com>
Date: Sun, 03 Apr 2016 02:37:45 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ext4 data corruption due to punch hole races
To: Theodore Ts'o <tytso@mit.edu>, Yves-Alexis Perez <corsac@debian.org>

--=-EqJ/vqrTLsJIlD6qNTKY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2016-04-02 at 11:46 -0400, Theodore Ts'o wrote:
> On Sat, Apr 02, 2016 at 03:14:57PM +0200, Yves-Alexis Perez wrote:
> >=20
> > >=20
> > > "When punching holes into a file races with the page fault of the same
> > > area, it is possible that freed blocks remain referenced from page ca=
che
> > > pages mapped to process' address space. Thus modification of these bl=
ocks
> > > can corrupt data someone else is now storing in those blocks (which
> > > obviously has security implications if you can trick filesystem into
> > > storing some important file in those blocks).
> > >=20
> > > This affects all the kernels where we support ext4 for writing. Relev=
ant
> > > fixes upstream are commits ea3d7209ca01da209cda6f0dea8be9cc4b7a933b,
> > > 17048e8a083fec7ad841d88ef0812707fbc7e39f,
> > > 32ebffd3bbb4162da5ff88f9a35dd32d0a28ea70,
> > > 011278485ecc3cd2a3954b5d4c73101d919bf1fa."
> > any reason why those commits weren't CC: stable? If this really affects=
 all
> > kernels where ext4 writing is possible, that means basically all current
> > stable kernels more or less, I guess?
> They weren't cc'ed stable because they're fairly complex patches,
> which (a) means they probably wouldn't auto-apply anyway, and (b)
> someone who does do the (probably manual) back port they would be
> *very* strongly advised to run them through a complete ext4 regression
> test series[1] to make sure the patches actually don't make things
> worse from a stability perspective.

Regardless of how difficult it is, we probably need to fix the bugs
somehow in Debian stable. =C2=A0It looks like the commits are:

ea3d7209ca01 fix for PUNCH_HOLE (3.0+)
17048e8a083f fix for default fallocate (all) and ZERO_RANGE (3.15+)
32ebffd3bbb4 fix for COLLAPSE_RANGE (3.15+) and INSERT_RANGE (4.2+)
011278485ecc fix for PUNCH_HOLE (3.0+) and ZERO_RANGE (3.15+)

So the third would not be needed for stable branches up to 3.14 but
otherwise they're all needed (at least in part) for all live stable
branches - right?

(As there are clearly multiple bugs here; why only one CVE ID?)

> [1] http://thunk.org/gce-xfstests
>=20
> I do spend *small* amount of work testing the stable kernels (3.10,
> 3.14, 3.18, 4.1, 4.4) using gce-xfstests and backporting and testing
> patches that weren't cc'ed to stable for various reasons.=C2=A0=C2=A0It's=
 a
> pretty low priority task, though, and I'd really love to delegate this
> to someone else.=C2=A0=C2=A0I just don't have the bandwidth to support ba=
ck
> level kernels (this is why distributions get paid the big bucks), and
> note that even if I or someone else stepped up, this won't necessarily
> help Debian, which isn't on a one of the stable kernel versions.

wheezy is:=C2=A0https://www.kernel.org/category/releases.html

> If anyone is interested, please contact me.=C2=A0=C2=A0Otherwise, I'll ge=
t to it
> eventually.

Since I do most of the security backports for Debian, of course I am
interested.

Ben.

--=20
Ben Hutchings
The two most common things in the universe are hydrogen and stupidity.=

--=-EqJ/vqrTLsJIlD6qNTKY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXAHPpAAoJEOe/yOyVhhEJcbgP/A6UDnxUDivQ+wkn1cM5jyRY
JkhzNQuM8cqo/F+HknwXxc5ECOrkvFXh0Pe3V0Z83ikS/zXCl9Q5Hi70B6lKNZFK
qNFSSMUScheej48DqjWxFd7YVB3ElVmhvr20LrRXWtr5VDZKYoOvkbok+1oMl1HS
6DxoACejLXM0uBWXzzarVk2Tp7LznDCBmO7pPdycl4jceoxX59rtJBX/JQ0OX+ZW
0hn3keJQ8THNKLpgDB1GrYBBnpyM4Hl5IXuEqeE6l2KVliaLIXOTIW+flKxaikbn
WGTF2cGOYqyyYyYQazI1YlAgq8Pg7/vFtEMt0oHzEWKx9lmWHeYa8bHiRKy2WsnF
3GSKAZnCv0HRE6l+8bRhwaN978fcIgfl5Rg87L9lf6scB+KOEX7bnGO1xegJxMvm
yclK2qxrPLhp8dV6PHa8jsfmQkMY2dj274LAVTjSwzZ99mC9FVO+JtAjR1XBRpzG
E/ect7/46JlCwQ67DZGwAoBnRetz2t7WYc8l22fP/R4f2OmiccQdrnTFuwNZjAZP
K3LfSveg3sndDB1RnLjzib88yVSD+PeOZ0p0/X2LxHUebod4ySe33TBgzhGSUPBQ
C+1l99EPOo1Q/NytWSWoAkWKOx9ZMECHFkLJ6ifP/dL8VxGKxkRRCVE6cThJmipx
9ELOQYMkDtfn3pLOvCZh
=nr6p
-----END PGP SIGNATURE-----

--=-EqJ/vqrTLsJIlD6qNTKY--
