X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1152" "Friday" "17" "March" "2017" "18:12:02" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170318011201.GC4073@hunt>" "35" "[oss-security] CVE-2017-6967 xrdp PAM auth_start_session()" nil nil nil "3" "2017031801:12:02" "[oss-security] CVE-2017-6967 xrdp PAM auth_start_session()" (number mark "U       seth.arnold@ Mar 17   35/1152  " thread-indent "\"[oss-security] CVE-2017-6967 xrdp PAM auth_start_session()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3465 invoked by uid 550); 18 Mar 2017 01:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3444 invoked from network); 18 Mar 2017 01:12:15 -0000
Date: Fri, 17 Mar 2017 18:12:02 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Cc: security@ubuntu.com
Message-ID: <20170318011201.GC4073@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FsscpQKzF/jJk6ya"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE-2017-6967 xrdp PAM auth_start_session()

--FsscpQKzF/jJk6ya
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, CVE-2017-6967 has been assigned to xrdp for an incorrect placement
of auth_start_session().

Full details are at:
https://github.com/neutrinolabs/xrdp/issues/350
https://github.com/neutrinolabs/xrdp/pull/694
https://github.com/neutrinolabs/xrdp/pull/695
https://bugs.launchpad.net/ubuntu/+source/xrdp/+bug/1672742

I believe this is the change upstream has chosen to use:

https://github.com/neutrinolabs/xrdp/pull/696/commits/44129acd210c803fc8bbcfaf1b0db05e5bb4034f

Thanks

--FsscpQKzF/jJk6ya
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYzIlhAAoJEPMhclmdjS6XBSsH/js2zncE6gLSN8GUPHuBAn5Q
enOiEXMX2x8WhrGzPjRg3EikmEockQjn0oX9JhrCD/weVoL5F31pNtCmi0rEs9GG
GYH165wBO2KXyeiMXyrwg+4OhtkP5/7KV7UYFzWvZJp5gBF+wi2odOxkB6FHxbrd
wMnITiaCJAxA5tclaEd9HkX+nWcLeYfgju6WKCXxd3rGyBiZTCitDVUyTV9HfDKG
dasadbRzYypBgA1gdbxi9s2KejnNP4AxM6FRmhOfpbUUhhUOTllz6X6IzCaZXWFs
auF5As8bry0V0cMzHNVXTdIyjRTOxCfrbZl6/cRU9ev09NccCJHhE7/VNwtFN2g=
=dAz0
-----END PGP SIGNATURE-----

--FsscpQKzF/jJk6ya--
