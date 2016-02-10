X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1969" "Tuesday" "9" "February" "2016" "19:20:05" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20160210032005.GC26858@hunt>" "58" "[oss-security] CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0" nil nil nil "2" "2016021003:20:05" "[oss-security] CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0" (number mark "U       seth.arnold@ Feb  9   58/1969  " thread-indent "\"[oss-security] CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7697 invoked by uid 550); 10 Feb 2016 03:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7676 invoked from network); 10 Feb 2016 03:20:19 -0000
Date: Tue, 9 Feb 2016 19:20:05 -0800
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Cc: security@ubuntu.com
Message-ID: <20160210032005.GC26858@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qtZFehHsKgwS5rPz"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint,
 gtk+2.0

--qtZFehHsKgwS5rPz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Virgil Grigoras and Vlad Orlov discovered an integer overflow flaw in
gtk+2.0 in image handling:

https://github.com/mate-desktop/eom/issues/93

Bert Massop discovered the same issue in the gtk+3.0 codebase:

https://bugzilla.gnome.org/show_bug.cgi?id=703220

The fix replaces a direct height * cairo_stride multiplication with a call
to g_malloc_n() which knows how to multiply correctly:

https://git.gnome.org/browse/gtk+/commit?id=894b1ae76a32720f4bb3d39cf460402e3ce331d6

-  cairo_pixels = g_malloc (height * cairo_stride);
+  cairo_pixels = g_malloc_n (height, cairo_stride);

This same bug appears to be copy-and-pasted to at least:
eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0

https://codesearch.debian.net/results/height%20%5C*%20cairo_stride/page_0

I haven't been able to find CVEs assigned for any of these issues.

Thanks

Related links:

https://bugs.launchpad.net/ubuntu/+source/gtk+2.0/+bug/1540811
https://github.com/mate-desktop/eom/issues/93
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=799275
https://bugzilla.gnome.org/show_bug.cgi?id=703220
https://git.gnome.org/browse/gtk+/commit?id=894b1ae76a32720f4bb3d39cf460402e3ce331d6
https://codesearch.debian.net/results/height%20%5C*%20cairo_stride/page_0

--qtZFehHsKgwS5rPz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWuqxlAAoJEPMhclmdjS6XCloH/jOsrCLtqkFgtqWxQxx9cVUr
3BZ4Knv26WsgU4ivaumHihdjY7LOch7EWJ1OzyXsUpkiLv4meV4NFi65kC+rVFPS
mKe0dmttlFI92OuSBCJ0ta2IsIK0SkNwbgmeoUe9QUSIz7YnNDhSuYwuOzO7uSNJ
79Q0O+CM2us6HrnLieEPNmFZq+xhyf86QIZ/5R394Wks1WOh0IdGl1b7xC+HwBlP
Qc2V3zIYVHVGerNLIscRBYJCTzTcfTiHDA+qIJi/xlsuOcnvl3PUzhquRb8wcez/
3G1X8ahdF6L8bx1t8g4gtiPvcIeVW9UdORx+5OmTQWEOkj/JuY762JQQpPaJqho=
=Yv9r
-----END PGP SIGNATURE-----

--qtZFehHsKgwS5rPz--
