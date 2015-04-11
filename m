X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Saturday" "11" "April" "2015" "03:36:57" "+0000" "mancha" "mancha1@zoho.com" "<20150411033657.GB27202@zoho.com>" "43" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041103:36:57" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mancha1@zoho Apr 11   43/1460  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>" "<CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9661 invoked by uid 550); 11 Apr 2015 03:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9588 invoked from network); 11 Apr 2015 03:37:25 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=XUEm/Sxp49VRgf3F2DRn9qvjSs7NdbpYpirl59k2s4yUk8KadP+ftyOzi7m9DoFpU4DW2YJVOUbW
    U11XN918PGTmVPuu0Nt+dFYEzPN2eseCz5yhpU0iEUA1lCtRp3QU  
Message-ID: <20150411033657.GB27202@zoho.com>
References: <540E7816.90001@redhat.com>
 <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
 <20150410092652.GA27909@blema.cz>
 <CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BwCQnh7xodEAoBMC"
Content-Disposition: inline
In-Reply-To: <CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: Vitezslav Cizek <civ@blema.cz>
Date: Sat, 11 Apr 2015 03:36:57 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: oss-security@lists.openwall.com

--BwCQnh7xodEAoBMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 11, 2015 at 12:06:57PM +1000, Michael Samuel wrote:
> Hi,
>=20
> On 10 April 2015 at 19:26, Vitezslav Cizek <civ@blema.cz> wrote:
>=20
> > Was there any further progress with the rsync upstream?
> > Are they planning to address this issue or is there no interest?
>=20
> No further progress with upstream, it's possible that rsync is abandoned.
>=20
> Regards,
>   Michael

I see commits as recent as 12/2014.

--BwCQnh7xodEAoBMC
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVKJbZAAoJEB4VYy8JqhaDvv8P/Ry01p1DZiULSNlvK4eaKonD
rmZSaG1hqZaQomq3Q427yEU3shBthMF0cRQauGxtmQnxRNC4yU7tR+QpCj8mVbNa
rBHw5Pwv2eVi22AjmVUxTqMwGr2EMP25wdAohMhmroUJzPAV5c7OUIxEZJD/bszW
WlEyk3HMQ+IqBqkFZG+ucwJxPADVBxYCNi27Ps/HMfyoD1u8UH+88vSNDoG7mrrd
6cskGMBZvFFjWnTJhEVHmaIU5oVQA70FUO6Z6Zt0ospKdLS4FUvxb+cJahIh5Zr0
26QWaztPzqY9+tXPEomdxNq3sN5HEXa6T0bl3c3zfXEovJQ/rbtumMK/WY41Q6jj
KjGekcFIHzEtc6KPrkx1rbHWQv8j3ofxy0LQLC+NxP0g3wQuQHNMPY+Odksca6ze
r94xmSq7DFgKR6Iu9tXMRtAYPU0ayXWymjnuLYMKpATsle/rs9ISSZiZBGGnQnGS
AwcYtW2iGeyH9IwsAOmAxq32QD07TxGffcLFfCvqFyGUle4swEL53CQ7aspJAXyL
n9XE/fzTCCTKQbtvaDy2t+CIMa3j2jRGT5VKXimXvl0joMO38XeB8jELqgJzhOPy
s3Lt34xQME3X9ODtPGF4WnfBlWcv9PBJng3dNN9k+S/jHLsqOLmp7POmHEo4ccXm
r96c3Lzq5ejvBuwL9H+I
=O/jO
-----END PGP SIGNATURE-----

--BwCQnh7xodEAoBMC--

