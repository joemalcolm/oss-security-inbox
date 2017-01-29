X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1417" "Sunday" "29" "January" "2017" "17:34:44" "+0100" "Martin Pitt" "mpitt@debian.org" "<20170129163444.GA1097@donald>" "42" "[oss-security] Requesting CVE for calibre file disclosure" nil nil nil "1" "2017012916:34:44" "[oss-security] Requesting CVE for calibre file disclosure" (number mark "U       mpitt@debian Jan 29   42/1417  " thread-indent "\"[oss-security] Requesting CVE for calibre file disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18268 invoked by uid 550); 29 Jan 2017 16:56:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28265 invoked from network); 29 Jan 2017 16:34:51 -0000
Date: Sun, 29 Jan 2017 17:34:44 +0100
From: Martin Pitt <mpitt@debian.org>
To: oss-security@lists.openwall.com
Cc: Kovid Goyal <kovid@kovidgoyal.net>,
	Antoine =?iso-8859-1?Q?Beaupr=E9?= <anarcat@debian.org>
Message-ID: <20170129163444.GA1097@donald>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: [oss-security] Requesting CVE for calibre file disclosure

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello all,

Calibre 2.75 fixed what looks like a local data disclosure vulnerability:

  https://github.com/kovidgoyal/calibre/commit/3a89718664cb8c

@Kovid: Would you mind making the original Launchpad bug
https://launchpad.net/bugs/1651728 public?

@osssec: Can you please assign a CVE on this one?

Thanks to Antoine for pointing this out, this deserves an update in stable
distro releases.

Martin

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYjhmdAAoJENFO8V2v4RNHEoUP/j9YpvYGBHdy8+Sz4ppRmmQz
6Xd0AE1c+Z092fqEdFi1h1xrJNra7oDEJzLfNuWhhi1zstBvs3WvpLdCqkv7TvBt
jls37dLr/R88cVB/FJRlqpgbTOprvk1bKDDrohhDKtCMbh5j2L7Xb9qsDmEn5aEp
j5vKHZ3ldZKggXTZCWcwRR4TCdwDyWFG31/218BNZzKZIOKedS5WJaVxnWQLdGso
WhSSR00/XYjuiIaSiYvuuH9Rf2ThRO8SrokXnfXWroQSJZht633GIZ8Ex98goGcM
LWHSeHRARJ3rKPMXsUvoYoI7Qsqtv7W8Zb/paXr8hVl3eKqjgBYSLdkVpaTteS0J
Nffo1VD6+LRXM+804Z3YXZInrQ/IIptX0pPqLhr0ymJt4eN/FoVGfFjGaz2U0fZQ
JLf/qYB+usVpws7Uj4QMNoXJ5saeiQsJXTJoxTKQiwQl0CB3dZQxLX7NRvZ1xOEb
0boivZqppPAfyOMb52l/8eRYvjQXuUxFE3pzJoCyBr1nNJQThyuy27aH+2VOjP3S
WIBbxqYl4ueo16JYaKKTdzZD2bqDZjm8JMIDH3eqf29hEkMvDFYK353QJ8/ze7CT
Yt2L6SBJrX0uTyVK8HC6Ps8BmunlCBA0unr0i/9HMEhiLTcmbhSg22k+JmGdV387
h0WKZ0MCUGQDOKiJuDwA
=nyb9
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
