X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3369" "Saturday" "1" "August" "2015" "18:16:39" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1438449399.3225.15.camel@decadent.org.uk>" "90" "[oss-security] CVE request: Integer overflow in SCSI generic driver in Linux <4.1" nil nil nil "8" "2015080117:16:39" "[oss-security] CVE request: Integer overflow in SCSI generic driver in Linux <4.1" (number mark "        ben@decadent Aug  1   90/3369  " thread-indent "\"[oss-security] CVE request: Integer overflow in SCSI generic driver in Linux <4.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21805 invoked by uid 550); 1 Aug 2015 17:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21785 invoked from network); 1 Aug 2015 17:17:01 -0000
Message-ID: <1438449399.3225.15.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qfoaLZxYSHLhW26uISxF"
X-Mailer: Evolution 3.16.3-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: security@debian.org
Date: Sat, 01 Aug 2015 18:16:39 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Integer overflow in SCSI generic driver in Linux <4.1
To: oss-security <oss-security@lists.openwall.com>

--=-qfoaLZxYSHLhW26uISxF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This bug has been present for a long time, probably introduced in Linux
2.6.28 by:

commit 10db10d144c0248f285242f79daf6b9de6b00a62
Author: FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>
Date:   Fri Aug 29 12:32:18 2008 +0200

    sg: convert the indirect IO path to use the block layer
=20=20=20=20
    This patch converts the indirect IO path (including mmap IO and old
    struct sg_header) to use the block layer functions (blk_get_request,
    blk_execute_rq_nowait, blk_rq_map_user, etc) instead of
    scsi_execute_async().
=20=20=20=20
    [Jens: fixed compile error with SCSI logging enabled]
=20=20=20=20
    Signed-off-by: FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>
    Signed-off-by: Douglas Gilbert <dougg@torque.net>
    Cc: Mike Christie <michaelc@cs.wisc.edu>
    Cc: James Bottomley <James.Bottomley@HansenPartnership.com>
    Signed-off-by: Jens Axboe <jens.axboe@oracle.com>

It was fixed in Linux 4.1-rc1 by:

commit 451a2886b6bf90e2fb378f7c46c655450fb96e81
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Sat Mar 21 20:08:18 2015 -0400

    sg_start_req(): make sure that there's not too many elements in iovec
=20=20=20=20
    unfortunately, allowing an arbitrary 16bit value means a possibility of
    overflow in the calculation of total number of pages in bio_map_user_io=
v() -
    we rely on there being no more than PAGE_SIZE members of sum in the
    first loop there.  If that sum wraps around, we end up allocating
    too small array of pointers to pages and it's easy to overflow it in
    the second loop.
=20=20=20=20
    X-Coverup: TINC (and there's no lumber cartel either)
    Cc: stable@vger.kernel.org # way, way back
    Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

commit fdc81f45e9f57858da6351836507fbcf1b7583ee
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Sat Mar 21 20:25:30 2015 -0400

    sg_start_req(): use import_iovec()
=20=20=20=20
    Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

This has not been included in any stable branches yet.

When backporting the fix to older kernel versions, the second commit
can't be used.  The first commit requires a naming fix-up:
s/MAX_UIOVEC/UIO_MAXIOV/.

Ben.

--=20
Ben Hutchings
One of the nice things about standards is that there are so many of them.


--=-qfoaLZxYSHLhW26uISxF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUAVbz++Oe/yOyVhhEJAQoVNRAAnqomRzBYwBivzHyJM3Ds6bi4TXvu47/M
HKCN0h5QwkLqV3uwn8jz+TywhbM9PkmplM5LQh+VuZySF+PHG9ObpPBH7+cpnxy+
+b5LwZJXS2wsIewl3HMX2g55FDmrsAZTFR6POFuECexrQy/vLtWqKH65Js41he3U
Te9K4nqZFCzn6vlzfQ91AEhf4uj3+FJBo2h6i0EAe0wALajJpDr/koS2a8kIuys8
DzNHoTvhRnI+PST1tqadRRYCFdft8t72o/O4N5ms5xpM3Cp1jiAfxcZKE8yVEidC
qIciE5RPG2rGXFr9ZBj8WARrxe33iDkxmknuISp3hNMpusbDRsQh0e8xT9X7GxmW
Aa2CaTEpSJbswRPw0cej30CYE4t/voAMPvGJbLFwcf0HnI98ussh6uqUh9oMdsPS
6HP5WQkYw6xH0zkxncaRuv+VyZZ7HA6Ltb1CW5Z7vsZ+amGmLg+nN9I0i3/W/3fP
+bpv5ERr7bekuLYeGiRH9EeqQVEGt40mnWOTdI/7HPMIB7dkBymJFTvawdtUUJFN
JOyZNoydIXTDdbW2Xm9LZ9lEJ+4uXqW08MhLUqI+vu2bswTCY2lw2ITjbvblmDp/
g9tjn75X7O1Y1WucEhOkxqNXsYtTp/5C42XnLGgb9o+D6NlW/d3wsKfX0icq8WDo
RIRv0Um26OI=
=7jdq
-----END PGP SIGNATURE-----

--=-qfoaLZxYSHLhW26uISxF--
