X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1609" "Wednesday" "21" "October" "2015" "10:36:33" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20151021153633.GA2430@boyd>" "45" "[oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102115:36:33" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        tyhicks@cano Oct 21   45/1609  " thread-indent "\"[oss-security] CVE Request: BusyBox tar directory traversal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9662 invoked by uid 550); 21 Oct 2015 15:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9635 invoked from network); 21 Oct 2015 15:36:48 -0000
Message-ID: <20151021153633.GA2430@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: security@ubuntu.com, Denys Vlasenko <vda.linux@googlemail.com>
Date: Wed, 21 Oct 2015 10:36:33 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello - The BusyBox implementation of tar will extract a symlink that
points outside of the current working directory and then follow that
symlink when extracting other files. This allows for a directory
traversal attack when extracting untrusted tarballs.

This behavior was documented in the BusyBox source with the following
2011 commit:

  http://git.busybox.net/busybox/commit/?id=a116552869db5e7793ae10968eb3c962c69b3d8c

I've created an upstream bug report:

  https://bugs.busybox.net/8411

Can we get a CVE assigned to track this? Thanks!

Tyler

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJWJ7EBAAoJENaSAD2qAscKe1kP/0g9Jp6M3pEtT8sZRObezRzp
r8KWYFQHqyOGo3BTxCcT4+Uue7LdycM2hiCzFxP1Et12vkJ29Esx+d0zxIkyC2NP
kXKsYZD7lIyUU3qnQl2Ii/WWGqLkfMRybBXdlBGxcaWDKschkZpK1nN6uPthGL00
pg4mYqPShoPWgGra8zTNXQeiyRBx6SmoJRpvXN+RBzWA+dfKY91B23Y25ZxL3xxf
Hy7jdaGxjAc6bRkgBVTTCx0X05/raGXFX4t2I8PGY06QR50YcWdttwpMdU1mM4sw
yUhQSQac+QTKnhrb7F55N+3Pkx9TWG+XuBHrvJhtK8suXl3BRmQvWg1T3UMNC6Wt
UQKyO+co8zM8CSRKziDaJtJOTJwwfBiF97brY0pnuKAv55atQ1uWO5XMHi31wuGu
zUh8yqyZmNmB/nuefm9i2L0Bj/qVprqMjEWpyd9Z/IEeADsVXAO8hERTH/7HzUhA
AKPSkaJ3qyfZc3G8qR4RCPhgAA8B04SPHTotodDSr9AZfousWIigLbjrYIJrT9pB
aiiJ9f20ZI76L8P7fzjL4a/90oKCQWFFj1jI0dP4O2okRkzJTp4THWzAeRmp+zt/
oRwtz3lxe6rNQxWiTsT29eH35fHaFpMRXcFJiNJSsTmk3mI2btCtQeXC88wzt4wK
t36kDdmt/EA/AubPqZUl
=Xvwg
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
