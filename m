X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2446" "Friday" "10" "April" "2015" "20:19:02" "+0000" "mancha" "mancha1@zoho.com" "<20150410201902.GC16910@zoho.com>" "70" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041020:19:02" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mancha1@zoho Apr 10   70/2446  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<20150410092652.GA27909@blema.cz>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21884 invoked by uid 550); 10 Apr 2015 20:19:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21866 invoked from network); 10 Apr 2015 20:19:32 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=pzh5TEl3ytIep+slYOnQM5Cow89LWrDTgbBSIFYXAGqBFVGHy8v0zRQCNocgcuqeYNfZPGmtMNC7
    3gaY6pk3fmRK5NUclIcort7AmPdniU0vdtuL9J+H0dYRNfORpSbc  
Message-ID: <20150410201902.GC16910@zoho.com>
References: <540E7816.90001@redhat.com>
 <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
 <20150410092652.GA27909@blema.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline
In-Reply-To: <20150410092652.GA27909@blema.cz>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: Michael Samuel <mik@miknet.net>
Date: Fri, 10 Apr 2015 20:19:02 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: oss-security@lists.openwall.com

--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2015 at 11:26:53AM +0200, Vitezslav Cizek wrote:
> Hi Michael,
>=20
> * Dne Thursday 18. September 2014, 04:30:22 [CEST] Michael Samuel napsal:
> > Ok, for rsync you can download colliding blocks (and a brief descriptio=
n) here:
> >=20
> > https://github.com/therealmik/rsync-collision
> >=20
> > I don't get the feeling that this will be fixed upstream, but a simple
> > fix would be
> > to incorporate libdetectcoll from Marc Stevens into rsync, and when a c=
ollision
> > attempt is detected to simply send a data block.
> >=20
> > A longer-term would be to just replace MD5 with a collision-resistant h=
ash
> > function - blake2 is a good fit.  The 128-bit output is right on the
> > edge of being
> > strong enough.
> >=20
> > I submitted a very rough patch which does both, but I haven't had the
> > time to clean
> > the rough edges - the libdetectcoll codebase needs a fair amount of cle=
aning
> > (printfs etc), and the rsync codebase needs a fair bit of refactor to
> > handle hash
> > output lengths > 16 bytes.
>=20
> Was there any further progress with the rsync upstream?
> Are they planning to address this issue or is there no interest?
>=20
>   Vita Cizek

The last time this was discussed it was suggested to the reporter that a
fully working PoC be posted so the impact (or lack thereof) to rsync
might be evaluated.

Unless I missed it, this hasn't happened.

--mancha

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVKDA1AAoJEB4VYy8JqhaDOKEP/1sBAWlMhmjSLvwaP1PRmhJx
8Mj7uWFsVhZRS4UISA0psn1iYVACdqSwJu+4Oa8OsJ5ujIFw7Bjy1O8ECtdCzqLQ
6AYZT4rzr/7ZuGK0vfxcQdspRL0UFq8AtEXR+FpeGZiuSq3OAM7a/anwfSmupp+i
0pIX6BmJ4nZk09QyqJ7DdBxKdboEmsjbHPk/Xl7cvZwBFD2AGeIyLH/IWkB3mueX
G3WoadbSRMpt70KjMsdjQsrODhd4DP2naKlCFnH4H8aVNQLTAeNQUz4OypFiAnVx
/rJ2fW103DqVlT8fywOtJxeD3Kvz8crlI237r4TmLvSrH7tbokSnONORzNaFJbbq
p9jV/EoQf/SPxl13UHj9g17/n6OoX1TjXvwupTzdRlCl6IGUVU3wlGR957FqfAZf
ShYei4fXhZ2wdX0hjL6/GvTnjW3snM+ALVxyJMzL8g4ScRvI2Dr72r5DVi59tV/I
v8lRZGEvGYCKAkPdEaQptSuZkV21vzZex0C5p8rNyBFyCDbglSOlwi52Z1Kj4iAw
kENPfmTHKS0Vb+5Th7pYdyyVO2JlICejauCFOkHpe4jjWThIbezaKfuVWVWmMLO1
vpMfD0pLHrOsLfBVXUnpZ1255NTgNvcEqTAYvr/1hHQvq6LrX+odE7qnqe7i9t20
K/Xy8TO/CvFRP/StZate
=NGjt
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--

