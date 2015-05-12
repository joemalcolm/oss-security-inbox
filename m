X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1406" "Tuesday" "12" "May" "2015" "08:44:06" "+0200" "Philipp Kern" "pkern@debian.org" "<20150512064406.GA4254@home.philkern.de>" "41" "[oss-security] CVE request: libinfinity did not correctly check certificates for validity" nil nil nil "5" "2015051206:44:06" "[oss-security] CVE request: libinfinity did not correctly check certificates for validity" (number mark "        pkern@debian May 12   41/1406  " thread-indent "\"[oss-security] CVE request: libinfinity did not correctly check certificates for validity\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18042 invoked by uid 550); 12 May 2015 06:59:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9710 invoked from network); 12 May 2015 06:44:19 -0000
Message-ID: <20150512064406.GA4254@home.philkern.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
Organization: The Debian Project (http://www.debian.org)
X-Debbugs-No-Ack: yes
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: armin@arbur.net
Date: Tue, 12 May 2015 08:44:06 +0200
From: Philipp Kern <pkern@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: libinfinity did not correctly check certificates for
 validity
To: oss-security@lists.openwall.com

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Debian bug #783601[1] reported that Gobby - a collaborative text editor
- silently accepted expired certificates. The upstream bug report is
[2]. The bug is actually in libinfinity and the fix is available on [2].

libinfinity does support certificate pinning and hence contains the
ability to disable some checks like trusted issuer and hostname
verification. However the catch-all validity check was in the wrong
location.

Please assign a CVE ID for this.

Kind regards and thanks
Philipp Kern

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=783601
[2] https://github.com/gobby/gobby/issues/61
[3] https://github.com/gobby/libinfinity/commit/c97f870f5ae13112988d9f8ad464b4f679903706

--r5Pyd7+fXNt84Ff3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVUaE2AAoJEERuJUU10FbsBT4IALhWuZX6INkidamxE3wzknYV
oetuEEAzpMXD98hy+6pry0UGQuY5QbPo1wAXK5IziEgoptcSxI9Z0EKhpIeJx6Jq
2c1DbN0OKgd0FxCkmsAT9+e27A5+p0qA+xZ7K7L46f6riYUzoa0fcXKrhrgq5Rix
nCAMZcS8Sv/U1PaEMGOLqP78lxUxvDo9GyBiLaMfhQ6dmLDoBj66SzYYDafUIqHc
4GWw2HOLJZS3rczPO1iyE0my0BLZU5zS5SSq5ECTjKTu8/wqXEkUdiWdMz3zwVck
03DwynLxVE/018f7GrslHDScz/nNQNpxZLCR97Hs4fD6F8/v5/1+kjDSa5pSmXA=
=Sw5C
-----END PGP SIGNATURE-----

--r5Pyd7+fXNt84Ff3--
