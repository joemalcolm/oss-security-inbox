X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2349" "Tuesday" "28" "November" "2017" "15:52:26" "+0100" "Matthieu Herrb" "matthieu.herrb@laas.fr" "<20171128145226.GH6762@timmy.laas.fr>" "58" "[oss-security] CVE-2017-16612 libXcursor: heap overflows when parsing malicious files" nil nil nil "11" "2017112814:52:26" "[oss-security] CVE-2017-16612 libXcursor: heap overflows when parsing malicious files" (number mark "U       matthieu.her Nov 28   58/2349  " thread-indent "\"[oss-security] CVE-2017-16612 libXcursor: heap overflows when parsing malicious files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16331 invoked by uid 550); 28 Nov 2017 15:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27717 invoked from network); 28 Nov 2017 14:52:39 -0000
Date: Tue, 28 Nov 2017 15:52:26 +0100
From: Matthieu Herrb <matthieu.herrb@laas.fr>
To: oss-security@lists.openwall.com
Message-ID: <20171128145226.GH6762@timmy.laas.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="svZFHVx8/dhPCe52"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE-2017-16612 libXcursor: heap overflows when parsing malicious
 files

--svZFHVx8/dhPCe52
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

X.Org has just release libXcursor version 1.1.15 which contains the
following security fix:

Author:     Tobias Stoeckmann <tobias@stoeckmann.org>
AuthorDate: Sat Oct 21 23:47:52 2017 +0200
Commit:     Matthieu Herrb <matthieu@herrb.eu>
CommitDate: Sat Nov 25 11:52:34 2017 +0100

    Fix heap overflows when parsing malicious files. (CVE-2017-16612)

    It is possible to trigger heap overflows due to an integer overflow
    while parsing images and a signedness issue while parsing comments.

    The integer overflow occurs because the chosen limit 0x10000 for
    dimensions is too large for 32 bit systems, because each pixel takes
    4 bytes. Properly chosen values allow an overflow which in turn will
    lead to less allocated memory than needed for subsequent reads.

    The signedness bug is triggered by reading the length of a comment
    as unsigned int, but casting it to int when calling the function
    XcursorCommentCreate. Turning length into a negative value allows the
    check against XCURSOR_COMMENT_MAX_LEN to pass, and the following
    addition of sizeof (XcursorComment) + 1 makes it possible to allocate
    less memory than needed for subsequent reads.

https://marc.info/?l=3Dfreedesktop-xorg-announce&m=3D151188036018262&w=3D2
--=20
Matthieu Herrb

--svZFHVx8/dhPCe52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJaHXgqAAoJEGhzk+430Sj4/aQQAJrsHXmikU1W0jOotPMXman/
PiHk6M1LNQROarxvy1c2Mt+SsO6LVv+/KBkj/4/lXdf+4FOJ7Uq+xB9L15gmkaVr
GXrytueIM2v+U3iVy3a3swvRQERuP4jC80HdpbNuZVlmkjJEgt+7OQiY8UWlVa4q
dd4o6OxV1CD1wm4qmnL+2F+RUC0Gn1ycqY6KUK0n1/a1k0AwR4QH2xKO7jSvDsBo
ojH0RenHvstL5mVt+tjto0pnlrG48vGcb8gBE0a6UeDqihTXRIIARNXbVgOyMO1a
ZAv6KEmNYWUTogO6pYZtvNG2wmMYi3RIjmUsrYruQ3Fh6M4xZ1o6H+J57Ng7MBCC
Ue/cEjwlpQL2dNkkGWwBalni9UYiV2bv0jXnSvEHwhDDd6mt4abGUi8ZVjEoeQol
1tcbgQsFeWP9ntr5HELlp0cH4pislIMuFLkvX2uhhDuTIeqyg5VND3smdV6o8tkV
d+gytD6VhY/VpyVH7Z62JhOz1SgtiVM9JBQmUbpvdUaaxn37SvIUSh4cEfkj0zTV
9eJb5qnOF0xcCIca7agJC6g99EHj1TC13mMhKlwt9LWN9FZm4L5Ezt86hT9Q+uVe
QjAl+3T9CHF7V7NXD+rMtCnNpCBn8JaYM08r42uai0YzgmBzxH4msufqVcr6zCdZ
gXwVVmeA4uhiMfK6R5r2
=4mAQ
-----END PGP SIGNATURE-----

--svZFHVx8/dhPCe52--
