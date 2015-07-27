X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2377" "Monday" "27" "July" "2015" "11:52:27" "+0000" "mancha" "mancha1@zoho.com" "<20150727115227.GA29353@zoho.com>" "68" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072711:52:27" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        mancha1@zoho Jul 27   68/2377  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<20150724155625.GA15469@zoho.com>" "<2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10209 invoked by uid 550); 27 Jul 2015 11:52:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10188 invoked from network); 27 Jul 2015 11:52:50 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=PynlnmB4UWAd6bXjKmqdoFa3kGx0pwi1gJrVzATYws9xhBq71IUP027wFTfX3/CF27Y03mQKSil8
    dfA284FhCLqv5U+pjFbwFp6VtLVtkCiyMbZywLIQbgeu1fWmsS4/  
Message-ID: <20150727115227.GA29353@zoho.com>
References: <20150723170954.GA17931@localhost.localdomain>
 <87h9oud89s.fsf@lysator.liu.se>
 <20150724155625.GA15469@zoho.com>
 <2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: bperry.volatile@gmail.com
Date: Mon, 27 Jul 2015 11:52:27 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245
 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 24, 2015 at 12:37:29PM -0500, Brandon Perry wrote:
> Prefer the term coordinated disclosure.
>=20
> Sent from a phone
>=20
> > On Jul 24, 2015, at 10:56 AM, mancha <mancha1@zoho.com> wrote:
> >=20
> >> On Thu, Jul 23, 2015 at 08:43:43PM +0200, Leif Nixon wrote: Qualys
> >> Security Advisory <qsa@qualys.com> writes:
> >>=20
> >>> Hello, it is July 23, 2015, 17:00 UTC, the Coordinated Release
> >>> Date for CVE-2015-3245 and CVE-2015-3246.  Please find our
> >>> advisory below, and our exploit attached.
> >>=20
> >> *Why* are you releasing a full exploit just minutes after the patch
> >> is released?
> >>=20
> >> (Disclosure: I am employed by Red Hat, but this is my purely
> >> personal question.)
> >>=20
> >> -- Leif Nixon
> >=20
> > There was absolutely nothing wrong with Qualys' timing. When the
> > embargo ends, it ends.=20=20
> >=20
> > The real problem is the underlying model: "responsible disclosure".
> > It's nothing more than a CYA strategy that doesn't maximize the
> > ecosystem's welfare. The positive-sounding name fools some into
> > thinking it a good thing.
> >=20
> > --mancha

Agreed. Coordinated disclosure is much more precise.

Also, it's judgment-free unlike the loaded term "responsible disclosure"
that implies alternative disclosure models like full disclosure are
irresponsible.

--mancha

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVtht6AAoJEB4VYy8JqhaDVD8QAKoyCqkwtXKtMf/q34iHQmKe
prhqaHkag7wHw4A7vSifwr85OIvZ0ttpwF8PIsX2HiqeAUQSe0Afk+WZYkEqHCs1
qDRAXXZj1f5t8BYaaH4dWGT5O9dJiOObDhBOENPZzcPT2P/hJ7P9CmstmD1SFC+h
n6vimAIm1iwF/IKDHkXa/KMejqqaLZtqyc4jYVNWNtDCPbk4xm7bduTo4BW/yXZZ
M7sOphNUkTIY43JQF6dOo1JA4sOE3F/C6BnweABo0QK/uL4uTT0D9nEh79ufFj02
V9v1vSMcR6+ybSmdCv0q8PlBCxcu3FILXolOPSLyjUOspR5JLrVCIodYYTduh35G
2h7V1E4nxiiJNYpUDPs8F3yV0PapBJ5WXxmA2tbaPWAxgs8SvFr12DONBR1yQHea
URhyn02owANpLhq12u2DGi7RmUu4yC/ktU2oCduv1LBKB22pKp2aYXwhXlRi1VnE
Yw/QVUUIyZy/vNZk30tn1qvLIOUTHX+Ho6pL/AYzRsX/9EKfI/wrpBQTCcTWMZZI
eQHAqM32QDfppBBBvXPwG7Un2B/dYDBHrmAUtNMj7e0qoYnJKAAvXupLS9pquXUQ
WIjf3pYwHcWH3TEGnY57Cp4O0xzWHz4TwOrmADEpbDgepLCKYTB1L3vMZTzYNUfX
zNT1egDqLrb0GhLQ4C3j
=Hr34
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--

