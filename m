X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Tuesday" "6" "October" "2015" "21:38:11" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151007043811.GB19384@hunt>" "43" "[oss-security] CVE Request: ImageMagick" nil nil nil "10" "2015100704:38:11" "[oss-security] CVE Request: ImageMagick" (number mark "        seth.arnold@ Oct  6   43/1369  " thread-indent "\"[oss-security] CVE Request: ImageMagick\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21625 invoked by uid 550); 7 Oct 2015 04:38:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21600 invoked from network); 7 Oct 2015 04:38:25 -0000
Message-ID: <20151007043811.GB19384@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@ubuntu.com
Date: Tue, 6 Oct 2015 21:38:11 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ImageMagick
To: oss-security@lists.openwall.com

--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Moshe Kaplan has reported three flaws in ImageMagick to the Ubuntu
bugtracker and ImageMagick upstream.

https://bugs.launchpad.net/ubuntu/+source/imagemagick/+bug/1459747
Reportedly fixed with:
https://github.com/ImageMagick/ImageMagick/commit/0f6fc2d5bf8f500820c3dbcf0d23ee14f2d9f734

https://bugs.launchpad.net/ubuntu/+source/imagemagick/+bug/1490362
Reportedly fixed with:
https://github.com/ImageMagick/ImageMagick/commit/4f68e9661518463fca523c9726bb5d940a2aa6d8

https://bugs.launchpad.net/ubuntu/+source/imagemagick/+bug/1448803
Fix unknown.

The bugs include stacktraces and reproducer inputs.

Please assign CVEs as appropriate.

Thanks

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEaBAEBAgAGBQJWFKGzAAoJEPMhclmdjS6XXKUH70UpAaL0soEJa+R7p3P7jKDE
jhH+wDK3SHcnfBcc1UGVPxQfxxAHq3ZgO86QcsiPlxm7u7xbDAKdTmwTsATHQhOv
xJ/4+s1uSl38sl+e8IF9O3YW2AHs3UTwwdFfeSjLzi7JFJJ104kmCHIHuwZYD3if
SD0t6mF+WNNCebyrOnnal5h5l/MwwrFK5h1wIQZGz7O8dklrwKo+rvcIXGIVMhXa
9SHktMUIgrtez5IGP9YWmDuRFoAuFV80AvJV4QSzEJS7qNAd8YgJj5Oo6zQDzphE
TBCuRV8TdyejnjPMacz5iUbhQPO8QR+cUrZywVoUb1ZJGhw0qceFOw+7M9nW
=7zY0
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
