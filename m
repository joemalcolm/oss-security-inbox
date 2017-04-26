X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2061" "Wednesday" "26" "April" "2017" "16:52:14" "-0400" "Antoine =?utf-8?B?QmVhdXByw6k=?=" "anarcat@orangeseeds.org" "<87k26628ox.fsf@curie.anarc.at>" "63" "[oss-security] kedpm: Information leak via the command history file" nil nil nil "4" "2017042620:52:14" "[oss-security] kedpm: Information leak via the command history file" (number mark "U       anarcat@oran Apr 26   63/2061  " thread-indent "\"[oss-security] kedpm: Information leak via the command history file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3475 invoked by uid 550); 26 Apr 2017 21:06:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27728 invoked from network); 26 Apr 2017 20:52:28 -0000
From: anarcat@orangeseeds.org (Antoine =?utf-8?Q?Beaupr=C3=A9?=)
To: oss-security@lists.openwall.com
Date: Wed, 26 Apr 2017 16:52:14 -0400
Message-ID: <87k26628ox.fsf@curie.anarc.at>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: [oss-security] kedpm: Information leak via the command history file

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in the kedpm password manager that may
expose the master password when changed, if passed on the commandline.

Example, good:

kedpm> passwd
New password:
Repeat password:
Password changed.
kedpm>

Example, bad:

kedpm:/> passwd bar
Password changed

The former will show "passwd" in the ~/.kedpm/history file while the
latter will show "passwd bar" in the history file, divulging the
password in clear text.

Also, all password *names* that are created or consulted are saved in
the history file, something that users may not expect (although you have
to wonder how they thought history worked).

This is documented in the Debian bugtracker:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D860817

But I would like to get a CVE assigned for wider diffusion.

Note that I seem to be the sole kedpm maintainer left and I consider the
software abandoned. I will backport patches to fix this in the Debian
bugtracker, but I have filed a request for the software to be removed
from Debian and all users should switch away.

Thanks,

a.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjckBzmQUbASK1Q+7eSFSUnt1kh4FAlkBCH4ACgkQeSFSUnt1
kh7amQ//R2rkOSF6dyfO9jWT04vTIFlCkvH6K/eFoK3/ExEQKaIe3RV1uCg6h7BP
Ai2iKC/hyKZSD+DwSlxTOlktrFkrh+AJzu0Q9xkDmh3LSr0tYz5rIXevXvLq4YsC
1OE/xQbHltVzaAc89Y13wr6I/MViXcZ8Siljddt1Vc1wHsbjiwwqYJpMDkYA3F2R
+lxUHmiALO4ZmdDt8qtbwUCCjVXoH6N1gIzxE5LccjJjIRNGNvCp4qVtFO1h92Fr
k5CaSs7Zau60RQcZ9a6955bwct5e5mtK1Vj3cDiNzzaonF/jdms9zIk0q22Xl929
RBguA/cYSx+0JVCWYbIU4XMAm4u5/6uRjJqWDk7zbQssToFWNPKfEmh3MF3YSptz
cSM9qbzrfeHQl0owPgSXIxX/lUAsDCBWdtuJSN3qby94nv+vtlLkpZTa39/hjk9K
XJMxtjiriicLlcSKGMIPubK9OQBDjMwPQA3QXsXFxP+ggn8Ebo5YDRKIG0H2nuzD
mMD6LZRn4Ve2xn0KE2+rJbMSfQaIhOt3HjUh/hDA+acCr7VUI7Qk6czY4YJxpvt3
GhwsFNbgFi5Yx/aQxfJ/EtxWaoeoSCD8q9wQV5QG1AHUnwlNs0jZUvU1ySyUFBdi
I17ujhRugCwKQoOq9nKxpywN0Xbmej67cq1W7lTqFOGSWiaWmRc=
=mfFs
-----END PGP SIGNATURE-----
--=-=-=--
