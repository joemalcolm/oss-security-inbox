X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3022" "Thursday" "25" "April" "2019" "14:12:36" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20190425121236.GB9152@f195.suse.de>" "83" "[oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" nil nil nil "4" "2019042512:12:36" "[oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" (number mark "U       mgerstner@su Apr 25   83/3022  " thread-indent "\"[oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11867 invoked by uid 550); 25 Apr 2019 12:12:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11827 invoked from network); 25 Apr 2019 12:12:48 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 25 Apr 2019 14:12:36 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20190425121236.GB9152@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Linux kernel: no permission check during open() time of
 /proc/[pid]/maps in kernels < 3.18

--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I stumbled over a leak of memory mappings for arbitrary processes in
kernels older than version 3.18.

As it turns out the permissions check for the pseudo file in
/proc/[pid]/maps in affected kernels is performed not during open() time
but during read() time. This allows an unprivileged user to open a valid
file descriptor for these maps files and pass it to privileged programs
like setuid root binaries or D-Bus services running as root that support
file descriptor passing in their interface.

The privileged program needs behave in a way that the passed file
descriptor is read() with root premissions and the content is passed
back to the unprivileged user in some way.

For example the opiesu program from OPIE [1], if installed setuid root,
provides the necessary features to read arbitrary /proc/[pid]/maps files
as an unprivileged user. It reads only one line from the user's stdin
and outputs it again on stdout. By repeatedly performing this operation
the complete maps file content can be obtained. This is a quick PoC bash
script to exploit this to obtain the maps contents of PID 1:

```
exec 3</proc/1/maps
while true; do
    OUT=3D`/usr/bin/opiesu <&3 2>/dev/null | grep response | cut -d ' ' -f =
3-`
    echo "$OUT"
    [ -z "$OUT" ] && break
done
```

The issue was fixed in the kernel via commit [2]. I don't think this
ever got a CVE or a security note. As a result on systems running an
affected kernel hardenings like ASLR aren't effective against local
users.

[1]: https://en.wikipedia.org/wiki/OPIE_Authentication_System
[2]: https://github.com/torvalds/linux/commit/29a40ace841cba9b661711f042d18=
21cdc4ad47c

Best regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG Nuernberg)

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlzBpDEACgkQFMQFyXGS
NVN6Ug//dBRw8G2I2MWjg6Z9LO3V2a6NzKkgRRnYnx+RGnhh4aUddqAgi21WjVRe
H8O7tMwB8KCr0iOUudsabnQ5MaYhfH5O5BYGykhxW+VYK3H6qoq12R+bq8mmRlyH
NWm3MkX9TCyAk9592fL8CyZekXj5woOqCJ9O5tV0bVwwlJNGL2GtuGs8VmgX7gOX
ODhy5vvJYc7rojWan/AaIiLr0iIXzvlFm54PLStdNxxJv8KGIml/vWLb8XxKMQj/
P9EZ2Gg/rzyvbDDUo1ARxBEbWesk3+/aroeeMuwRmIXMBZAC4j8Yumpd6Xq+GUgq
YiQieDtRjiHhJw+VmAQrn6phiHs9dLS5ij6hPc9xUPD/5UTf43x9l30tW5mZCOWA
pHPa/yO7CWF/Dp/8c3N3yvA5+rbkDgQoYD6S+z/8db+SUPOT4a9IZZ5x8MAXyhvP
jrDvooVc9voSzH5jPWjvXQ24xvq6aSFJJ5VWrbsKAniWTS6JowriHpJH3n0v25kl
C0Nofi4rwxgLCusd21XC0HtiLBBsFO0z4G+UkzPTB1V8O5Vryi3ZteeUf5GPdFjY
GfAVdLj/V1NAfHGApL2l2Yti/qRcgqovRxUq7H7guoyeSAeAxur2y8EKkAcTudnC
zWOuBaaJA8Z0ic8dJlYtZrEQ44r6AVGgSSr8TOBcdO6qF6mvxkI=
=jsyB
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--
