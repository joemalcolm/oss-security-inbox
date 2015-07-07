X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2192" "Tuesday" "7" "July" "2015" "10:11:02" "+0200" "Luca Bruno" "lucab@debian.org" "<2575620.DYihEfEJs8@chimera>" "57" "Re: [oss-security] node.js out of band write" nil nil nil "7" "2015070708:11:02" "[oss-security] node.js out of band write" (number mark "        lucab@debian Jul  7   57/2192  " thread-indent "\"Re: [oss-security] node.js out of band write\"\n") "<559A2F80.5030407@redhat.com>" ("<1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>" "<559A2F80.5030407@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7933 invoked by uid 550); 7 Jul 2015 10:53:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9243 invoked from network); 7 Jul 2015 08:11:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unstable.it; s=mail;
	t=1436256676; bh=APg1JNx+GmT1vv1ztgfVT6940ZlWr3wqPupOMbqbfwk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=ETv5r0YXFufRzup0xtWDVFa2zkI3y36N7ImCcPjQr6TvAKzzvWrvLOkR40NgPJwby
	 yfkWcH5oPLod6LRFJSJ7OGVXsNGNRcrxcsu5Tfw/EjAUMzJiaZta1p8IJrXOBp9JLT
	 5i/676bdDL+I79ZDyrpLvVx1taDse/KFazUl887I=
Message-ID: <2575620.DYihEfEJs8@chimera>
Organization: Debian
User-Agent: KMail/4.14.1 (Linux/3.16.0-4-amd64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <559A2F80.5030407@redhat.com>
References: <1436140297.2777045.315833937.576534B9@webmail.messagingengine.com> <559A2F80.5030407@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2622590.ybLKtBDC9h"; micalg="pgp-sha1"; protocol="application/pgp-signature"
Date: Tue, 07 Jul 2015 10:11:02 +0200
From: Luca Bruno <lucab@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] node.js out of band write
To: oss-security@lists.openwall.com

--nextPart2622590.ybLKtBDC9h
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 06 July 2015 09:34:24 Florian Weimer wrote:

> > This release of Node.js fixes a bug that triggers an out-of-band write
> > in V8's utf-8 decoder. This bug impacts all Buffer to String
> > conversions. This is an important security update as this bug can be
> > used to cause a denial of service attack.
>=20
> I have trouble reconciling this description with the fix in this commit:
>=20
> <https://github.com/joyent/node/commit/78b0e30954111cfaba0edbeee85450d8cb=
c6f
> df6>
>=20
> Upstream v8 lacks this change.  Is it required in Node.js because
> Node.js pokes at v8 internals in unsupported ways?

This should be the corresponding fix (plus testcases) on upstream v8:
https://chromium.googlesource.com/v8/v8.git/+/b199bcdd47ae97ec116b430e34ab4=
2001c8f04c0%5E!/#F2

Cheers, Luca

--=20
 .''`.  ** Debian GNU/Linux **  | Luca Bruno (kaeso)
: :'  :   The Universal O.S.    | lucab (AT) debian.org
`. `'`                          | GPG Key ID: 0xBB1A3A854F3BBEBF
  `-     http://www.debian.org 	| Debian GNU/Linux Developer

--nextPart2622590.ybLKtBDC9h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABAgAGBQJVm4mWAAoJEKmDSiJSB45OYOQP/32+lP8dvZzQTDjwA/Ii5bns
kabnGKJO4hWiIqqzr8skh00PE+jXfBCiH/xwPeifPoO4LvtKU/5Q2UBNuconukcG
lANptWa/lsdh9dbS8ZIyy9It1Te+DbCsKrU8dQF1Xm5/I4S8XcKIIeKPNG/8FbDG
RxeTFg2FFS1kk6/T35kjD2p+k8pPKB7l9PnRYWPsN9GDVKeeLbst9hP9Y0PYDi3J
mLiFux06O6GZeHApAS+UBjQqa0Oc9h8YJz9Cwpp0yuL7Hlqztjdlg/sxMIQgRoV0
7KdE/ztPBkoNFO94a/LJyCvgvDxG56rgTy39rxg/yCnz71R/ity6KuKsfOvgeJ5z
KGw3AxPpWmh+dVFrzHdAiDePSMQUMnQqXbWzmHSnCKOB1YL79KdNPGP8AjlBm/gc
onDGhan6t9Ah3PsRH4Nd4jIaeXDaHUE5MfS30f+Hk0qikzQA/DoDCtgkoKu+cAVw
HXtUsWI4YTDdqfSf7zwQK82hTsVb2sUnIUZP+hgGUjCaQV9nOmB+jwrPJSrWFUHe
UmgU70XlBvAgsGvS9f9woJeqOGNGc6fLh/uPrR0ROtYU0riVK+LL8w39qoeA1/UM
HLcJ9h0XF9KQLbw+Z9fIYgwgbv+MahI/r3Y4alSxnZYm1WPGeAoGAb1DqUa0vN4q
TH0Gx4pITRqCUkT6906D
=n2u+
-----END PGP SIGNATURE-----

--nextPart2622590.ybLKtBDC9h--

