X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2353" "Sunday" "28" "February" "2016" "16:23:44" "+0100" "Aurelien Jarno" "aurelien@aurel32.net" "<20160228152344.GA711@aurel32.net>" "58" "[oss-security] Re: pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]" nil nil nil "2" "2016022815:23:44" "[oss-security] Re: pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]" (number mark "U       aurelien@aur Feb 28   58/2353  " thread-indent "\"[oss-security] Re: pt_chown timeline, CVE request [was: Access to /dev/pts devices via pt_chown and user namespaces]\"\n") "<20160228145356.GA30050@pc.thejh.net>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160228145356.GA30050@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9972 invoked by uid 550); 28 Feb 2016 15:24:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9954 invoked from network); 28 Feb 2016 15:23:59 -0000
Date: Sun, 28 Feb 2016 16:23:44 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Jann Horn <jann@thejh.net>
Cc: oss-security@lists.openwall.com, security@kernel.org,
	security@ubuntu.com, security@debian.org,
	Florian Weimer <fw@deneb.enyo.de>
Message-ID: <20160228152344.GA711@aurel32.net>
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
 <20160228145356.GA30050@pc.thejh.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <20160228145356.GA30050@pc.thejh.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: pt_chown timeline, CVE request [was: Access to /dev/pts devices
 via pt_chown and user namespaces]

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2016-02-28 15:53, Jann Horn wrote:
> As others figured out in the private bug discussion, pt_chown is
> already not installed as setuid binary by glibc anymore.
> That it is present in Debian and Ubuntu is because of a distro patch
> in Debian, which Debian applied to work around the bug that the

To be correct, it's not really a patch, but rather a configure option.

> "[PATCH] devpts: Sensible /dev/ptmx & force newinstance" patch is
> supposed to fix. So with a fix for that issue applied, Debian and
> Ubuntu should be able to just drop the distro patch, fixing the
> vuln by removing pt_chown.

Note that in the meantime we have developed an alternative workaround
on the glibc side, which allows to not break systems with multiple
/dev/pts mounts, though the result is not POSIX compliant:

  https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D77356912e83601fd=
0240d22fe4d960348b82b5c3

This commit is included in glibc 2.23, and on the Debian side we have
backported it to glibc 2.21 and to 2.22, and pushed the result to the
users. We have also backported it to 2.19 (Debian jessie), but not
pushed it to users yet (it is in progress).

Aurelien

--=20
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW0xEAAAoJELqceAYd3Yybd1EP/R8KY754riD7+32HNSuv+zrx
9d9DYeyp9RNHlyeJLJW5uVUFHEUEVtb4LPQT5VlsjTTnRibErEH71Zim7XgA56ca
bJM1EP+ZNBmyk7EAI4z7vziZvG49MTgHC9V1Wpqrc5F8mJgRIr7rQJveyMuNTOKD
n0kxB4Aqg7R1gy+l0iusYQE4LFODw1s+o5atg2mAioLRVbz/ZZ94vsXbjrv1BLKg
9ahkkUp0zqwNMRczX8TV8SaBWvNBorMzd2tguu5abu801QhlewNMlV34Xj1hzbvY
o6ZyNCJaee3472fLdoj/JJWklJ7LHNZVOz+lov1CVf4Om6E9SE/O6BhD2oFfRONZ
C7eu1k6mcKurS3SN3ol8Cze3fYq4Qldy0diBsw/kxPpJQR+XW4BCeY4zPQnHBdtS
Y6Su4WO3+yIzIEFtRR0YRxEoq8ahOGC8h5JvYLf5XcxUKubxs7FIFarXbzK9k8M/
cVUFIsOEUX3l7lO/bZWu9YcjsrznPAhwOST1OJDrnv8miNt6Si/9jjiMWwrPlbOs
FR+PPVZUCNVeanoa90eYrLoxikCKCx9erzGdFlL/jdFWhgGQzsnS/XmiSRbaSqY8
EdxDNjQ4nd3p3UVm4Fzo3WZ71VblJBBOujV5doYSnFZnw7cjDmBa60P5BmmiJ4ko
xt7NEC1OqbSpDvaJNiVz
=dHvR
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
