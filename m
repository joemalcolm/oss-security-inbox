X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Friday" "28" "August" "2015" "04:34:56" "+0000" "mancha" "mancha1@zoho.com" "<20150828043456.GC6540@zoho.com>" "60" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015082804:34:56" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        mancha1@zoho Aug 28   60/2004  " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "<20150821145841.GA4492@zoho.com>" "<1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25638 invoked by uid 550); 28 Aug 2015 04:35:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25617 invoked from network); 28 Aug 2015 04:35:17 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=E8moGn7/pVW6c/Sw6cEAWncCq2Ap/qWY5eY00SZYNtWMvgbcBrFMsmbYguE5WOZjsTuD0S94vFxD
    Mgckg+rgwxoakX1UMcdxBzL2AWjGFPdHq6VtZA8UJgQasInV2Zbr  
Message-ID: <20150828043456.GC6540@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
 <20150821145841.GA4492@zoho.com>
 <1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FsscpQKzF/jJk6ya"
Content-Disposition: inline
In-Reply-To: <1440431597.899479.364570361.7BC0E0E6@webmail.messagingengine.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: feld@feld.me
Date: Fri, 28 Aug 2015 04:34:56 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com

--FsscpQKzF/jJk6ya
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 24, 2015 at 10:53:17AM -0500, Mark Felder wrote:
>=20
> On Fri, Aug 21, 2015, at 09:58, mancha wrote:
> > On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> > > A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> > > been found triggered by function jasper_image_stop_load.  Despite
> > > this library is used by many programs (
> > > http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> > > providing support, so there is no fix so far.
> > >=20
> > > This vulnerability was found by QuickFuzz.
> > >=20
> > > Regards, Gustavo.
> >=20
> > Hi all.
> >=20
> > This is the CVE-2015-5203 fix I shared with Gustavo:
> >=20
> > http://sf.net/projects/mancha/files/sec/jasper-1.900.1_CVE-2015-5203.di=
ff
> >=20
>=20
> Thanks for posting this.

You're welcome.

> Is there a patch coming for CVE-2015-5221 as well?

I'll be happy to look into it if you send me a crasher.

--mancha (https://twitter.com/mancha140)

--FsscpQKzF/jJk6ya
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV3+TwAAoJEB4VYy8JqhaDBEAQAJPE/PQ5635OIka6RCXR0Sgh
cq0/9sK2Id2Q9U0PLaSDszZph1AJRpU2s7f+IiqqGgzfDZ0wxaZWuI35nyePL+Od
vQpqGBGo4nzkzJRIzN1jJ+l565ftxFszkWzgBMGkAVWQ+J/GsYDVoRlfzLFeArbO
vE6jdzOnZsUeUSeo/asrue30Xm7nteIbFAyOgjzcyBNDThkKKvbv5VfsNbqtGoaf
2SUSEAat21aGA3of+ixYZoM46t/RI1SrwmXx6+wUmLNXccP40RdUyiwqn0azFkVl
Pa1lBVfkPL6CdCvOxniEV+JKynce+Vk4GF2VFaAHRc7vTfJtD1ZnDZR3edm3fT4i
zysqcDJ55Q3T5iRXzxbHqIqmTdaRn548klfAc3O4fOKDGO2PMoij8zi+7UQebOo8
bri2SaXd4+A0Nk0IbFgKXD/yMGX8Z3Quf8HDuaDoTWFTeDV3+zquBoPp5dx9DctA
4fdFM/8H1XHt8uvSRiQcLeCI+IxgyMiYwlIUK35cFYjW+7pX+KjVbjAqHbjjTMee
i2DOMNg8XRoGv43AWaBGQgV//Z5zYyXOr682Unox4n8lArnPEmrDHNZ357JeAANq
cKVHM94RLmbpOrOH1yojq3nnmQAd805wrGFvIKcZ/Tktb2Nx/RqVfDs5LmCnWfA8
/EfTaRt0ADQovMrCAbQO
=S+hb
-----END PGP SIGNATURE-----

--FsscpQKzF/jJk6ya--

