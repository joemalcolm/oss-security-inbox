X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7170" "Monday" "2" "July" "2018" "15:37:09" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180702133709.GE8324@f195.suse.de>" "190" "[oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py" "^Date:" nil nil "7" "2018070213:37:09" "[oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py" (number mark "U       mgerstner@su Jul  2  190/7170  " thread-indent "\"[oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9470 invoked by uid 550); 2 Jul 2018 13:57:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15430 invoked from network); 2 Jul 2018 13:37:22 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180702133709.GE8324@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GdbWtwDHkcXqP16f"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Jul 2018 15:37:09 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py
To: oss-security@lists.openwall.com

--GdbWtwDHkcXqP16f
Content-Type: multipart/mixed; boundary="m1UC1K4AOz1Ywdkx"
Content-Disposition: inline


--m1UC1K4AOz1Ywdkx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

this is about an issue I found during a code review of Cinnamon
<https://github.com/linuxmint/Cinnamon>:

The script cinnamon-settings-users.py runs as root (via polkit's pkexec)=20
and allows to configure e.g. other user's icon files. These icon files
are written to the respective user's $HOME/.face location. If an
unprivileged user prepares a symlink pointing to an arbitrary location
then this location will be overwritten with the icon content. This
vulnerability thus allows to corrupt the system or other user's files.
The content is not attacker controlled, luckily. It may have further
unspecified impact, however, by allowing to write to pseudo files in
/proc or /sys or by creating state files that influence other system
components like /etc/suid-debug.

Affected Versions:

=46rom the git history it looks like this vulnerability was contained for
a long time in the cinnamon-settings-users.py script, dating back to
version 1.9.2 up to and including current version 3.8.6.

Suggested Fix:

Dropping privileges to the target user while writing the $HOME/.face
file should be a safe approach. A preliminary suggested patch is found
in the pull request referenced below and is also attached to this mail.

References:

Upstream pull request: https://github.com/linuxmint/Cinnamon/pull/7683
OpenSUSE bug: https://bugzilla.suse.com/show_bug.cgi?id=3D1083067

Timeline:

2018-06-28: I found the vulnerability during a code review
2018-06-29: I privately contacted the upstream main developer
2018-07-02: Upstream agreed to publish the issue and I created the
            upstream PR

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--m1UC1K4AOz1Ywdkx
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-cinnamon-settings-users.py-fix-symlink-attack-vulner.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 928ecc461a665c336bf029f187b3516f540fdfe5 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Thu, 28 Jun 2018 14:32:50 +0200
Subject: [PATCH] cinnamon-settings-users.py: fix symlink attack vulnerabili=
ty

This script runs as root and allows to configure e.g. other user's icon
files. These icon files are written to the respective user's $HOME/.face
location. If an unprivileged user prepares a symlink pointing to an
arbitrary location then this location will be overwritten with the icon
content. This vulnerability thus allows to corrupt the system or other
user's files. The content is not attacker controlled, luckily.

This change introduces temporary privilege drops to the target user's
privileges before attempting to write the respective .face files. This
way the kernel can decide if permissions are okay or not.
---
 .../cinnamon-settings-users.py                     | 41 ++++++++++++++++++=
++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-sett=
ings-users.py b/files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-s=
ettings-users.py
index 31e2fe2d..d5af76be 100755
--- a/files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-settings-us=
ers.py
+++ b/files/usr/share/cinnamon/cinnamon-settings-users/cinnamon-settings-us=
ers.py
@@ -19,6 +19,35 @@ from gi.repository import Gtk, GObject, Gio, GdkPixbuf, =
AccountsService, GLib
=20
 gettext.install("cinnamon", "/usr/share/locale")
=20
+class PrivHelper(object):
+    """A helper for performing temporary privilege drops. Necessary for
+    security when accessing user controlled files as root."""
+
+    def __init__(self):
+
+        self.orig_uid =3D os.getuid()
+        self.orig_gid =3D os.getgid()
+        self.orig_groups =3D os.getgroups()
+
+    def drop_privs(self, user):
+
+        uid =3D user.get_uid()
+        # the user's main group id
+        gid =3D pwd.getpwuid(uid).pw_gid
+
+        # initialize the user's supplemental groups and main group
+        os.initgroups(user.get_user_name(), gid)
+        os.setegid(gid)
+        os.seteuid(uid)
+
+    def restore_privs(self):
+
+        os.seteuid(self.orig_uid)
+        os.setegid(self.orig_gid)
+        os.setgroups(self.orig_groups)
+
+priv_helper =3D PrivHelper()
+
 (INDEX_USER_OBJECT, INDEX_USER_PICTURE, INDEX_USER_DESCRIPTION) =3D range(=
3)
 (INDEX_GID, INDEX_GROUPNAME) =3D range(2)
=20
@@ -642,7 +671,11 @@ class Module:
                 image =3D PIL.Image.open(path)
                 image.thumbnail((96, 96), Image.ANTIALIAS)
                 face_path =3D os.path.join(user.get_home_dir(), ".face")
-                image.save(face_path, "png")
+                try:
+                    priv_helper.drop_privs(user)
+                    image.save(face_path, "png")
+                finally:
+                    priv_helper.restore_privs()
                 user.set_icon_file(face_path)
                 self.face_image.set_from_file(face_path)
                 model.set_value(treeiter, INDEX_USER_PICTURE, GdkPixbuf.Pi=
xbuf.new_from_file_at_size(face_path, 48, 48))
@@ -675,7 +708,11 @@ class Module:
                 user =3D model[treeiter][INDEX_USER_OBJECT]
                 user.set_icon_file(path)
                 self.face_image.set_from_file(path)
-                shutil.copy(path, os.path.join(user.get_home_dir(), ".face=
"))
+                try:
+                    priv_helper.drop_privs(user)
+                    shutil.copy(path, os.path.join(user.get_home_dir(), ".=
face"))
+                finally:
+                    priv_helper.restore_privs()
                 model.set_value(treeiter, INDEX_USER_PICTURE, GdkPixbuf.Pi=
xbuf.new_from_file_at_size(path, 48, 48))
                 model.row_changed(model.get_path(treeiter), treeiter)
=20
--=20
2.16.4


--m1UC1K4AOz1Ywdkx--

--GdbWtwDHkcXqP16f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAls6KoUACgkQFMQFyXGS
NVPoyxAAvsOe8PmnLc8I0Dhp69Et9CflN1U9hcLuX2aNcqsz4/RoAEoTlpsK8GVc
I0EASUUl91PqQNmWoniUPv6AL09ccYsfEBLtf2gLliGu3W5luT4BUVt1xtf4gn5F
ZRU3BsAAyjBrLJr9otEqS9dZEJY48fWmGsh1O1/pnK8AC3+7hIVPLLehr4EU4CWy
lGTgCq07NlQaJsk8WMCrLxFcXMk1BlDANART1jPnEVwxcAmFhmeABn0oKP/nRHTL
keUKdothdxH+vfBmqhAN1h6isy9ZwIAFj53AgntfhUrwot4CHCV8VjZMhc1bo3dW
xtpGjCaa92rd9a9x5yy1W2xExo4FVSWLW/nUCeOv/82dRGySWUPyTx+DjclF8FpX
TH0dCnmHXKXX3bGfWDWh8P1+o3wpbgiwuGCsaiGfRwC4XAvc+xF9RADhH1xBwlnJ
ugrBkiaTVf6Faxv1t0NmHyXeDXyfCzZG40cF8MAieVpKAgjEwRIoVngVzEIlGoAu
Wlvb+WFyrDny2uLjnD7GUULF7xmZTJjeyyKp0kx3JklAPEj0aXuW+zu9urjY4jzx
0/LKwFeTbKT6Yd3XMTXw39vE53IOos/axEXyPxCvF8mVu2g8iFu0KyjXhJ+Iow+q
HPZ2XBplSJHbuaIwPfXqGFC/cdJArWv+Gp1ryCqNNoixe7d6kEo=
=4yGi
-----END PGP SIGNATURE-----

--GdbWtwDHkcXqP16f--
