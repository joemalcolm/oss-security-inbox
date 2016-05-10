X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2117" "Tuesday" "10" "May" "2016" "12:14:35" "-0700" "Steve Beattie" "steve.beattie@canonical.com" "<20160510191435.GA12598@nxnw.org>" "59" "Re: [oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module" nil nil nil "5" "2016051019:14:35" "[oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module" (number mark "U       steve.beatti May 10   59/2117  " thread-indent "\"Re: [oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module\"\n") "<20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>" ("<CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>" "<20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10218 invoked by uid 550); 10 May 2016 19:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5775 invoked from network); 10 May 2016 19:14:55 -0000
Date: Tue, 10 May 2016 12:14:35 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Cc: kangjielu@gmail.com, cve-assign@mitre.org, csong84@gatech.edu,
	insu@gatech.edu, taesoo@gatech.edu
Message-ID: <20160510191435.GA12598@nxnw.org>
References: <CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>
 <20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
In-Reply-To: <20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>
Organization: North by Northwest Consolidated Industries, LLC
X-Paranoia: Greetings CIA, FBI, MI5, NSA, ATF, Immigration!
X-Message-Flag: Repeal the DMCA! Real security is only possible  when subject
 to open critical review.
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Re: CVE Request: kernel information leak
 vulnerability in Linux sound module

--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 09, 2016 at 07:29:09PM -0400, cve-assign@mitre.org wrote:
> > http://comments.gmane.org/gmane.linux.kernel/2214250
> >=20
> > The stack object "tread" has a total size of 32 bytes. Its field
> > "event" and "val" both contain 4 bytes padding. These 8 bytes
> > padding bytes are sent to user without being initialized.
>=20
> Use CVE-2016-4569.
>=20
> This is not yet available at
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/sound/=
core/timer.c
> but may be there later.

It's staged at:

  https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3D=
for-next&id=3Dcec8f96e49d9be372fdb0c3836dcf31ec71e457e

Looks like there were two more related kernel leak fixes:

  https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3D=
for-next&id=3D9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
  https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3D=
for-next&id=3De4ec8cc8039a7063e24204299b462bd1383184a5

Thanks.
--=20
Steve Beattie
<sbeattie@ubuntu.com>
http://NxNW.org/~steve/

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXMjMbAAoJEC8Jno0AXoH0elMP/jTyYBEH8meh9V9HKAsjapCy
cj+34L5JS8uGNJh54bHfSNrCGGX6m+875NyjhqgR8MOGytBNAj+WszAHmhfC4L6b
XL2Jp0eyKKGLFg0adWn0BsV9fEqVxTQUoAqYAfWgbqHuMdfY10gr5U0iSjRXVU2J
gUpaZ5o9iEfLUd2I8hK9MTWw1fZ/DtnTjeGaUuYjOjdjGvojm9sIpEVJXXS7wKMr
dbG4CKceoNYw4PTx6aPKBsT4HkMi1ESw/A08CzrQGC9Ns4ncjvXvcTlcjf7wpPYB
9W0s41h01+75O2JfU7xXpNc8JY4rR4fkw4t29cU3DJO2pY8Br1VhhbQdlphcrAO6
7CYuHA61DQjGmTLQq6lZZauXkB5O4enQciwe6ywKvH+Sgnd7F/HSqXFzCI5A+zpq
alGJlMti5dqSsqSLtDCI+rPwjqbDOT3HS9a1/eGy54f2SjtIkbeDA08UOMRfAN/O
XRTjgFLyUreTrYwSIF5IAPxVh0EmE7ameDpKKrJFS8CoaK8kSpdlssQhL+ThnR0T
qa/t8jLVBz9cc9u/Zo/WKxMazRsjX2RLHiacGZVC2ObRgx2U2QdXCoDnB/Q1iPQW
dXp8o0JOsmtRB0lMo8ZBhr9crQ5sSd2UpjCD7hnCVr8BK8vwjEKEeaU3Xkyyqued
Qx70pK0zp6509bMB02qe
=Pber
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--
