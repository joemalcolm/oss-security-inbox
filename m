X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6996" "Sunday" "22" "March" "2015" "00:20:22" "+0000" "Jelmer Vernooij" "jelmer@samba.org" "<20150322002022.GA32178@jelmer.uk>" "243" "[oss-security] Dulwich security issue" nil nil nil "3" "2015032200:20:22" "[oss-security] Dulwich security issue" (number mark "        jelmer@samba Mar 22  243/6996  " thread-indent "\"[oss-security] Dulwich security issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10025 invoked by uid 550); 22 Mar 2015 14:16:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14077 invoked from network); 22 Mar 2015 00:20:34 -0000
Message-ID: <20150322002022.GA32178@jelmer.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xXmbgvnjoT4axfJE"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: jelmer@google.com
Date: Sun, 22 Mar 2015 00:20:22 +0000
From: Jelmer Vernooij <jelmer@samba.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Dulwich security issue
To: dulwich-users@lists.launchpad.net, oss-security@lists.openwall.com

--xXmbgvnjoT4axfJE
Content-Type: multipart/mixed; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline


--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Ivan Fratric of the Google Security Team has found a buffer overflow
in the C implementation of the apply_delta() function in Dulwich. This
function is used when accessing Git objects in pack files. Any
Git server or client based on Dulwich that handles untrusted pack
files is very likely to be vulnerable.

This issue has been assigned CVE-2015-0838.

I have attached patches against current HEAD and 0.9.8.
Dulwich 0.9.9 has been released with just this patch.

Tarball available here:
https://pypi.python.org/packages/source/d/dulwich/dulwich-0.9.9.tar.gz

GPG signature:
https://pypi.python.org/packages/source/d/dulwich/dulwich-0.9.9.tar.gz.asc

Cheers,

Jelmer

--cWoXeonUoKmBZSoM
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="dulwich-0.9.9.diff"
Content-Transfer-Encoding: quoted-printable

Author: Jelmer Vernoo=C4=B3 <jelmer@google.com>
Date:   Fri Mar 6 12:29:07 2015 +0000

    Fix buffer overflow in C version of apply_delta().
=20=20=20=20
    This is CVE-2015-0838.
=20=20=20=20
    Thanks to Ivan Fratric of the Google Security Team for
    reporting this issue.

diff --git a/NEWS b/NEWS
index 4d3c1ce..73f0e26 100644
--- a/NEWS
+++ b/NEWS
@@ -1,3 +1,14 @@
+0.9.9	2015-03-20
+
+ SECURITY BUG FIXES
+
+  * Fix buffer overflow in C implementation of pack apply_delta().
+    (CVE-2015-0838)
+
+    Thanks to Ivan Fratric of the Google Security Team for
+    reporting this issue.
+    (Jelmer Vernooij)
+
 0.9.8	2014-11-30
=20
  BUG FIXES
diff --git a/dulwich/__init__.py b/dulwich/__init__.py
index 35d9808..bc36593 100644
--- a/dulwich/__init__.py
+++ b/dulwich/__init__.py
@@ -21,4 +21,4 @@
=20
 """Python implementation of the Git file formats and protocols."""
=20
-__version__ =3D (0, 9, 8)
+__version__ =3D (0, 9, 9)
diff --git a/dulwich/_pack.c b/dulwich/_pack.c
index d1534a5..8a8912e 100644
--- a/dulwich/_pack.c
+++ b/dulwich/_pack.c
@@ -146,10 +146,14 @@ static PyObject *py_apply_delta(PyObject *self, PyObj=
ect *args)
 				break;
 			memcpy(out+outindex, src_buf+cp_off, cp_size);
 			outindex +=3D cp_size;
+			dest_size -=3D cp_size;
 		} else if (cmd !=3D 0) {
+			if (cmd > dest_size)
+				break;
 			memcpy(out+outindex, delta+index, cmd);
 			outindex +=3D cmd;
 			index +=3D cmd;
+			dest_size -=3D cmd;
 		} else {
 			PyErr_SetString(PyExc_ValueError, "Invalid opcode 0");
 			Py_DECREF(ret);
@@ -167,7 +171,7 @@ static PyObject *py_apply_delta(PyObject *self, PyObjec=
t *args)
 		return NULL;
 	}
=20
-	if (dest_size !=3D outindex) {
+	if (dest_size !=3D 0) {
 		PyErr_SetString(PyExc_ValueError, "dest size incorrect");
 		Py_DECREF(ret);
 		return NULL;
diff --git a/dulwich/tests/test_pack.py b/dulwich/tests/test_pack.py
index 666a639..53e4a22 100644
--- a/dulwich/tests/test_pack.py
+++ b/dulwich/tests/test_pack.py
@@ -191,6 +191,14 @@ class TestPackDeltas(TestCase):
         self._test_roundtrip(self.test_string_huge + self.test_string1,
                              self.test_string_huge + self.test_string2)
=20
+    def test_dest_overflow(self):
+        self.assertRaises(
+            ValueError,
+            apply_delta, 'a'*0x10000, '\x80\x80\x04\x80\x80\x04\x80' + 'a'=
*0x10000)
+        self.assertRaises(
+            ValueError,
+            apply_delta, '', '\x00\x80\x02\xb0\x11\x11')
+
=20
 @skipIfPY3
 class TestPackData(PackTests):
diff --git a/setup.py b/setup.py
index 89be710..7a03845 100755
--- a/setup.py
+++ b/setup.py
@@ -8,7 +8,7 @@ except ImportError:
     from distutils.core import setup, Extension
 from distutils.core import Distribution
=20
-dulwich_version_string =3D '0.9.8'
+dulwich_version_string =3D '0.9.9'
=20
 include_dirs =3D []
 # Windows MSVC support

--cWoXeonUoKmBZSoM
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="dulwich-head.diff"
Content-Transfer-Encoding: quoted-printable

commit 1c7e06f6ae53cf4a755fe734db7114be67daf35b
Author: Jelmer Vernoo=C4=B3 <jelmer@google.com>
Date:   Fri Mar 6 12:29:07 2015 +0000

    Fix buffer overflow in C version of apply_delta().
=20=20=20=20
    This is CVE-2015-0838.
=20=20=20=20
    Thanks to Ivan Fratric of the Google Security Team for
    reporting this issue.

diff --git a/NEWS b/NEWS
index 822dab0..71db58f 100644
--- a/NEWS
+++ b/NEWS
@@ -1,5 +1,14 @@
 0.9.9	UNRELEASED
=20
+ SECURITY BUG FIXES
+
+  * Fix buffer overflow in C implementation of pack apply_delta().
+    (CVE-2015-0838)
+
+    Thanks to Ivan Fratric of the Google Security Team for
+    reporting this issue.
+    (Jelmer Vernooij)
+
  BUG FIXES
=20
   * In dulwich.index.build_index_from_tree, by default
diff --git a/dulwich/_pack.c b/dulwich/_pack.c
index d1534a5..8a8912e 100644
--- a/dulwich/_pack.c
+++ b/dulwich/_pack.c
@@ -146,10 +146,14 @@ static PyObject *py_apply_delta(PyObject *self, PyObj=
ect *args)
 				break;
 			memcpy(out+outindex, src_buf+cp_off, cp_size);
 			outindex +=3D cp_size;
+			dest_size -=3D cp_size;
 		} else if (cmd !=3D 0) {
+			if (cmd > dest_size)
+				break;
 			memcpy(out+outindex, delta+index, cmd);
 			outindex +=3D cmd;
 			index +=3D cmd;
+			dest_size -=3D cmd;
 		} else {
 			PyErr_SetString(PyExc_ValueError, "Invalid opcode 0");
 			Py_DECREF(ret);
@@ -167,7 +171,7 @@ static PyObject *py_apply_delta(PyObject *self, PyObjec=
t *args)
 		return NULL;
 	}
=20
-	if (dest_size !=3D outindex) {
+	if (dest_size !=3D 0) {
 		PyErr_SetString(PyExc_ValueError, "dest size incorrect");
 		Py_DECREF(ret);
 		return NULL;
diff --git a/dulwich/tests/test_pack.py b/dulwich/tests/test_pack.py
index 5caed6d..e8ffb8c 100644
--- a/dulwich/tests/test_pack.py
+++ b/dulwich/tests/test_pack.py
@@ -191,6 +191,14 @@ class TestPackDeltas(TestCase):
         self._test_roundtrip(self.test_string_huge + self.test_string1,
                              self.test_string_huge + self.test_string2)
=20
+    def test_dest_overflow(self):
+        self.assertRaises(
+            ValueError,
+            apply_delta, 'a'*0x10000, '\x80\x80\x04\x80\x80\x04\x80' + 'a'=
*0x10000)
+        self.assertRaises(
+            ValueError,
+            apply_delta, '', '\x00\x80\x02\xb0\x11\x11')
+
=20
 @skipIfPY3
 class TestPackData(PackTests):

--cWoXeonUoKmBZSoM--

--xXmbgvnjoT4axfJE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJVDgrDAAoJEILR9r9eY9LaLVYH/iKoihX89XiV663105wG8Gft
awK/0mq9iRzphcpc861zm5x+XWJ3SvFST3kPRxP67lSJKhMWhUxcR2xw9UfADeZm
PPDjxEx0Rlm66tgapXZetfIrAk6XFzZsrekQnbiCPlA23qFr5sWgw4ZZxEt096J/
a+i3qaawmA/5y251zJ10F4Q4zk6tt23sypbvoYeZnPxKTl0YhPGtb8y3L38XKTsi
WN2hj3w3zyoNyoL5jdtdZ8glV7pt7QtuO5TdksDsTkW4d1JvT1VFRF2Ia121/JyE
Jze+R0tpifmxAaR6hWR6SN58Gi/+mY1EKcLHPy7zLX1i4T0RBeWlARZkPk0BiQs=
=jegH
-----END PGP SIGNATURE-----

--xXmbgvnjoT4axfJE--
