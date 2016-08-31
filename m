X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6076" "Wednesday" "31" "August" "2016" "01:34:24" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1472603664.25374.41.camel@decadent.org.uk>" "159" "[oss-security] CVE request: Kernel Oops when issuing fcntl on an AUFS directory" nil nil nil "8" "2016083100:34:24" "[oss-security] CVE request: Kernel Oops when issuing fcntl on an AUFS directory" (number mark "U       ben@decadent Aug 31  159/6076  " thread-indent "\"[oss-security] CVE request: Kernel Oops when issuing fcntl on an AUFS directory\"\n") "<20160830203305.GB3050@orkisz>" ("<20160830203305.GB3050@orkisz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17564 invoked by uid 550); 31 Aug 2016 03:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31744 invoked from network); 31 Aug 2016 00:34:41 -0000
Message-ID: <1472603664.25374.41.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: oss-security <oss-security@lists.openwall.com>
Cc: Marcin Szewczyk <debian@wodny.org>, debian-lts@lists.debian.org
Date: Wed, 31 Aug 2016 01:34:24 +0100
In-Reply-To: <20160830203305.GB3050@orkisz>
References: <20160830203305.GB3050@orkisz>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-/CNPELoTOsd1ph0tceEX"
X-Mailer: Evolution 3.20.5-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:8011:400e:2:6f00:88c8:c921:d332
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Subject: [oss-security] CVE request: Kernel Oops when issuing fcntl on an AUFS directory

--=-/CNPELoTOsd1ph0tceEX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcin Szewczyk reported and diagnosed a bug in Debian's kernel
packages that allows a denial of service (crash) by local users with
access to an aufs filesystem. =C2=A0The bug is in a Debian-specific patch,
not the upstream kernel or aufs code.

The current version in Debian 7 'wheezy' (3.2.81-1) and the current propose=
d update to Debian 8 'jessie' (3.16.36-1 are affected.

Ben.

On Tue, 2016-08-30 at 22:33 +0200, Marcin Szewczyk wrote:
> Hi,
>=20
> the wheezy kernel upgrade from 3.2.78-1 to 3.2.81-1 added the SETFL
> fcntl support code (#627782) which unfortunately results in a kernel
> Oops when the fcntl is called on a directory. This breaks e.g. copying
> files from an AUFS filesystem on a remote machine using scp.
>
> Minimal code to reproduce the problem:
> #v+
> #include <stdio.h>
> #include <stdlib.h>
> #include <fcntl.h>
>=20
> int main (int argc, char **argv) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const char *fname =3D NUL=
L;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int fd;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (argc !=3D 2)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0exit (1);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fname =3D argv[1];
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fd =3D open (fname, O_RDO=
NLY|O_NONBLOCK);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printf ("fd %d\n", fd);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fcntl (fd, F_SETFL, O_RDO=
NLY);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> }
> #v-
>=20
> Call the program on regular a file (nothing happens) and then on a
> directory (Oops).
>=20
> The Oops happens in fs/fcntl.c:
> #v+
> if (!error && filp->f_op->owner &&
> =C2=A0=C2=A0=C2=A0=C2=A0!strcmp(filp->f_op->owner->name, "aufs") &&
> =C2=A0=C2=A0=C2=A0=C2=A0strstr(filp->f_op->owner->version, "+setfl"))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0error =3D filp->f_op->set=
fl(filp, arg);
> #v-
>=20
> >=20
> > From fs/aufs/inode.c:
> #v+
> case S_IFREG:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[...]
> 	inode->i_fop =3D &aufs_file_fop;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[...]
> case S_IFDIR:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0[...]
> 	inode->i_fop =3D &aufs_dir_fop;
> #v-
>=20
> The aufs_file_fop structure sets the value of the .setfl member to
> aufs_setfl (f_op.c). aufs_dir_fop (dir.c) on the other hand does not.
>=20
> dmesg:
> #v+
> [42990.915100] aufs 3.2.x+setfl-debian
> [43046.383421] BUG: unable to handle kernel NULL pointer dereference
> at=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(null)
> [43046.384011] IP: [<=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(null)>]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(null)
> [43046.384369] PGD 3d0f1067 PUD 3b8cc067 PMD 0=C2=A0
> [43046.384688] Oops: 0010 [#1] SMP=C2=A0
> [43046.385620] Call Trace:
> [...]
> [43046.385620]=C2=A0=C2=A0[<ffffffff81108701>] ? setfl+0xf1/0x157
> [43046.385620]=C2=A0=C2=A0[<ffffffff81108b9e>] ? sys_fcntl+0x1dc/0x3b0
> [43046.385620]=C2=A0=C2=A0[<ffffffff81358af2>] ? system_call_fastpath+0x1=
6/0x1b
> #v-
>=20
> gdb:
> #v+
> 0xffffffff811086d3 <+195>:=C2=A0=C2=A0=C2=A0callq=C2=A0=C2=A00xffffffff81=
1b2bd2 <strcmp>
> 0xffffffff811086d8 <+200>:=C2=A0=C2=A0=C2=A0test=C2=A0=C2=A0=C2=A0%eax,%e=
ax
> 0xffffffff811086da <+202>:=C2=A0=C2=A0=C2=A0jne=C2=A0=C2=A0=C2=A0=C2=A00x=
ffffffff81108705 <setfl+245>
> 0xffffffff811086dc <+204>:=C2=A0=C2=A0=C2=A0mov=C2=A0=C2=A0=C2=A0=C2=A00x=
b0(%r13),%rdi
> 0xffffffff811086e3 <+211>:=C2=A0=C2=A0=C2=A0mov=C2=A0=C2=A0=C2=A0=C2=A0$0=
xffffffff814dc9e4,%rsi
> 0xffffffff811086ea <+218>:=C2=A0=C2=A0=C2=A0callq=C2=A0=C2=A00xffffffff81=
1b2e25 <strstr>
> 0xffffffff811086ef <+223>:=C2=A0=C2=A0=C2=A0test=C2=A0=C2=A0=C2=A0%rax,%r=
ax
> 0xffffffff811086f2 <+226>:=C2=A0=C2=A0=C2=A0je=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00xffffffff81108705 <setfl+245>
> 0xffffffff811086f4 <+228>:=C2=A0=C2=A0=C2=A0mov=C2=A0=C2=A0=C2=A0=C2=A0%r=
bp,%rsi
> 0xffffffff811086f7 <+231>:=C2=A0=C2=A0=C2=A0mov=C2=A0=C2=A0=C2=A0=C2=A0%r=
bx,%rdi
> 0xffffffff811086fa <+234>:=C2=A0=C2=A0=C2=A0callq=C2=A0=C2=A0*0xd0(%r14)
> 0xffffffff81108701 <+241>:=C2=A0=C2=A0=C2=A0test=C2=A0=C2=A0=C2=A0%eax,%e=
ax
> #v-
>=20
> Naturally it happens both on i686 and amd64.
>=20
> BTW, changelog link on the package's page[1] is dead.
>=20
> Interesting changelog's part:
>=20
> =C2=A0 * aufs: Make fcntl(F_SETFL, ...) work (Closes: #627782):
> =C2=A0=C2=A0=C2=A0=C2=A0- for aufs: new f_op->setfl() to support fcntl(F_=
SETFL)
> =C2=A0=C2=A0=C2=A0=C2=A0- aufs: implement new f_op->setfl()
> =C2=A0=C2=A0=C2=A0=C2=A0- fs: Fix ABI change for aufs F_SETFL fix
>=20
> Is there any chance for a fix in some future wheezy-lts update?
>=20
> [1] https://packages.debian.org/wheezy/linux-image-3.2.0-4-amd64
>=20
--=20
Ben Hutchings
Anthony's Law of Force: Don't force it, get a larger hammer.

--=-/CNPELoTOsd1ph0tceEX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABCgAGBQJXxiYQAAoJEOe/yOyVhhEJBggQALlEA8iY9F2UWWAXop4X3S0u
wcV6B8pBXo5KR30EyjVdajDmBSYfqgLWsa64RRsvlHahgVZPX10aDDcj+KzNJCzE
rzrHkfkISVdg10uPqTFHtg1F3p+FZe8W2WwmC9uHLXDMob1JtlleJ4p9m9gm0LVe
8kd+iu4Lh97jBxGZUyiHFSLy3K7ENgXfzKa8vsYdv3ydf5/7t+ZrNRc7AMdepLeZ
x7NWDOlF2ndzA/g2hBOTQEOiN/MmYM2RD+OZZh7u1sPR6kI1iZPMirVe4Q6RAzsh
zP0zkZ4NUq6l/DiQq9Bd/IzUePl+wdvHIjFYy11srK0DtmDluXwubuEdvOKDCVzX
zpBGw8frYR7d6S3e+nm4OXWd7ZaK4YDLqenbxr45Cur0Z7SweMNktjo4cQo/P9WI
ahtMFIBefoQVUAO04lbYOzG1SHI3JFFEsGFB7Jmr3xBWug93SkBavEwYh6bjP5MI
j2/BorS9TOj+0IhEUjqwbmxV+oJvwYbgVF0LNk8bwD2mvERWSzKRE8g+h48xad2C
Rc6TWX0PONKMUqeSO6vf/APE0DcWN9xaJFlrCxbyimjba2DM7Ot61m4MbGI0NICh
rqV/zU91oCaxmPRAo87bxkRAfbCxVXdfnGTDTWm6noZ1+PrmedxOx5aarH/VwpDa
GhO2lMI6L19URRBBsQIR
=CeoV
-----END PGP SIGNATURE-----

--=-/CNPELoTOsd1ph0tceEX--
