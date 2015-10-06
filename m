X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1562" "Monday" "5" "October" "2015" "21:10:41" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151006041041.GI16643@hunt>" "43" "[oss-security] CVE Request: gvfsd-dav" nil nil nil "10" "2015100604:10:41" "[oss-security] CVE Request: gvfsd-dav" (number mark "U       seth.arnold@ Oct  5   43/1562  " thread-indent "\"[oss-security] CVE Request: gvfsd-dav\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9989 invoked by uid 550); 6 Oct 2015 04:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9968 invoked from network); 6 Oct 2015 04:10:54 -0000
Date: Mon, 5 Oct 2015 21:10:41 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Cc: security@ubuntu.com
Message-ID: <20151006041041.GI16643@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Op27XXJsWz80g3oF"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: gvfsd-dav

--Op27XXJsWz80g3oF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all,

Paulo Matias and Gustavo Nunes Pereira reported an issue with gvfsd-dav to
the Ubuntu bugtracker:
https://bugs.launchpad.net/ubuntu/+source/gvfs/+bug/1502912

This appears to be an independant rediscovery of an issue already known to
the GNOME project: https://bugzilla.gnome.org/show_bug.cgi?id=743298
which was reported by Gabor Kelemen.

The gvfsd-dav code appears to unescape some pathnames from a file
server that do not need to be unescaped and crashes when the input is
malformed. The upstream fix is (for master, gnome-3-14, gnome-3-12):

https://git.gnome.org/browse/gvfs/commit/?id=f81ff2108ab3b6e370f20dcadd8708d23f499184
https://git.gnome.org/browse/gvfs/commit/?id=abc69427fc9985f6bc1ebe9a14d645f4805deca4
https://git.gnome.org/browse/gvfs/commit/?id=0abdd97989d5274d84017490aff3bf07a71fd672

Please assign a CVE.

Thanks

--Op27XXJsWz80g3oF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWE0nBAAoJEPMhclmdjS6XbXUH/0ZgdhjqA+hQfNwhJhKINjoC
LtDoqhtC91bpADCfAZ+x7fP1qzmcPZ9EfqY1MiRKWVyPBqaUlO5VSm73+Qx252ay
wLjXpDX723ka1y97AFe57rJH9PbNun2XOeqi4wgh77FU5o1dCBrjXvDLMb+5ZuxS
XOAIIWrsjdI0OQat8B04SCL3Y2oT18L5sFlUBHu37hS45dJgm75RpJpGwtCeYpun
9qJxljHarEWZUWKTwiKIbvwAmupyP49vqONDC6cE5s5DHFvC9wcnTx7+wcKfYCAh
P7uBnlzvzqzRYRMjkAvwB/168mArSfRR8UiDqDydgBh/Fh4S1aa0S8Al7EHtCKY=
=2FWJ
-----END PGP SIGNATURE-----

--Op27XXJsWz80g3oF--
