X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1100" "Wednesday" "25" "May" "2016" "17:27:11" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160526002711.GB26856@hunt>" "33" "[oss-security] CVE Requests: libimobiledevice and libusbmuxd" nil nil nil "5" "2016052600:27:11" "[oss-security] CVE Requests: libimobiledevice and libusbmuxd" (number mark "U       seth.arnold@ May 25   33/1100  " thread-indent "\"[oss-security] CVE Requests: libimobiledevice and libusbmuxd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9357 invoked by uid 550); 26 May 2016 00:27:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9331 invoked from network); 26 May 2016 00:27:24 -0000
Date: Wed, 25 May 2016 17:27:11 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Cc: security@ubuntu.com
Message-ID: <20160526002711.GB26856@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Requests: libimobiledevice and libusbmuxd

--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Please assign CVE(s) to libimobiledevice and libusbmuxd; both libraries
accidentally bound a listening IPv4 TCP socket to INADDR_ANY rather than
INADDR_LOOPBACK:

https://github.com/libimobiledevice/libimobiledevice/commit/df1f5c4d70d0c19ad40072f5246ca457e7f9849e
https://github.com/libimobiledevice/libusbmuxd/commit/4397b3376dc4e4cb1c991d0aed61ce6482614196

I do not know who to credit with discovery.

Thanks

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXRkLfAAoJEPMhclmdjS6Xgj8H/28EsAgfwg5o/x8mqwJVt9zX
vIQUG9kLt85XBnagzTOZeZeFwfQmTylSPgOCKlyut0a/YXUB9YjTds5PQlQcb+OQ
IAntk70XiCLjY5hmZ1sQj37P79FBG4clz33xoqivgmG3D3END3QP0CD3pcuAYw4t
a1wP53y7G9KiJujxKr7ri8vEzxYaXT2mEX7HHNG7dG9DHX7Pw/ihbyhOG2+ROKwE
f/0f8zC3LSanaSfsYUKLTuN6xKla7uMCj9ljKXykhjAPz1JTVra7luyqQZVuw1uj
FfBSFH7NQyFNSdgOOdF1utBd3bYwvXFPmTlFp6xAdZ79jEaJ4wjfnPw70Oz1IKk=
=pXIO
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--
