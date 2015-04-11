X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1999" "Saturday" "11" "April" "2015" "03:35:56" "+0000" "mancha" "mancha1@zoho.com" "<20150411033556.GA27202@zoho.com>" "57" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041103:35:56" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        mancha1@zoho Apr 11   57/1999  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>" "<20150410201902.GC16910@zoho.com>" "<CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3431 invoked by uid 550); 11 Apr 2015 03:36:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3410 invoked from network); 11 Apr 2015 03:36:36 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=m6tW+fktOZEmstTvMcIU1ngBOSkFXKKxyoRIUHXQxlCbS90hF0gBKS5T8cLRhUZR9YZZumP6QMV3
    zDqDdglbVVz0m3+BxCDlSzbtGNoqYt/SU2aHOS1d3nPbaAMIzu/L  
Message-ID: <20150411033556.GA27202@zoho.com>
References: <540E7816.90001@redhat.com>
 <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
 <20150410092652.GA27909@blema.cz>
 <20150410201902.GC16910@zoho.com>
 <CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
In-Reply-To: <CACYkhxjVF_VQZL9TCXPoLC309RxE3-gsxKNeWFp2OACSMq9q5A@mail.gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: oss-security@lists.openwall.com
Date: Sat, 11 Apr 2015 03:35:56 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: Michael Samuel <mik@miknet.net>

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 11, 2015 at 12:04:58PM +1000, Michael Samuel wrote:
> On 11 April 2015 at 06:19, mancha <mancha1@zoho.com> wrote:
> >> * Dne Thursday 18. September 2014, 04:30:22 [CEST] Michael Samuel naps=
al:
> >> > Ok, for rsync you can download colliding blocks (and a brief descrip=
tion) here:
> >> >
> >> > https://github.com/therealmik/rsync-collision
>=20
> > The last time this was discussed it was suggested to the reporter that a
> > fully working PoC be posted so the impact (or lack thereof) to rsync
> > might be evaluated.
> >
> > Unless I missed it, this hasn't happened.
>=20
> I reported it upstream with full working PoC
>=20
> Regards,
>   Michael

The suggestion I referred to was sharing the full PoC on oss-sec as it
appeared you were interested in engaging the list for possible CVE
allocation and/or coordination of mitigation development.

Without that level of detail further discussion on-list strikes me as
rather pointless.

--mancha

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVKJabAAoJEB4VYy8JqhaDxO4P/AsceBX3//n7HcX0JSMwhNh7
PPd2gspA/Kh7+/75Nev3uVYFMMNPEGk8RqwzefQh3c+kdJQrE7qqCX6sl/Irs1c0
a3RbcQRxyAuGSXGbhlwhzEMvI9ytY/Ohi2wvPl+bnkiJRNV8sqkTMxya0tIHGVEl
GR0Ol0DV3NfwxALXSavB765S2VsysWvsb5of8Nox5F1G6+I4Z22bGeU/1wTb4LkE
7TSM+ZQBwDHYCgh9/Y/Y9yqQJbJmIE+uir1z2irPZq5WmjT89oypJcs8BnxxA+i1
O3prtJYfZ0cNVYW3C+0eSfyquY3kbyFjXQzg+IFByoT843AYr5iNNZJllDjFaJK9
d34VO5GGmjWlpYVk3dgNFhL0bmu/Z6iG0c0uXzyBj+x18NnlkISHeJq0MCVweAKn
oRXhpUbzzO1zJ6idpI/cNdumlHVNXeBLuS1ntmb10eYbIPwNiXusBEdep+Gw3DE6
ucaszQhFO5mr42orgeXwtlUcRUiUOoK8O/7/IHKvzvZlONqnsjrlk5sUbf2NwoP9
ziW66SkTvJ5B1xpAXgn1EcgydTKUaZFtHn2ZqErSg9uZHoo/UIpvF+FfBs22vPRK
Ey9fekkCjGnanlHMnT1cGIlP1Ca8KWUdzweWtdm/8LzR66s2yjHbcPHyGCBn3DTv
FZ33FoGgcvrjb3B3Fsja
=xHy3
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--

