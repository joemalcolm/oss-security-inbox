X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1651" "Friday" "21" "August" "2015" "14:58:41" "+0000" "mancha" "mancha1@zoho.com" "<20150821145841.GA4492@zoho.com>" "47" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015082114:58:41" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        mancha1@zoho Aug 21   47/1651  " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9233 invoked by uid 550); 21 Aug 2015 14:59:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8172 invoked from network); 21 Aug 2015 14:59:19 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=OjOqPU8tABqdYl7150DUhHbw1QZ9Dj3aVXXI5tkAx8JdIUFi1TPUuI17ZXZ7cXSos+6PDMdVDWz1
    9+OjexuVOXXN3vZK2b0Rzta7N573FVeCHXPksIb6bL3c4HNtmwmx  
Message-ID: <20150821145841.GA4492@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
In-Reply-To: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 21 Aug 2015 14:58:41 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> been found triggered by function jasper_image_stop_load.  Despite this
> library is used by many programs (
> http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> providing support, so there is no fix so far.
>=20
> This vulnerability was found by QuickFuzz.
>=20
> Regards, Gustavo.

Hi all.

This is the CVE-2015-5203 fix I shared with Gustavo:

http://sf.net/projects/mancha/files/sec/jasper-1.900.1_CVE-2015-5203.diff

--mancha (https://twitter.com/mancha140)

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV1zyhAAoJEB4VYy8JqhaDtO4P/A61lmtrZ6diTlWItJ7tNlJ9
U7qQOxAXVyAai8LFIGXHSJ5KqHfp5IhpmdELLrB9A1NDRxK3a8sa9tRPofScHiqC
uDo/K0iKtoYbIyy7GuFJFk5+tw6QYYV/ush+NDjok1R9q4tF/5Vx1isYLTvEG6X5
ZFBr9yyPH7krR48AF31kEx5T+IzLhk1Q/brKgzUqNI3IRHEV3pZBf93P1j0OERAb
dAxbTWlLAsGya3dVV6GdlXkYIOrSFpxtdZKDBsrld8e1009ad0vUTLVeJLLWMd2i
FXnCxvddYsSw2PsxNOvHsFYNETrgQERIefH2dbiND7FvxKuB5IaR7N84Fam17R1+
Uqia2eFqxQT1gTm+tPFQ52A4IXt8vo4Zz0gLv4/l7vvm4h7pkaSVy6EtYdfWArsQ
36p9v+a+bkoYwlnrx93CiW6lkx7DzjbMEDeVMNAIlVdS75Cpf55oLGJ0O03Smb5n
UzqeEewyDzwPBVLw+AiGruPBQvLZgZjPu+ozWFi9KIHJLM27o/5Q67XqimSaOI0f
mpTujC9XGKd1WIQyUehSScNQeytdyWu1HAsdauLpUj61awn6W+E9G81BwdmHDi6d
q3gHlp0Gg9pdCf1ytECbMhERV4FvfyHZO8/MnQLhoE894/awdYk/EB7G3Pn7WCdF
I0oNI9mq9R6QIFLxVNJ4
=sKB1
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--

