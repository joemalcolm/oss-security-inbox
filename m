X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Thursday" "2" "November" "2017" "15:16:55" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20171102121654.GA5905@gremlin.ru>" "52" "[oss-security] tftpd-hpa - insecure chroot()" nil nil nil "11" "2017110212:16:55" "[oss-security] tftpd-hpa - insecure chroot()" (number mark "U       gremlin@grem Nov  2   52/1736  " thread-indent "\"[oss-security] tftpd-hpa - insecure chroot()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11918 invoked by uid 550); 2 Nov 2017 12:26:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32296 invoked from network); 2 Nov 2017 12:17:08 -0000
Date: Thu, 2 Nov 2017 15:16:55 +0300
From: gremlin@gremlin.ru
To: oss-security@lists.openwall.com
Message-ID: <20171102121654.GA5905@gremlin.ru>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Subject: [oss-security] tftpd-hpa - insecure chroot()

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Just look at this code and guess how it would be compiled on most
systems:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
    /* Chroot and drop privileges */
    if (secure) {
        if (chroot(".")) {
            syslog(LOG_ERR, "chroot: %m");
            exit(EX_OSERR);
        }
#ifdef __CYGWIN__
        chdir("/");             /* Cygwin chroot() bug workaround */
#endif
    }
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:-)


--=20
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZ+wy2AAoJEJCdrEXvOx+og94P/RkFt5ZUQRn5ynnUYvgFm8oX
zmpL9h2xJtNThHIZwT9ZFkSerP8FdDvzB4AUVANq5jcIlBEJS/vL4b+5rqbeNS74
Oh4DKLABt+P6a68k+qbjIPBMHMDn4zGMqE249GLJF8MbPHkwMV8/OB7YAJ3vIMQw
BbPDIHvNZjbPhTmiADD3fdzd261KqSCjH/r/FKIWtb1huI6QLo7hBeGbN9gUtCeM
Cmisp8Q1tJdlg2W2p+tlM2PtAZ2m60iwfVrGmwF8ehtJEvCQ9hN0H+oLUZxRbGXJ
NuWhDN1YXXSFtGAFVGirD3B04bsT9IyO08JtTNhQIGRYcQsQuLQH9mTC17eV8mbb
fO/NZxpzJij3S8DGA0PSiVzgbJeJq/L2U0UVDbJuFr25Nd6DhCmPRqCymgQt/3n/
7Rh1zH1r/AYmzYRn8r/BAGojzvS2+cMN41HvOJ/IkziCGDXxV9PsGDZ3PLkza+EY
/sRNkan5vOz+5GPyk92FLjEiGofwjQL0LFA7+Gv3F2rV918ONr0X/lLMNgv9HJwI
L6JsgdxoYGrOdW+qr/nYI18wDtchX8cHvBY7824cwdAr+etgyZA27FjOjsQf12ek
+BFn+ciePmX02lhdaH7dJYeo/CKCkxDuOcudjQcX6mDenJf6nFOW/h/v+n5rSlK8
ENz7ZQtXN0dG5xPD7C8H
=g0zj
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
