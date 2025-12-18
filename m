Received: (qmail 17420 invoked by uid 550); 18 Dec 2025 21:05:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16354 invoked from network); 18 Dec 2025 21:05:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=9eW9WR3HQAhU4i3Umm4k+dEhsAl+yzTsHKdmQ1XAffo=; b=Wnefj7J2Df3fkO/pxvUPbmn5mm
	MCaQmdJWL38mJYOhh86XHNSlldJBOXnnVqM9VNpZ84UmmFWBhdsK9/jFHnfmhoZe5YfRJr8ZaoVdm
	E8hfPG3pkrE7JoDPoAiKOd+2CIAZ6UqLyLTlj0SJzzae5TLE+hQYBEK+h4+yEYR4lH8IblvNrtIca
	1D4U2JZ+AylQo888ZSpIvDpF8V4wiIt6yaM/8MnrkX3RtvHkOpFSHAuFffK2dqW4jVBTCp5XIKBlv
	8GUPxbZRa07sECpOv3cyb/EHSReD+TkaClXLUwGBhKTwF6z5U5/en5kfnMr5tFQES5kJETUlZeTdq
	jL5VUnAA==;
Date: Thu, 18 Dec 2025 22:05:23 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <aURskyC_etNY3SI9@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
References: <aTlswbw7mu0DyFec@jumper.schlittermann.de>
 <aTrbpVe2BkcRT6L9@jumper.schlittermann.de>
 <aT6ayYIIGv8i5vFu@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LesflmYWuqrXSfTh"
Content-Disposition: inline
In-Reply-To: <aT6ayYIIGv8i5vFu@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
Subject: [oss-security] Release: CVE-2025-67896: EXIM-Security-2025-12-09.1: Exim 4.99.1
 released

--LesflmYWuqrXSfTh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

According to our previous CRD announcement we released
Exim 4.99.1 on 2025-12-17 at 15:00 UTC.

Credits to Andrew Fasano <andrew.fasano@nist.gov>, for pointing out the
issue.

His original report can be found here: https://code.exim.org/exim/exim/src/=
commit/d46a6727798fc48d1756190a6d46d19216348c25/doc/doc-txt/exim-security-2=
025-12-09.1/report.txt

Short version: Exim configurations using SQLite lookups or using SQLite
hint dbs where vulnerable to SQL injection attacks, which could lead to
heap corruption. Distro Exim packages usually do not use SQLite hint dbs (It
is a build time option. Grep the output of `exim -bV` for "Hints DB".)
But many packages allow SQLite lookups in the runtime config (Grep the outp=
ut of `exim -bV`
for "Lookups".)


The original release announcement, as sent to exim-announce@lists.exim.org:
--------------------------------------------------------------------------

Dear Exim users and maintainers,

we are pleased to announce the availability of release 4.99.1 of Exim.

This is a security release. It fixes CVE-2025-67896 (aka
EXIM-Security-2025-12-09.1), which was introduced with 4.99. Older Exim
versions may or may not be vulnerable and are not activly maintained
anymore by the Exim maintainers. (To the best of our knowledge, 4.98.2=C2=B9
should be safe.)

Configurations using SQlite for lookups and hintdb were vulnerable.
Details: https://code.exim.org/exim/exim/src/branch/exim-4.99+fixes/doc/doc=
-txt/exim-security-2025-12-09.1/report.txt

Exim 4.99.1 is available:

 * as tarball
   * https://ftp.exim.org/pub/exim/exim4/
   * https://code.exim.org/exim/exim/releases

 * directly from Git: https://code.exim.org/exim/exim
   tag: exim-4.99.1

The signatures on the release tarballs and Git tag should be

 *  The release files are signed by key DD98D92359DE9E3C2663F291697F0EDD680=
=3D
99F6F
    "Heiko Schlittermann (Dresden) <hs@schlittermann.de>"
    aka "Heiko Schlittermann (Exim MTA Maintainer) <heiko@exim.org>"

=C2=B9) The original announcement mentioned a wrong version number.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--LesflmYWuqrXSfTh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmlEbHwACgkQaX8O3WgJ
n29cQQ/+OaqhOLnRtlhqOMdU7ncTWR8J9SaUiMIFNfWvEPkYzIO84GW1ErqMgn/q
/A7GxCu5raRnCZ0L41pNVb1zd0VSe32P/ZxKb5M+27K8SSKKyrkrXpf15R51TFMU
UcZ3YsNZBeJufRxOIpYnmg4uMp8dge3AzPV/2GCwfT6CHr2v4yHET6g991s7Rzoz
MoQO0tVDvCYbLM6+L1DsbxAk6oi52rw5HO6ox5CEamUPeXz25yeX2BuKmop4pXTJ
oqXZiGON1q2UwGhcThomvdvitnjkpGhkPGJKz1rPmTUmKn/NArCS7P5Q8YjOVZGx
IZctfDBSbpMGt0HtCoThVjoSV+aLdqRL3j3sxYl7XPUZjamXYaalJHXYsjxqAzbS
1OfRDU5ZklhbREReQye8TPXW7Oy/NAglGL8hUMf9bb1ZvWEUdbRys4bYHSWkPsu+
Lv4tdchzLkMF9T3N+1fKokJFR0/9DhbVaBzVH0YiC+Y6WTi1zUd5rmG8Eua+3xNT
demnLvpsN6ALH20d3e/LLrOxnXliMdXn43dOY3ABWr2gHTF/ztvrEYvBh0CN5RBU
gGoSgEiM+fJRYLefponwFa+zn4g8+yN3QWD2uDJbVAoNd+JGCHsCGPbGDlrzRVBw
O0kdOHMXJneWXuhVwNOxxBaupqKJowWjYEItzw5jGbbFiVWuCEQ=
=zv8h
-----END PGP SIGNATURE-----

--LesflmYWuqrXSfTh--
