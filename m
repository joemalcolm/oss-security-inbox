X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2893" "Tuesday" "29" "August" "2017" "21:19:25" "+0300" "Henri S." "henri@nerv.fi" "<20170829181925.lvaf5f4itx42idr3@tunkki.bugs.fi>" "76" "Re: [oss-security] A bunch of duplicate CVEs requested for?? bho.." "^Cc:" nil nil "8" "2017082918:19:25" "[oss-security] A bunch of duplicate CVEs requested for?? bho.." (number mark "        henri@nerv.f Aug 29   76/2893  " thread-indent "\"Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..\"\n") "<6609652.OIiHvm4qLd@wanheda>" ("<6609652.OIiHvm4qLd@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23683 invoked by uid 550); 29 Aug 2017 18:20:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23662 invoked from network); 29 Aug 2017 18:20:04 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Message-ID: <20170829181925.lvaf5f4itx42idr3@tunkki.bugs.fi>
References: <6609652.OIiHvm4qLd@wanheda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yw2yr2gb7ei4ew4u"
Content-Disposition: inline
In-Reply-To: <6609652.OIiHvm4qLd@wanheda>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: oss-security@lists.openwall.com, robert@users.sf.net
Date: Tue, 29 Aug 2017 21:19:25 +0300
From: "Henri S." <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..
To: Agostino Sarubbo <ago@gentoo.org>

--yw2yr2gb7ei4ew4u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello ago,

On Tue, Aug 29, 2017 at 02:46:22PM +0200, Agostino Sarubbo wrote:
> Some CVEs about lame was issued, also there are an high number of=20
> vulnerabilities never confirmed by upstream nor posted on their bug track=
ing=20
> system. Yes, sometimes I receive emails that say that the bug is not=20
> reproducible but I'm always trying to help to reproduce. Instead some rep=
ort=20
> says: "If you want the poc please contact me at $email"

I'm currently fuzzing LAME with help from Robert Hegemann who is upstream. I
understand that the latest LAME release in the web page is from 2012, but
hopefully we will get a new release after the fuzzing is finished. If there=
 are
any outstanding issues from your fuzzing feel free to contact me and I can
verify that those are fixed in the CVS version of it (link below). I can ch=
eck
your blog for related issues at least. Robert has been fixing the issues ve=
ry
quickly after reports. I also plan to fuzz other argument combinations. May=
be
we can even include LAME to oss-fuzz later on if upstream agrees.

http://lame.cvs.sourceforge.net/viewvc/lame/lame/

Recently closed issues:

https://sourceforge.net/p/lame/bugs/464/
https://sourceforge.net/p/lame/bugs/465/
https://sourceforge.net/p/lame/bugs/466/
https://sourceforge.net/p/lame/bugs/467/
https://sourceforge.net/p/lame/bugs/468/
https://sourceforge.net/p/lame/bugs/470/
https://sourceforge.net/p/lame/bugs/472/

All feedback is welcome regarding my fuzzing activities. You can also conta=
ct
me via IRC in e.g. #afl-users in Freenode if you want to participate in CVS
build fuzzing. If not I can also notify you after the next release.

> How to avoid to file duplicate?

Maybe giving them a link for documentation how to avoid this in the future.

CCing robert without permission :)

--=20
Henri Salo

--yw2yr2gb7ei4ew4u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAlmlsCoACgkQJ633pE6q
dXTIlw/+LqH0FM8UoVGRovhBJxagtstZCVoXg1VRCbbJJzkoAM8v0RpuxJRUfl0y
1j3EsbfQ0XYRRP8428YKZQrFfGW//Yn9Vm4Eg/gVLT+5Ac4IroTp7o1YWi3NSLjf
iGhGCxSWBr1JXuCWN4K7BwTF0sQvLDYVixXRf+WTcxEFZNg4xz/Hk3fujrJAS7Fy
CuH9ih/yL4f71mm8BUL6zlYXIsBdtfbndNy3l2vFm7weBzRGg1iTxaySoZFzwk0M
V7K//01VAEl820NjLn13yGg9WqVWi/AUZoR5JhFUC+YjzbjnD19f50JwijzFWp/Z
tO+OBoyHXX4YKQmblu3yHX4wzWtKINFsyOKfHVgVLLjwtDi2yO5pc217J2IZd5C7
GEeR9YWzFm1sTr7+WoMJwbJDpqyASwKAHQgM06bQOaIKCV9dSEsvaMGQmyXEM+kw
5qTzR6I2na2fRpc+chjo1+zpfWBjb5ksx9oeumNry932U6B9tEBQE2OFcLOBcF9E
eAXnclxMAbvccBsSUNiGz7k+CUPvJ4qL7ocBkBJYRJT1BbAhlv6H8QhOChg+OC0s
5Pu8xFlJQb6+uz2SbC0nUJbItATC6smWXoBf01EvoJYVEKmN4lGiX9wToYYRIhUT
djzFingP8hBL0x5uyKqSOpGDN+0cUtVeoxYDwJKnr+bJ2O0KAFE=
=tsYQ
-----END PGP SIGNATURE-----

--yw2yr2gb7ei4ew4u--
