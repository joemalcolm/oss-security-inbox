Received: (qmail 7476 invoked by uid 550); 4 May 2023 17:57:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20328 invoked from network); 4 May 2023 17:15:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1683220530; x=1683306930; bh=/+
	afiuKOGisCKSuR2Xw5sHDbr1RPIswYhNOxLzxoYyE=; b=Dh0xt41BbxVjjGO4xv
	7Kc9a4H9UGleAc28sqoMsPRCLsanGO0PNUFkoWgU32+uz1Z+s4Hj8RowdLlsmH8D
	GDWxfNttzKhRgwp3WgdrlIB+zGZXsaw21xWWgpsiA2Z+R0e7Ove7c1EfqiINck+w
	F8CosMmgTwMBiOUwq/qHra+dn0BQKpQcLnuzQkdcx/Ey4RUwy2YHsiHTBau8DgcD
	HsD8mSeZ0f/mUFeu9Q6UJeKsUeA+yzaqx+LwDjVnDlOfkL3zqAd5g8VvAMgWUYkv
	7xozKUFrmGFK7w62Dm9A53WMgDADSiDCxH2Dc2cy297mNCmY+IZFGoqo+FyIt8up
	QDPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1683220530; x=1683306930; bh=/+afiuKOGisCK
	SuR2Xw5sHDbr1RPIswYhNOxLzxoYyE=; b=ZRdCQ9OZY54oW8+qA1kCPz9C0xDzO
	Q/HyZJ+iKuEYDNSvLZzbbYaNw8n39JNCk1KPT2N59wlrQja4lMtqv99nYF768Fhf
	qmXDmMp+gHihni+kon6Oz5D9ccVAxZPhTiTPgKc/zYiyLAimLoJk9ZYOAdoEV3nA
	wuqebN2IY437dTEPFw364WXekN96+2AAstpmBCm52mTqVmlp57haN1tsmMn3Vca5
	K0oeKGJxEUULgs51jtgDS/YgwYhKE7vYXlu0NrBK0tqmzyZcNH9Q48tH/Ueg8948
	GS34d7gJJ08TWxerJVz+ky0XeGUPXjK//qAyMRkZxp5PA8TFmTMLIr1jA==
X-ME-Sender: <xms:MuhTZEQ3QUg9YvMqK8rYCakmpwuj_uJ-Dx3S9qBsM3MxIoE-Eykr4Q>
    <xme:MuhTZBy8EY498HSRpEcwIb7LucvFk3iYWSP8QG1vJ15OMrB8yNIxpgEKGPhmTSOX2
    qceTRcg0VOHYg>
X-ME-Received: <xmr:MuhTZB2YvhXKGvG3mtEUybv2VECOkV3sBfatL0FdfZdv2qC9GyrhV2O0jLgmyWjwW84OipGIIfDVcLdl9zZy14qA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeftddguddutdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepkffuhffvffgjfhgtfgggsehgtd
    erredtreejnecuhfhrohhmpefurghmuceuuhhllhcuoeelmhduleelihesshgrmhgsuhhl
    lhdrohhrgheqnecuggftrfgrthhtvghrnhepjedtffejfeevveekvdfhleevjeevvddvvd
    euvedvfeduuddukeeigeeuueefieejnecuffhomhgrihhnpehgihhthhhusgdrtghomhdp
    thhinhihhhgrshhinhhsvggtuhhrvghtlhhstggvrhhtuggvfhgruhhlthgrfhhfvggtth
    hinhhgtghprghnrdhpmhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpeelmhduleelihesshgrmhgsuhhllhdrohhrgh
X-ME-Proxy: <xmx:MuhTZIA-cCRp0OkqaXku1zff8qgGi9rJViqohkHLUxvLqZs9jVzjHQ>
    <xmx:MuhTZNhgNTZiMMOHY2L3maDLnXAyWluZrcgEo_ZeFl9rqSodt5ncvg>
    <xmx:MuhTZErowiFBnvNHvqHWKuUdSoi4xk_ol5W7D5jxJwZePiK2-hTZRQ>
    <xmx:MuhTZNK7iVVd6qovtOimZFmpsNz4_EEexAFt2gA9igVWNKbsMxyNqA>
Feedback-ID: ie6294588:Fastmail
Message-ID: <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Thu, 04 May 2023 18:15:19 +0100
In-Reply-To: <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
	 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
	 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
	 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-p9EOaRwwBeMBSme2BfNT"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

--=-p9EOaRwwBeMBSme2BfNT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2023-05-03 at 15:54 -0400, David A. Wheeler wrote:
> > On May 3, 2023, at 3:15 PM, Reid Sutherland <reid@thirddimension.net> w=
rote:
> > Who actually decides when something receives a CVE?
>=20
> There's a process for assigning CVEs. Anyone who wants to be able to assi=
gn CVEs - that
> is, to become a CVE Numbering Authority (CNA) - has to follow various pro=
cesses.
>=20
> >  This can be used to defame projects and products as in this case.
>=20
> Identifying a vulnerability does not defame a project.

But, reporting a CVE where there is no vulnerability wastes a lot of time f=
or the project
maintainers, as we had last year with this CVE:
https://github.com/aio-libs/aiohttp/issues/6801

As far as we could tell, it seems a random user reported a DoS vulnerabilit=
y to Github
(maybe?) and got a CVE assigned, with no reproducer or any evidence of a vu=
lnerability,
and just a link to an issue which was never considered a security issue by =
anybody. None
of us involved with the project were notified of the report either, we lear=
nt about the
CVE from other users asking us about it.

It took months to get that satisfactorily revoked and stop getting users as=
king us about
it (apparently there's no standardised way to tell if CVEs are revoked, so =
seems DB
maintainers have to remove them on a case-by-case basis, making the process=
 much longer).
So, something somewhere is not fully working in the process.

--=-p9EOaRwwBeMBSme2BfNT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCZFPoKAAKCRBf6SjNlibO
KyOuAJ9Q2Wq7UeWKbmcp87XI4k9ssEbAcwCfSVeTeEg/aRXZH2Z9wDa6okYPJ14=
=lEvO
-----END PGP SIGNATURE-----

--=-p9EOaRwwBeMBSme2BfNT--

