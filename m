X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3282" "Thursday" "5" "October" "2017" "22:37:46" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1507235866.17141.24.camel@debian.org>" "80" "[oss-security] [CVE-2017-14604] .desktop vulnerability again" nil nil nil "10" "2017100520:37:46" "[oss-security] [CVE-2017-14604] .desktop vulnerability again" (number mark "U       corsac@debia Oct  5   80/3282  " thread-indent "\"[oss-security] [CVE-2017-14604] .desktop vulnerability again\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3550 invoked by uid 550); 5 Oct 2017 20:38:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3511 invoked from network); 5 Oct 2017 20:38:07 -0000
Message-ID: <1507235866.17141.24.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Thu, 05 Oct 2017 22:37:46 +0200
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3S6p3rfe7YblkSJuvi6c"
X-Mailer: Evolution 3.26.1-1 
Mime-Version: 1.0
Subject: [oss-security] [CVE-2017-14604] .desktop vulnerability again

--=-3S6p3rfe7YblkSJuvi6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi list,

I'm currently in the process of uploading a nautilus package fixing CVE-201=
7-
14604 which is again a vulnerability in the handling of desktop file. As I
don't think it's been discussed here, it might be a good idea to do a wrap-=
up,=20
and maybe start a discussion if people are interested and have good ideas.

There was some publicity on this at beginning of the year with a blog post
using that vulnerability in order to break out of SubGraph OS (https://mica=
hfl
ee.com/2017/04/breaking-the-security-model-of-subgraph-os/)

Last time we had a vulnerability related to the handling of .desktop file, =
it
was handled by refusing to run it unless it has the executable bit.
Unfortunately, this permission bit is maintained when storing inside a
tarball, for example, so if an attacker wraps an executable .desktop file
posing (for example) as a PDF inside a tarball, a victim could extract the
file and double click on the PDF and the system will happily execute the
command inside the Exec=3D field of the .desktop file.

Some bugs were opened against various file managers:

Nautilus (GNOME): https://bugzilla.gnome.org/show_bug.cgi?id=3D777991
Caja (Mate): https://github.com/mate-desktop/caja/issues/727
Nemo (Cinnamon): https://github.com/linuxmint/nemo/issues/1404
PCManFM (LXDE): https://github.com/lxde/pcmanfm-qt/issues/449
Thunar (Xfce): https://bugzilla.xfce.org/show_bug.cgi?id=3D13329

I'm not sure if a bug was opened against others, like KDE's Dolphin.

As far as I understand it only Nautilus got a CVE. If we consider it a
vulnerability I guess every file manager should get a CVE, but I'm interest=
ed
in other opinions on this.

Scanning through the various bugs, not everyone agree on how to fix this:

- Nautilus doesn't use the executable bit anymore but store a trusted
attribute in a gio/gvfs metadata, which is stored on the filesystem in
XDG_DATA_DIR/.gvfs-metada (usually ~/.local/share/gvfs-metadata) which I gu=
ess
should not be reachable from a tarball unless the extraction process has a
directory traversal vulnerability
- there's PR on Nemo to basically do the same thing
- PCManFM now treats .desktop file like it apparently treats executable, and
always request explicit user permission before running it
- Thunar and Cara are not yet fixed.

Obviously there's a usability vs. security tradeoff here and I'm unsure if
there's a good solution. For now I'll just push the Debian updates for
Nautilus and keep an eye on this.

Regards,
--=20
Yves-Alexis=

--=-3S6p3rfe7YblkSJuvi6c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlnWmBoACgkQ3rYcyPpX
RFvwUwf/RmmjY3mcbZD9388Qkx9EuPvgyIoXflfly3dX6t07R7DofORYlm38fkSZ
08Tuxx831l8Kx5Z5IzzckPGOTnQVqX0mC5lVmvQj85JoplOTSrcRuSnAIJsOg6jQ
V9omj7D8CecjdWbPzmDia7mUV+zGqyYZjh9RZ4xgxWI0npwAshuhfyIPTEI0EWl5
6nE0qpb5hJgQ0KuWpd9E1md+KCvFY4jVD3nUyNbvedakFqS4kYDCAxP2yMPAQN95
OMAegWtbKZYnfw+kDFT5h3yTpAch83S3zY1NxtwVdmP00idpExZzVgrsHpO7zr3X
K16d6Z2m2JMZZPwnoWmMb3qAZDkMkg==
=NPK4
-----END PGP SIGNATURE-----

--=-3S6p3rfe7YblkSJuvi6c--
