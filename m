X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4136" "Wednesday" "11" "July" "2018" "17:34:31" "+0200" "Florian Bruhin" "me@the-compiler.org" "<20180711153431.so6swm2x6bv7xogr@hooch.localdomain>" "118" "[oss-security] CVE-2018-10895: Remote code execution due to CSRF in qutebrowser" nil nil nil "7" "2018071115:34:31" "[oss-security] CVE-2018-10895: Remote code execution due to CSRF in qutebrowser" (number mark "U       me@the-compi Jul 11  118/4136  " thread-indent "\"[oss-security] CVE-2018-10895: Remote code execution due to CSRF in qutebrowser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26279 invoked by uid 550); 11 Jul 2018 15:40:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22003 invoked from network); 11 Jul 2018 15:34:46 -0000
Date: Wed, 11 Jul 2018 17:34:31 +0200
From: Florian Bruhin <me@the-compiler.org>
To: oss-security@lists.openwall.com
Message-ID: <20180711153431.so6swm2x6bv7xogr@hooch.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lhpynxw5gqqnh57e"
Content-Disposition: inline
User-Agent: NeoMutt/20180622
Subject: [oss-security] CVE-2018-10895: Remote code execution due to CSRF in qutebrowser

--lhpynxw5gqqnh57e
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Description
-----------

Due to a CSRF vulnerability affecting the `qute://settings` page, it was
possible for websites to modify qutebrowser settings. Via settings like
`editor.command`, this possibly allowed websites to execute arbitrary code.

This issue has been assigned CVE-2018-10895:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-10895

Affected versions
-----------------

The issue was introduced in v1.0.0, as part of commit ffc29ee.
https://github.com/qutebrowser/qutebrowser/commit/ffc29ee

It was fixed in the v1.4.1 release, in commit 43e58ac.
https://github.com/qutebrowser/qutebrowser/commit/43e58ac865ff862c2008c510f=
c5f7627e10b4660

All releases between v1.0.0 and v1.4.0 (inclusive) are affected.
Backported patches are available, but no additional releases are planned:

v1.1.x: https://github.com/qutebrowser/qutebrowser/commit/ff686ff7f395d83e5=
ac48507ecfae0b0e97a61ef
v1.2.x: https://github.com/qutebrowser/qutebrowser/commit/c3361c31b370140f3=
23e481dd455450b1e74c099
v1.3.x: https://github.com/qutebrowser/qutebrowser/commit/c2ff32d92ba9bf40f=
f53498ee04a4124d4993c85
v1.4.x: https://github.com/qutebrowser/qutebrowser/commit/22148ce488da52e8a=
0e01ed937c0cfdb24d34775
master: https://github.com/qutebrowser/qutebrowser/commit/43e58ac865ff862c2=
008c510fc5f7627e10b4660

(add .patch to the URL to get patches)

Timeline
--------

2018-07-09: I was made aware of the original issue privately (initially
believed by the reporter to only be a DoS issue), developed a fix and conta=
cted
the distros Openwall mailinglist to organize a disclosure date to give
distributions time to coordinate releasing of a fix.

2018-07-10: Slightly updated patch sent to the distros mailinglist.

2018-07-11: Public disclosure.

Mitigation
----------

Please upgrade to v1.4.1 or apply the patches above.

Note that disabling loading of `autoconfig.yml` is not a suitable remedy, s=
ince
settings are still applied until the next restart.

As a workaround, it's possible to patch out the vulnerable code via a
`config.py` file:

    from qutebrowser.browser import qutescheme
    qutescheme._qute_settings_set =3D lambda url: ('text/html', '')

While there is no known exploit for this in the wild, users are advised to
check their `autoconfig.yml` file (located in the config folder shown in
`:version`) for any unwanted modifications.

Credits
-------

Thanks to:

- toofar for reporting the initial issue.
- Allan Sandfeld Jensen (carewolf) and J=FCri Valdmann (juvaldma) of The Qt
  Company for their assistance with triaging and fixing the issue.
- toofar and Jay Kamat (jgkamat) for reviewing the patch.
- Morten Linderud (Foxboron) for suggestions on how to disclose this
  properly.

Links
-----

- https://github.com/qutebrowser/qutebrowser/issues/4060
- https://lists.schokokeks.org/pipermail/qutebrowser-announce/2018-July/000=
048.html

--=20
https://www.qutebrowser.org | me@the-compiler.org (Mail/XMPP)
   GPG: 916E B0C8 FD55 A072 | https://the-compiler.org/pubkey.asc
         I love long mails! | https://email.is-not-s.ms/

--lhpynxw5gqqnh57e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE4E5WAAJAG47w528KkW6wyP1VoHIFAltGI4cACgkQkW6wyP1V
oHIDwhAArQokCfXInkcYab58PK8pTGE73k+peivdlPStRgfzTeqvRCzvK0JACvGp
o94ZGEWDVcA2uWmNGyudtWHjxrF1D0Ert1F14Ucy1Wp7kAaj2KDz4x1Ge36GWkCQ
1HzlaiIxaPvZLZ9nvKqsecA9K9nrO/9IRmSQVRYT5SHSBmGaL9nYDaTvc3PLmRlv
O+kU4mjWVXlqWnqr7sDLjTX7wrZmYzUQCFsrNzO6f9cMaJ7z9gPQIgb0F/zdDQMy
AomGz9xUXOfY6nvyyEQ7Jhz6niolytwhztqT73qYjt3cfSEDAIKd1htlPmBG53Bb
GOCSnbiq8y7joSxYCXnlJSXknunjSG3BPIeqpXS28nR/TpG80jtgO5fAl7KqIhzu
kjW+wog/EtVCqo66MPM+hekq06nCy7DLGV3KO1oqDxHzFHyvcNfCcVNY+NhD05R+
K67ngcS52VX3Ne5q/FIEU18qPsyhkrl/Bpj1c1ARNz81GnGYvAWreY8LK1O0+qL4
Crfmfi0wpOy2GSeNwpY9jxwkGrUBB1c5yfUCtQiQnUSJzEY0brvNw4nqgV3Sxd7c
Ps2aazXkERhvChmbOJQhqxKKtBHRt6Zn0+m7vWa5kLxgTN7ImwwMOl95aY9cktCE
/tA9lXBlqJvD3vaE1RQwFJJfvkfH2IfsIuIBlvdK+ZJ9izH9/kQ=
=9P2u
-----END PGP SIGNATURE-----

--lhpynxw5gqqnh57e--
