X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2164" "Thursday" "23" "February" "2017" "18:26:20" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170223075619.GA10527@sin.redhat.com>" "57" "[oss-security] spice-server: CVE-2016-9577, CVE-2016-9578: remote DoS and buffer overflow from crafted messages" nil nil nil "2" "2017022307:56:20" "[oss-security] spice-server: CVE-2016-9577, CVE-2016-9578: remote DoS and buffer overflow from crafted messages" (number mark "U       dmoppert@red Feb 23   57/2164  " thread-indent "\"[oss-security] spice-server: CVE-2016-9577, CVE-2016-9578: remote DoS and buffer overflow from crafted messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20114 invoked by uid 550); 23 Feb 2017 07:56:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20096 invoked from network); 23 Feb 2017 07:56:35 -0000
Date: Thu, 23 Feb 2017 18:26:20 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170223075619.GA10527@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 23 Feb 2017 07:56:24 +0000 (UTC)
Subject: [oss-security] spice-server: CVE-2016-9577, CVE-2016-9578: remote DoS and buffer
 overflow from crafted messages

--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Two vulnerabilities in the server component of SPICE
<https://spice-space.org/> were recently assigned CVEs by Red Hat -
distros got notified during embargo, but I neglected to follow up here:

 - CVE-2016-9577 spice: Buffer overflow in main_channel_alloc_msg_rcv_buf
   <https://bugzilla.redhat.com/show_bug.cgi?id=3D1401603>

 - CVE-2016-9578 spice: Remote DoS via crafted message
   <https://bugzilla.redhat.com/show_bug.cgi?id=3D1399566>

Both of these attacks are accessible to unauthenticated attackers that
can make connections to the SPICE server.  CVE-2016-9577 may lead to
code execution (heap overflow), while the impact of CVE-2016-9578 is
limited to denial of service.

Both issues were reported by Frediano Ziglio, and fixed in the following
upstream commits:

https://cgit.freedesktop.org/spice/spice/commit/?id=3Dec124b982abcd23364963=
ffcd4c370b1ec962fc9
https://cgit.freedesktop.org/spice/spice/commit/?id=3De16eee1d8be00b186437b=
f61e4e1871cd8d0211a
https://cgit.freedesktop.org/spice/spice/commit/?id=3D1d3e26c0ee75712fa4bbb=
cfa09d8d5866b66c8af


--=20
Doran Moppert
Red Hat Product Security

--ew6BAiZeqk4r7MaW
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYrpWjAAoJEGohqWcZR7qpP2cP/0e91YerC0+6t/b3ggqUd+r3
oEE3k8KbLyOX7mndPAtCXhMHl6nnu5lhVOsUMhuiGRElLzHv+IZfAwZG80hoW31t
9MGZH3BtZApUHfyl07s9lxPuBpjbfthkruENLsgrd4hseo83TLkr2igl3UQJTLcv
3t9S2u7n5V45pCbG0weYhNkeCHC/ZBC5QSMcP/HsEsimEu8mExWJv9U38pqK91qd
uzQQbpfXJl1OKitlWo4tKpXsQ37oPRMa/1LVnbMG9HUdDvFBLMeOE6AfD/VaF4LU
w+h/5NLUUMT4c2wzGpw68Aeu7M4VhLtBZbOAcRcObV59S7ccnAMYYToLUiN5oDo5
WtjPDWOScHdEUG5wYtm1GGGezBM5dGsi4gKh7eJDGAeKl5rGOrwRn+m8t/ZvrXRl
z4T/lyvAUtIlJrYYm3R9fmtuXLOygtnWGrcyfSriMdBMrOqowzg/ntbrO5SxhtqC
o7Nqf0X6RuaV7hR5m+a5nlI3oG5o6KJ7Zg7ZM9E6CCOYO+L/5bMPRJWUDrOqXIG6
0GSXtR42HTE4Y+V3Vxiox7BY4db2BTzLZ0niB30LSXsjEKPY3jjywoUByVDM9KAC
gs7ZV7AM3yQhT0zsEyBhrm4begzVBtHfTD2tOLkbLnymR4RpnT8avZ23fSByBI+J
h55ha/1Sm7uSDQtoThDq
=AKwu
-----END PGP SIGNATURE-----

--ew6BAiZeqk4r7MaW--
