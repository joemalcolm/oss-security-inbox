X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1516" "Wednesday" "10" "February" "2016" "15:20:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160210202003.2D418B2E0D7@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0" nil nil nil "2" "2016021020:20:03" "[oss-security] Re: CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0" (number mark "U       cve-assign@m Feb 10   36/1516  " thread-indent "\"[oss-security] Re: CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0\"\n") "<20160210032005.GC26858@hunt>" ("<20160210032005.GC26858@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9481 invoked by uid 550); 10 Feb 2016 20:20:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9455 invoked from network); 10 Feb 2016 20:20:15 -0000
From: cve-assign@mitre.org
To: seth.arnold@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ubuntu.com
In-Reply-To: <20160210032005.GC26858@hunt>
Message-Id: <20160210202003.2D418B2E0D7@smtpvbsrv1.mitre.org>
Date: Wed, 10 Feb 2016 15:20:03 -0500 (EST)
Subject: [oss-security] Re: CVE Request: eom, gnome-photos, eog, gambas3, thunar, pinpoint, gtk+2.0

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.gnome.org/show_bug.cgi?id=703220
>> Reported: 2013-06-27 23:17 UTC by Bert Massop
>> Memory allocation integer overflow in gdk_cairo_set_source_pixbuf on large pixbufs

> https://bugs.launchpad.net/ubuntu/+source/gtk+2.0/+bug/1540811
> https://github.com/mate-desktop/eom/issues/93
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=799275
> https://git.gnome.org/browse/gtk+/commit?id=894b1ae76a32720f4bb3d39cf460402e3ce331d6

Use CVE-2013-7447.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWu5rcAAoJEL54rhJi8gl5JEoQAJvhxa+JfBRfWSeMuAkMjHZ/
e2Sl1CSTNy/bSbJ+vZFxgNDSah/QRCW3wteA/wPpOubufPPklbDav9tycaVop3Wb
hA1W5RFdHyxt0mUmGdLJd23nnyZ16OanMhMeIUhnzz0z5gY+rITFs2d7twK+k5To
BIpbEjF/LjFyuP809v3vmdjY5vOET9X5cE6Vf4h0ewo7jCYRjtTSeYSTzZK07fTI
dChHQ1TS8iw9kHZE7/BfsOcfm3zyPVKdgAb8C0d73/byLZs+CNdiOli0jP0V8BkO
2335Kh1PNZgyg3/Q/13lgzuQD46WPUlWv+bz12yXzO6GpVTxp9ff9yVX5x2LCwL4
oMVQ0OohIW0o7sdwBxv4wembusboImoae0aV8ID24y8poRVGtTlCevZoLbp7d0zr
lOiOJGopzy2lin4i10yUhkZb+V1aCKb8KTQJX0r8LrbQl0TvYSqv18t5jueMbeIB
Qg2emOFVc45eStz/zJI+PV4ly8smKOcWPiJOp47xHb4SlgdC409xJaak1FoGgiVX
PdXvp6Fh1v96DUG0WXb+MqKSsJSbMqrj/PNtYC7fzFPrezVcjG3WDVx+EcqVAMvh
mRkq+OjbhYEm3D69ZgoMgkVbDrgqEwFKZLkNfnpvQKjvJeA8vlhJadfZ/iuHY8MC
mQn7uQO0hFn4AwX4s53z
=wp1h
-----END PGP SIGNATURE-----
