X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1856" "Thursday" "8" "October" "2015" "14:29:30" "+0200" "Matthijs Kooijman" "matthijs@stdin.nl" "<20151008122930.GS8704@login.tika.stderr.nl>" "50" "[oss-security] CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability" nil nil nil "10" "2015100812:29:30" "[oss-security] CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability" (number mark "U       matthijs@std Oct  8   50/1856  " thread-indent "\"[oss-security] CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11542 invoked by uid 550); 8 Oct 2015 13:12:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19939 invoked from network); 8 Oct 2015 12:29:45 -0000
Message-ID: <20151008122930.GS8704@login.tika.stderr.nl>
Mail-Followup-To: Matthijs Kooijman <matthijs@stdin.nl>,
	oss-security@lists.openwall.com, alejandro@debian.org,
	kevin@krinke.ca
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kd7cwL6IYJrQFfWn"
Content-Disposition: inline
X-PGP-Fingerprint: E7D0 C6A7 5BEE 6D84 D638  F60A 3798 AF15 A156 5658
X-PGP-Key: http://www.stderr.nl/static/files/gpg_pubkey.asc
X-PGP-Note: Previous key 8A2FAFBC replaced on 2014-09-07
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Preliminary-Spam-Score: -2.9 (--)
Cc: alejandro@debian.org, kevin@krinke.ca
Date: Thu, 8 Oct 2015 14:29:30 +0200
From: Matthijs Kooijman <matthijs@stdin.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - perl library UI::Dialog 1.09 - shell escaping
 vulnerability
To: oss-security@lists.openwall.com

--kd7cwL6IYJrQFfWn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi folks,

can you please assign a CVE for the UI::Dialog perl library? I
(re)discovered a flaw that allows arbitrary command execution when the
library is given untrusted strings to show in a menu prompt.

The flaw was initially reported in 2008 at
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=496448 but it seems
this never reached upstream. I recently reported the bug upstream
https://rt.cpan.org/Public/Bug/Display.html?id=107364, see that report
for some additional details.

Upstream has indicated to be working on a fix (see upstream bug), but no
patches are available yet.

Impact seems limited, I'm not aware of any well-known programs that use
this library and are vulnerable (only two Debian packages depend on it,
both use a UI::Dialog backend that is unaffected).

Thanks,

Matthijs

--kd7cwL6IYJrQFfWn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWFmGqAAoJEDeYrxWhVlZYpBAQAIGNt/67mafPV/p7jefKhOs4
APIEOEIzmqFcdhj/yboaHCoxPEw8FNuDQ3uZf31jRu4Ps+t2szuHtC64fmOYAlnT
P1KA109Qh6cZhk5+nDsRab0ior02zVUkcxbsVfXy+9v4W8ORMMpAhkylWe36wQQ9
NoV6W0GGvfBJrWkDglUnxEOjIbcY3m1BK6VT0grxkGiuPqzHeIUTHRpgBSvlXOoe
UoYmPTgl9J+/fUkuv4MuHxQcQ3DbTu7yuLwSS0rBmgmDqDPiUt10XceHN/Rw3JiT
7m97Sf1xVGhN33dVuV7oy+qGb4clSdYZAFzpwObZzyJ4W5V0CxFQyqppKNyGH+nm
QhdX29/psLA0eTYIOls6R/W1GtEpDGoVKr1aQc74hdMWeBSpox7bDERmxHkJW4ET
JofAW6cb1Vv0T5jEoL4qNgE8k5LRxOKxyLez9JQndCom9OI+Nfg9u6+3dkMNWRvg
vEtHTg6ihN8Dst+ZHbrnVh9pKVCDdEP2EiSniziCANiokx3k44QPbi70ilJFlyRy
Wedw85tqZ/JAPP6SmQj3K4lIml3+2FFo1kSrXZ7+vnRuY4A/AXW1rfjFPxwiPhv2
VGeCe+uZajyfkXJO6/c2vUni8c+eQaNRheJFPGz1EzbHkv29rDG8dtP0inUD2Ftf
IAtUuibnOErDsNE1pjMG
=ehJt
-----END PGP SIGNATURE-----

--kd7cwL6IYJrQFfWn--
