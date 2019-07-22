X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3746" "Monday" "22" "July" "2019" "12:00:13" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" "<20190722100013.GJ1168@jumper.schlittermann.de>" "105" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" "^Date:" nil nil "7" "2019072210:00:13" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "        hs@nodmarc.s Jul 22  105/3746  " thread-indent "\"[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21620 invoked by uid 550); 22 Jul 2019 10:00:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21600 invoked from network); 22 Jul 2019 10:00:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=XCjicOkcM6gHKgIi3ehgiXuUlMZ/xOP0k76Qgmll3tc=; b=sjSmbLURrcFrpfjr+oDUbtJhJJ
	gwaLo0L9MG12UXuQA7rzk8eS8GbCtsR7U9zGtyvMHatcv9NQAW79hg9QBZy67HSc7Ax3hK4Tpea4F
	aJKR3J0U+YhbvsSiRZ9URVeBttW6mkgRBNDmt8p0urj74SHSc3dJmz2UmBWXCc5Njay4=;
Message-ID: <20190722100013.GJ1168@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QDd5rp1wjxlDmy9q"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 22 Jul 2019 12:00:13 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead
To: oss-security <oss-security@lists.openwall.com>

--QDd5rp1wjxlDmy9q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

*** Note: EMBARGO is still in effect until July 25th, 10:00 UTC. ***
*** Distros must not publish any detail nor release updates yet. ***

CVE ID:     CVE-2019-13917
OVE ID:     OVE-20190718-0006
Date:       2019-07-18
Credits:    Jeremy Harris
Version(s): 4.85 up to and including 4.92
Issue:      A local or remote attacker can execute programs with root
            privileges - if you've an unusual configuration. For details
            see below.

Coordinated Release Date (CRD) for Exim 4.92.1:
            Thu Jul 25 10:00:00 UTC 2019

Contact:    security@exim.org

This is a *heads-up* notice about the upcoming release.
You may plan your availability and schedule an update of the Exim
packages supplied by your distribution or build the new release from the
source, once the release goes public on CRD.

Details
=3D=3D=3D=3D=3D=3D=3D

We discovered a vulnerability. We consider the risk of an exploit as
low, you need to have a fairly unusual runtime configuration. Neither
our default runtime configuration nor the runtime configuration shipped
by the Debian distribution is vulnerable.

The vulnerability is exploitable either remotely or locally and could
be used to execute other programs with root privilege.

More details and fixes are not yet public, but will be made public on
CRD, July 25th.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

t0: Thu Jul 18 2019
    - this notice to distros@vs.openwall.org and exim-maintainers@exim.org
    - open limited access to our security Git repo. See below.

t0+~4d: Mon Jul 22 10:00:00 UTC 2019 [NOW]
    - heads-up notice to oss-security@lists.openwall.com,
      exim-users@exim.org, and exim-announce@exim.org

t0+~7d: Thu Jul 25 10:00:00 UTC 2019
    - Coordinated relase date
    - publish the patches in our official and public Git repositories
      and the packages on our FTP server.

Downloads available starting at CRD
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For release tarballs (exim-4.92.1):

    http://ftp.exim.org/pub/exim/exim4/

The package files are signed with my GPG key.

For the full Git repo:

    https://git.exim.org/exim.git
    https://github.com/Exim/exim    [mirror of the above]
    - tag    exim-4.92.1
    - branch exim-4.92.1+fixes

The tagged commit is the officially released version. The tag is signed
with my GPG key.  The +fixes branch isn't officially maintained, but
contains useful patches *and* the security fix. The relevant commit is
signed with my GPG key. The old exim-4.92+fixes branch is being functionally
replaced by the new exim-4.92.1+fixes branch.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--QDd5rp1wjxlDmy9q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl01iSMACgkQr0zGdqa2
wUL66QgAzKsFL3E5WTtMSdoeN3KwquizFOs6kQM30dL39iHAFzRtu9hHvtqneoGe
VoPg0tboNgLkhfM4alDbXHxc9tEGfdl5nQzi2JhE+TNuP2Eenmp1nIWso2lEGNuo
uMWdpg9P+xXehEEjFrUUD2SqlSEeKVqcVSIOCoRYIP6mYuTv4i0D3eK203Hlpedl
fRSVfFSbt8hKKx/0sPTecof2a79L6X9M/+Wtg+y2HLwG/ubiwxuBwdL/hQ4Jl6Wl
LoWYyw1Ijin1O/vljGKjjU/ix/s+VBd9pa/vkc039O/t6HQqIcc7pZjqk4WY1w3s
kKTOb1KPSLdD/VHjdqA7AviVQFpO0Q==
=pHyL
-----END PGP SIGNATURE-----

--QDd5rp1wjxlDmy9q--
