X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2566" "Monday" "27" "April" "2015" "21:29:01" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150427192901.GA20909@kronk.local>" "70" "Re: [oss-security] WordPress 4.2.1 security  update - CVE please" nil nil nil "4" "2015042719:29:01" "[oss-security] WordPress 4.2.1 security update - CVE please" (number mark "        alessandro@g Apr 27   70/2566  " thread-indent "\"Re: [oss-security] WordPress 4.2.1 security  update - CVE please\"\n") "<20150427190844.GA10378@eldamar.local>" ("<553E845E.4070503@redhat.com>" "<20150427190844.GA10378@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26097 invoked by uid 550); 27 Apr 2015 19:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26076 invoked from network); 27 Apr 2015 19:29:13 -0000
Message-ID: <20150427192901.GA20909@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, nacin@wordpress.org,
	Assign a CVE Identifier <cve-assign@mitre.org>
References: <553E845E.4070503@redhat.com>
 <20150427190844.GA10378@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
In-Reply-To: <20150427190844.GA10378@eldamar.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: nacin@wordpress.org, Assign a CVE Identifier <cve-assign@mitre.org>
Date: Mon, 27 Apr 2015 21:29:01 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress 4.2.1 security  update - CVE please
To: oss-security@lists.openwall.com

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2015 at 09:08:44PM +0200, Salvatore Bonaccorso wrote:
> Hi Kurt,
>=20
> On Mon, Apr 27, 2015 at 12:47:58PM -0600, Kurt Seifried wrote:
> > http://codex.wordpress.org/Version_4.2.1
> >=20
> > Version 4.2.1 addressed a security issue.	For more information, see the
> > release notes.
> >=20
> > From the announcement post, WordPress 4.2.1 fixes a critical cross-site
> > scripting (XSS) vulnerability, which could enable commenters to
> > compromise a site.
>=20
> Had requested CVEs for this in
> http://www.openwall.com/lists/oss-security/2015/04/26/2 .

Note that this and your request are about two different wordpress releases =
(at
first I got confused too by the version numbers, 4.1.2 !=3D 4.2.1).

> But there is as well a different stored XSS reported
> http://klikki.fi/adv/wordpress2.html which seems to affect as well the
> latest wordpress versions (not verified myself).

This blog post seems to be about the same issue fixed in 4.2.1: it talks ab=
out
comments length when inserted in the database, which is what commit [0] see=
ms
to fix (basically the only commit in the 4.2.1 release [1]). Also, both the
wordpress announce and the blog post credit the vulnerability discovery to =
the
same person.

(All this to say that we need CVEs for both the 4.1.2 and the 4.2.1 release=
s:
they fix different issues).

Cheers

[0] https://core.trac.wordpress.org/changeset/32307/branches/4.2
[1] https://core.trac.wordpress.org/log/branches/4.2

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVPo36AAoJEK+lG9bN5XPLWyIP/0XVmYEpsbXk7+vmO2bwvSIa
3w0+KD/kv1lQqHwCMeC6LGWMBFYKY3pd1vRL1ay6BkXr7KMY6CTxATrI/cLHBwO6
JX67tTFcZ334w/8bHsU/1TgUm8E+jT31KupvnoHi2rP8CW61Rp+AAVZA4cyO7/pj
cEtim4OXdpNhjQnGw5lBOMWUGxB1SwwfjtoqHU5t+ZGmOBaQRB83uZDdCXrpaz81
fJPif1RYP3kceOKHJEWDgpAdu1k9tpkBQTE4YiP8VG1JpPOZclDceJhILCY8BjXg
cUvRlJyK9NYjp1ZnC1zaDKhRSJ1liMV57Xw0hL6CLmWQ2OstmxRhnLJ8hSqhC3AE
Pbqxs6beloZDD4sC8/RQqLtUJNsY1VgNhr0TPkDxNtxOdUcEgMGoimqj3v5dywc+
0JTKBKrfipxfeyBdL7QZOmweyCiTvIkoSSg5Ne+HQ2iQrQICEg1l2s2Xw3hgnx4l
YSld9S1Lh9NugoJ9LFXEbsTX3XPn00hiNMa3O9vQeJ+Jwc+v+5BHI/CH9wYcyzxp
wg4GZjsYMPxu/IktdaKtL9up5vWpulH5JUK8n678ukPbhxBsdF9xRo3Qm7/Epeeq
eV3iiMD0xyqWyl51Vrm+EIewqitCYIHX9H5Oy2fOkeLCJF+429SDUsPCuOW+QBUZ
S98SUTzolejgCuo8SA31
=MGQA
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
