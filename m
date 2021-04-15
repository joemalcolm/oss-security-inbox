X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2844" "Thursday" "15" "April" "2021" "14:33:06" "-0700" "Steve Beattie" "steve.beattie@canonical.com" nil "69" "[oss-security] [CVE-2021-3492] Ubuntu shiftfs Linux kernel file system double free vulnerability" nil nil nil "4" nil nil (number mark "U       steve.beatti Apr 15   69/2844  " thread-indent "\"[oss-security] [CVE-2021-3492] Ubuntu shiftfs Linux kernel file system double free vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-3492] Ubuntu shiftfs Linux kernel file system double free vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25977 invoked by uid 550); 16 Apr 2021 10:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13935 invoked from network); 15 Apr 2021 21:33:20 -0000
Date: Thu, 15 Apr 2021 14:33:06 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210415213306.GB5315@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] [CVE-2021-3492] Ubuntu shiftfs Linux kernel file system double free
 vulnerability

--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Shiftfs is an out-of-tree stacking file system for the Linux kernel
included in Ubuntu kernels that can be mounted by unprivileged users
within unprivileged user namespaces.

Vincent Dehors discovered that shiftfs, when passing through
ioctls to the underlying file system, did not properly handle faults
occurring during copy_from_user() correctly, leading to a double-free
vulnerability or not freeing memory at all. An attacker could use
this to cause a denial of service (memory consumption) or execute
arbitrary code.

The commits to address this issue are as follows:

 Ubuntu 20.10:
  5c4ddd2d104e ("UBUNTU: SAUCE: shiftfs: free allocated memory in shiftfs_b=
trfs_ioctl_fd_replace() error paths")
  https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/groovy=
/commit/?id=3D5c4ddd2d104e5561724c636c9a83ab722255dc2e
  a92f3ddbb391 ("UBUNTU: SAUCE: shiftfs: handle copy_to_user() return value=
s correctly")
  https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/groovy=
/commit/?id=3Da92f3ddbb391ce466a470e578cb24a37d7eb813c

 Ubuntu 20.04 LTS:
  8fee52ab9da8 ("UBUNTU: SAUCE: shiftfs: free allocated memory in shiftfs_b=
trfs_ioctl_fd_replace() error paths")
  https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/focal/=
commit/?id=3D8fee52ab9da87d82bc6de9ebb3480fff9b4d53e6
  25c891a949bf ("UBUNTU: SAUCE: shiftfs: handle copy_to_user() return value=
s correctly")
  https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/focal/=
commit/?id=3D25c891a949bf918b59cbc6e4932015ba4c35c333

As shiftfs has not been accepted in the upstream Linux kernel, the
upstream Linux kernel is not affected by CVE-2021-3492.

This issue is also identified as ZDI-CAN-13562.
--=20
Steve Beattie
<sbeattie@ubuntu.com>

--ZfOjI3PrQbgiZnxM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAmB4sRIACgkQLwmejQBe
gfQHsw//bz3pGmpkB90IEdMNSNAX1Q36iztvKw/gmBJiaB3oihbKCPaHs1b9AvkH
dQyPkbhamYS395JkjlunBBfz37t7BgGPbFdn5ECss4Cy40X83923mUHcD9I6qKR7
PzRJp6QWkrSzqApuPbU4X5dAAVZmamdESdNE7Y1UkeMo6DbcY0/rJ1l+01VNsAFs
iW+xsILyJ5kUM2kAWm4PrgAsxg7CtC3q5FCYXzWBz75raLk1C7ueDhR78P4+y3IO
vFbGIAGKIebpt+4CtlAR9q2Ji/Rs8qgQiAyaHJw/vDyZ9Kx8UoLA7RX5mpUpsjI/
v+3SytcCtHQK6/ykf5M4A/Z8JK4DdF0FiFOXdxQJMlGsVMVBSFgoaoHikQZi/r63
Ky9Y3vUbFWltn4zKTN73ghS3lDR+T/HBTuQfAQx57WmY7XcB6elYrZYUfASzbYAk
ypeRmdATHOUcxCUtPu6hosbNoUmG7is4h7wUpb42KN2hX5oBI7gNV2QxP9HbD06o
piJDANHZymAOfW6Q+4jDFsoDRcWRiGC6ch4ddu+W4lHxCN5i2HEY+J19gZjHqsHB
DcNtvGyoYFv8L6IlwGfjKVrfUesvwpXx+cU2GHWet4nGqJ7+lDxzFXh/YLiwwugA
cF8btIjuPKsqJAQxncdVdJNt+vRsCaLK/SKIi0cng4PSiX/pvpg=
=oZbs
-----END PGP SIGNATURE-----

--ZfOjI3PrQbgiZnxM--
