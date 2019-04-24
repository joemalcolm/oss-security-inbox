X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1935" "Wednesday" "24" "April" "2019" "11:12:42" "-0500" "Jamie Strandboge" "jamie@canonical.com" "<20190424161241.GB13360@iolanthe>" "52" "[oss-security] CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil "4" "2019042416:12:42" "[oss-security] CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" (number mark "U       jamie@canoni Apr 24   52/1935  " thread-indent "\"[oss-security] CVE Request: golang-seccomp incorrectly handles multiple syscall arguments\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE Request: golang-seccomp incorrectly handles multiple syscall arguments" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11858 invoked by uid 550); 24 Apr 2019 17:46:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10116 invoked from network); 24 Apr 2019 16:12:56 -0000
Date: Wed, 24 Apr 2019 11:12:42 -0500
From: Jamie Strandboge <jamie@canonical.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: security@ubuntu.com, mheon@redhat.com, paul@paul-moore.com
Message-ID: <20190424161241.GB13360@iolanthe>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] CVE Request: golang-seccomp incorrectly handles multiple syscall
 arguments

--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

https://github.com/seccomp/libseccomp-golang/issues/22 describes a bug where
golang-seccomp incorrectly generates BPFs which OR multiple arguments rather
than ANDing them. This bug was fixed here:

https://github.com/seccomp/libseccomp-golang/commit/06e7a29f36a34b8cf419aeb=
87b979ee508e58f9e

which is currently only in master and not the most current 0.9.0 release. S=
ince
golang-seccomp is meant to be a golang package to facilitate reducing the
syscall surface for applications and this bug produces incorrect BPF to ach=
ieve
that when specifying more that 2 syscall arguments, this probably deserves a
CVE assignment so distributions will see the issue and incorporate the fix =
into
their stable releases. I've included upstream developers Matthew and Paul i=
n CC
for comment.

Thanks

--=20
Jamie Strandboge             | http://www.canonical.com

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEETCDAa12L3miIVNKKUdvcWMxVlXMFAlzAivQACgkQUdvcWMxV
lXPYzQ//f5RLPWZSo/fSHDg6iY7p7kCc88eB7l8dYwNS4mU5k7TesKkf5LsabHqj
CiLAZY71dhEclSiVyxmxswc0Sb28eGOv8cZWBA6lnA9mfIPBlTdDmzklVYgIb4Xo
H+Yjw6bqc9GV5nsW2edzYkSAnkXTY7Gvt3LaL+OaMbEjv+RXA6sS5a4W+64Lfm9+
gJYK4cfruA0oidNbhedZNxU/cTG/Ze2WpvunLH/OIxNNTcvxcuefiU2y4tGoRQdr
OPaUvpgWuLKzGS2s01U/aePE/rPoyye8Rs7SzXfk4dCtlzB6kshw+hsDse+yKkc9
jFu4DNgaS9qn3bbw9Oj0fu3r3klGbNlf+HKy4eHICQWJjtQiH77UA15OmYcpk45H
7Prp5DKKswP1TNXmr/w6vD6/lElqVSRwgZT0muTlGapQV4+NOkrQ+inQyFjxg8hu
60Z6eSGviaAkYx6s18yVHDbJhW/zYCk3to++tsU9mVHy/HKnMR5u89MsB0jR6LQ1
ipRIek9GU3chcIIe24dy3dQQshAMvIsY7VlNrLzPoxlG+BZ9xi62OnFBeLZWTzbJ
SA9XPvfeb9o+z9Lt7/bGZgjR/Q6oRRXZkjnu6tNffOAo2mZTijxdNcU9ypfHaBs/
VeQCwcChPYDmhG1nuKrjH5+1w4yttxNh3OitE1hbgomDDmKkkps=
=jqgL
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--
