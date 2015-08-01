X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2506" "Saturday" "1" "August" "2015" "17:37:42" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1438447062.3225.7.camel@decadent.org.uk>" "70" "[oss-security] CVE request: Use-after-free in path lookup in Linux 3.11-4.0 inclusive" nil nil nil "8" "2015080116:37:42" "[oss-security] CVE request: Use-after-free in path lookup in Linux 3.11-4.0 inclusive" (number mark "        ben@decadent Aug  1   70/2506  " thread-indent "\"[oss-security] CVE request: Use-after-free in path lookup in Linux 3.11-4.0 inclusive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24055 invoked by uid 550); 1 Aug 2015 16:38:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24037 invoked from network); 1 Aug 2015 16:38:05 -0000
Message-ID: <1438447062.3225.7.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-uBIHRTpn0oqOmihUhdIU"
X-Mailer: Evolution 3.16.3-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: security@debian.org, Brad Spengler <spender@grsecurity.net>
Date: Sat, 01 Aug 2015 17:37:42 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Use-after-free in path lookup in Linux 3.11-4.0
 inclusive
To: oss-security <oss-security@lists.openwall.com>

--=-uBIHRTpn0oqOmihUhdIU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bug was introduced in Linux 3.11-rc1 by:

commit 60545d0d4610b02e55f65d141c95b18ccf855b6e
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Fri Jun 7 01:20:27 2013 -0400

    [O_TMPFILE] it's still short a few helpers, but infrastructure should b=
e OK now...
=20=20=20=20
    Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

Fixed in 4.1-rc3 by:

commit f15133df088ecadd141ea1907f2c96df67c729f0
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Fri May 8 22:53:15 2015 -0400

    path_openat(): fix double fput()
=20=20=20=20
    path_openat() jumps to the wrong place after do_tmpfile() - it has
    already done path_cleanup() (as part of path_lookupat() called by
    do_tmpfile()), so doing that again can lead to double fput().
=20=20=20=20
    Cc: stable@vger.kernel.org  # v3.11+
    Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

Thanks to Brad Spengler for pointing this out:<
https://twitter.com/grsecurity/status/597127122910490624>

The fix was also included in the following stable releases:

v3.13.11-ckt22: d8ef4f4c5465 path_openat(): fix double fput()
v3.16.7-ckt12: bedf03d0b88d path_openat(): fix double fput()
v3.18.15: f42b455331b5 path_openat(): fix double fput()
v3.19.8-ckt1: cf32bb6d9d18 path_openat(): fix double fput()
v4.0.4: 335d3678d60d path_openat(): fix double fput()

Ben.

--=20
Ben Hutchings
One of the nice things about standards is that there are so many of them.

--=-uBIHRTpn0oqOmihUhdIU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUAVbz11ue/yOyVhhEJAQoXHBAAjoZJVAZjTrgz/Unk+AY+/tK8R5I4YCfY
2er8fqcTiX1TAOf7qszh57d212gjQlcYbvDy8XuGcbnhO3M7+Fe1EzPnon3HG3J/
ghh6VSIpN41j0sNvnbhTjU5RQvHnIggvDxpN4pbVlaotk71xWiDjaJBEkyQ8vXmS
M/LXGPIjzicqwC0ZeEXfkRI+UKCAQuZK4FkLLfU7JbRoVFhXj6vYTlHpFlCCrtRc
8zIjsGw3uO1PMIRcvCFIaoI1H4s/ON4vypni4VV9GYxfbQn69uglifsic3KD+JKH
996GFGg3UFgLt9zwR9j9bD4A2rIePjONF+np1YRa5Hvhp4PJRKL280fNH7GxQa/X
k87vIiVYgh0YQPyi7Jx8atPO9SQdv8lNbm4SHFKShVp6X1In118Zm+QhT2JF0QLz
hn5rIIJ2/dJWTi0VVBH0hHufxBu2ekf7IZgjBH7UXwxcPkgJVpKZlslpsdnKQvYX
6+datSxlzfvP8TW+c1hWYZ4VRpgwzW2ZnTVV43gdOpYuWWz5Rs+LTGPqNwHNwiZd
B1Q+dE4Tguiu/LMCVuTrKq8QDCpmGgnvxv0s4wS4xnHdt6w+CEgOb6JXjCYosB6/
xqnaCWxKUd3ccPmQnF6bPr7WajErOlZMdx2bjnccTGf4Gf7wGSQaq1ZWnIMH/XHv
5cpjGarPKGY=
=Tp4L
-----END PGP SIGNATURE-----

--=-uBIHRTpn0oqOmihUhdIU--
