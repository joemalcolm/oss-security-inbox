X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1948" "Monday" "17" "August" "2015" "15:04:42" "+0000" "mancha" "mancha1@zoho.com" "<20150817150442.GA30459@zoho.com>" "54" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015081715:04:42" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        mancha1@zoho Aug 17   54/1948  " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<20150816184849.GA32213@zoho.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "<20150816184849.GA32213@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11518 invoked by uid 550); 17 Aug 2015 15:05:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11500 invoked from network); 17 Aug 2015 15:05:04 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=m/h97rQZy7q1Y/7W2awogWLa892CxYbIqzkr8xkoKPre5Va+ggwHlc3pDbjjkL8HMsaSpuW8+oww
    htJ5B54j6RMkfV8n8VtzOEz0B2TfuyBkUc9m1jyn8TnuKgGNjae1  
Message-ID: <20150817150442.GA30459@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
 <20150816184849.GA32213@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
In-Reply-To: <20150816184849.GA32213@zoho.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: gustavo.grieco@gmail.com
Date: Mon, 17 Aug 2015 15:04:42 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com

--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 16, 2015 at 06:48:49PM +0000, mancha wrote:
> On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> > A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> > been found triggered by function jasper_image_stop_load.  Despite
> > this library is used by many programs (
> > http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> > providing support, so there is no fix so far.
>=20
> If you email me your crasher I can look into a fix.
>=20
> >=20
> > This vulnerability was found by QuickFuzz.
> >=20
> > Regards, Gustavo.
>=20
> --mancha (https://twitter.com/mancha140)

By way of update, Gustavo shared his crasher with me and I've since
provided him with a patch that solves the most immediate cause of the
double free. However, in my review I've found other issues that require
some TLC.

I am waiting to hear back from Gustavo for his feedback.

--mancha

--pWyiEgJYm5f9v55/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV0fgKAAoJEB4VYy8JqhaDGnMQAK+mNq6vmxW0aVCjimDnZc4c
PZPgmQU0Z02fx9DWbQm1vNDcCA/Ell4NWWBFkn1fRG1EZkFHMfhYgwARStgBnV+f
CaJ6ltu3lS8n3FpsaZLnlsIxFdEFhwvZRmmAz6HQGJkfud3JqgDvB1BrPx5CJE8O
+2FgnfnVAeL3g/HFiDUtT4amRWLp/z3e7v9yatFLrHuqTz+JnAg1Kk5noTwL2PHj
XRpYAkOB4Ky0h3hRXvFFVwxtvLXHBCMt/+IbYNj9XriGfoacdhdmTcXjROcc4f5Q
fI34n9dNhIKyKlJD8NPQS4fr97TwYJrgKQXZi6f5mabjnw4rB9YKX0d6WPB4OuYW
PqMlndJzX7/F6XOT/cjbhblx1R3COw6IkMGpMmhNq9qOtluPoEnRS+pLPTztVMZe
9PxPkWIC8sZpi6sr1ZX0zPm/tntj4wKFiuV5lFSC6bGi7ScElnifGEcXxvwiLEjE
o22LddWYRbAJAl3cLISiG18NPRe66DpxJWycvcg4gbhsChgP2PMz7yiYRua6p2BP
z5Z3W6B/6vj94+Zzg5hlIBUsy++PXRdXjBCFjUHEPOHvsKjtOP4v39+REM6h5/nf
787/qa3Ks/EslZaez+v8SkBYu92Vj4h6wFQL/odzdLnnm5FDXzh2QCONKTARcXyG
QDPlkfKoOcS2Q7XxhK6g
=BbgG
-----END PGP SIGNATURE-----

--pWyiEgJYm5f9v55/--

