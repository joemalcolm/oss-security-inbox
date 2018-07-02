X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6713" "Monday" "2" "July" "2018" "14:21:22" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180702122122.GD8324@f195.suse.de>" "180" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018070212:21:22" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "U       mgerstner@su Jul  2  180/6713  " thread-indent "\"[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17428 invoked by uid 550); 2 Jul 2018 12:33:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32353 invoked from network); 2 Jul 2018 12:21:35 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180702122122.GD8324@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="C94crkcyjafcjHxo"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Jul 2018 14:21:22 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

--C94crkcyjafcjHxo
Content-Type: multipart/mixed; boundary="zS7rBR6csb6tI2e1"
Content-Disposition: inline


--zS7rBR6csb6tI2e1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

during a code review the following issue was uncovered in
accountsservice <https://www.freedesktop.org/wiki/Software/AccountsService/=
>:

I have found a weakness regarding the handling of the users' icon files.
Regular users are by default allowed to change their own data as per
polkit rule for action org.freedesktop.accounts.change-own-user-data.

In function user_change_icon_file_authorized_cb() in src/user.c there is
quite some effort for safely setting the icon file property. The logic
wants to achieve the following:

a) take over the provided path as is, if it points to a world-readable
  file in /usr/share
b) otherwise safely copy the file with user privileges into
  /var/lib/AccountsService/icons, and use that path as the property
  value

The following if clause tries to determine whether a) is the case:

        if ((mode & S_IROTH) =3D=3D 0 ||
            (!g_str_has_prefix (filename, DATADIR) &&
             !g_str_has_prefix (filename, ICONDIR))) {

However, the prefix check is insufficient. Passing ../ components in the
user supplied path can circumvent the check like this:

$ touch /tmp/test
$ dbus-send --system --print-reply --dest=3Dorg.freedesktop.Accounts \
	/org/freedesktop/Accounts/User1000 \
	org.freedesktop.Accounts.User.SetIconFile \
	string:/usr/share/../../tmp/test
$ rm /tmp/test
$ ln -s /root/.bash_history /tmp/test

Now the accountsservice stores /usr/share/../../tmp/test as icon file
path, which actually points to /root/.bash_history. A third party
application that trusts this property can potentially read from this
location as root and try to interpret it as an image file. This is for
example the case for Cinnamon desktop in the cinnamon-settings-users GUI
application. Luckily in this example it does not simply copy the file,
but tries to read it into an image object first. There may be other
clients of accountsservice where this leads to more severe consequences.

Suggested Fix:

I think the easiest way to fix this is to normalize the user supplied
filename e.g. using realpath(), before making the test above. A
preliminary patch that takes this approach is found in the upstream bug
referenced below and also attached to this mail.

References:

OpenSUSE bug: https://bugzilla.suse.com/show_bug.cgi?id=3D1099699
Upstream bug: https://bugs.freedesktop.org/show_bug.cgi?id=3D107085

Timeline:

- 2018-06-28: I found the issue during a code review
- 2018-06-28: I privately disclosed the issue to the upstream developers
- 2018-07-02: The upstream developers agreed to publish the details

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--zS7rBR6csb6tI2e1
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-user_change_icon_file_authorized_cb-fix-insufficient.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 380f4cd7b80176549e91795808d875c1e6e58ccb Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Mon, 2 Jul 2018 12:06:58 +0200
Subject: [PATCH] user_change_icon_file_authorized_cb: fix insufficient path
 prefix check

The path prefix check can be circumvented by regular users by passing
relativ path component like so:

$ dbus-send --system --print-reply --dest=3Dorg.freedesktop.Accounts \
	/org/freedesktop/Accounts/User1000 \
	org.freedesktop.Accounts.User.SetIconFile \
	string:/usr/share/../../tmp/test

This results in a user controlled path to be stored in the
accountsservice. Clients of accountsservice may trust this path. The
existing code actually invests quite some efforts to ensure this by
copying the file away with dropped privileges.

To fix this situation this commit canonicalized the input path for the
prefix comparison.
---
 src/user.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/src/user.c b/src/user.c
index c8a2942..e1b9a6f 100644
--- a/src/user.c
+++ b/src/user.c
@@ -1306,6 +1306,7 @@ user_change_icon_file_authorized_cb (Daemon          =
      *daemon,
=20
 {
         g_autofree gchar *filename =3D NULL;
+        g_autofree gchar *canon_filename =3D NULL;
         g_autoptr(GFile) file =3D NULL;
         g_autoptr(GFileInfo) info =3D NULL;
         guint32 mode;
@@ -1355,9 +1356,19 @@ user_change_icon_file_authorized_cb (Daemon         =
       *daemon,
                 return;
         }
=20
+        /* This will not resolve symlinks. But we only want to check for a
+         * trusted prefix below, so this should be enough. The important b=
it
+         * is that no user controlled path is stored in the user data. If
+         * canon_filename is not trusted then filename will be copied into=
 a
+         * safe place and the path to the safe place will be stored in the
+         * user data.
+         */
+        canon_filename =3D g_file_get_path(file);
+
         if ((mode & S_IROTH) =3D=3D 0 ||
-            (!g_str_has_prefix (filename, DATADIR) &&
-             !g_str_has_prefix (filename, ICONDIR))) {
+            !canon_filename ||
+            (!g_str_has_prefix (canon_filename, DATADIR) &&
+             !g_str_has_prefix (canon_filename, ICONDIR))) {
                 g_autofree gchar *dest_path =3D NULL;
                 g_autoptr(GFile) dest =3D NULL;
                 const gchar *argv[3];
--=20
2.16.4


--zS7rBR6csb6tI2e1--

--C94crkcyjafcjHxo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAls6GL0ACgkQFMQFyXGS
NVM2BhAApvJA2PCAF7LJfA8k3+FoqsWEo94e/2y03HHlbSYT0GCgMkUs7SsQ0INN
Ft1MseLWHEGYpVdRwrqAtiQq59Xwq+gVr6r2VO2BaK32xBKl/BGR9EjhvVrqInxm
zJRB0PufEcnFHr6Ug7LIagSAkpXZcmJN/gzr/QfivxT2Ve3JZ1RddHn7ihCSUAjz
F7AzzJ7l9lij2nxbYEnLdpGggG18iMe6vZJZNxQ17WWBahrkFERX6COQ9WQCAyNc
yy2jnvPRYyr86EnbJFekTmjAY1jahvNnfOOudoqJ7T4/gIbgxrLRAiyxRxYxvYde
MddKfLJcGFZRS9LZZ2ys3uS5UpSzoYJNc5Y7YI9HwQZ2VGsT3LQFS99Ix+Hu7OoU
miCZ5eAgCfiplYLFqeyf12crqUPNcFjGDYV7w2v9XnryIKhFjTHObDO7osGBi/TL
KCoVb7wbahPpnwiicvdft026Gh6ICTi22nV6XW3TGOCIraRaj4L+dH8Yv1Oe2V9Z
IN///nus7WesYK5ueD20ifRZTR8WNIshk140nOmu6f7lj+UrdXyMj/yuD0aoKIzr
n+dj+2VBgJLjrgCdUg9+041xdj8ElWaFB8TKfuQgPsHjfsveGYNTiW+3fTTyppHG
1JUFr83MMYP3pLfvVJb+bYaMfOTRtZ4WREy1TjyWSDdkcsi4IrA=
=FHL2
-----END PGP SIGNATURE-----

--C94crkcyjafcjHxo--
