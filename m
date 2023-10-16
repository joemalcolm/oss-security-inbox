Received: (qmail 7381 invoked by uid 550); 16 Oct 2023 16:34:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5619 invoked from network); 16 Oct 2023 15:59:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697471952; x=1697558352; bh=wy7tGdra/vBPU3mcVlAdH3rh4p1S/+0rCJV
	ogrpoitU=; b=v4ubRU2bKgL5uaIX00RATW067pL497aE1TSjS2o/uQb9IeBl4Jp
	TEORgFEp0zw1iyYvFiEsJefnzZWPyMM1BM/JDKwR7/aHSuPfIkHTVP/9F242qYke
	Skt9H9gBXXGczUPW7YxMu5GQSycw5diBb3bmPDZGg7UL/sd8a1bwJAhzJaIlMsND
	cN47SzvRN/ggLVRT8ufTxXIcIG3WxgMBNSBo3zXkOLPN2ub/+XZRHcoanCgL8v2B
	FDHVPg4WNSBdr+iJN2oI0wA5QoJCJZGkcLPaFMajI1H6RzayHgRFjHFqguo+dnNt
	gd3Dl9giXkFB9/xznXF7R+vx7cQk1vpyLmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697471952; x=1697558352; bh=wy7tGdra/vBPU
	3mcVlAdH3rh4p1S/+0rCJVogrpoitU=; b=gywHAYEwKwfCzNnKul9i1IMIH0VQW
	qyhT6ElO+wmQrpy3o2LptsKAu1NePp/xOCH2PpoS8nk8fFQkFb/pQ/LQicDpEX9C
	K3+WWJddEo0/nM7fHnO5NdpMA+AhOqnfP4JL1zSIiAU50oHQ/YMptTBmUmL1E4Ho
	IdwUVLwDfW7n397gWeWMGoAwG9nR4bAPUSVXLrdSUwJQwJm2E/PL2Km3TM+87Yp8
	CIAgjRpCHU5NPq3bZ8Dan9oncR1eaTloACjUtdYg9qyQHfbdgJZJwFrtRhk91Xu3
	YTRJaVGR89mXfilnmeKnGrwrlDEh0JlVX7sg44BZFOPQByyC8e/4cU61A==
X-ME-Sender: <xms:0F0tZbYsy77Ic2gZ--d5TXlze-fd8tohkTAW1Z7nBquMga4LkQXFgQ>
    <xme:0F0tZaapaxrWfVx_nIHjZ-68UqCFw1-r5PojmVWeS_yJdI7uZi_S-d18suhcxv_6U
    JmGrH-LGVxcvxM>
X-ME-Received: <xmr:0F0tZd-3qkrwQ3DHdDUr77isjQqMIGXppHxv5KTkl_nYPo_nsJZudGRNH7chi-L_WgdFC6MkRoXjaHHuzbd9F_zefD3sizs2nbAOOsh4f8TNrnp8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdelvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepffgvmhhiucfo
    rghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhnghhslh
    grsgdrtghomheqnecuggftrfgrthhtvghrnheptdettdeuiedvfeeiudfgjedtuedtleef
    vdeukeeltddugeejvdeiudekfefhueetnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgr
    sgdrtghomh
X-ME-Proxy: <xmx:0F0tZRoQWlRpsl0tSr5P-HRF9bGLh4cCMibBmX-U3K_w6BNU75egrg>
    <xmx:0F0tZWr7C3WzOLMpbQ06GLdgHgykxuXStOzIagdWV5HR-8CEtcxrnA>
    <xmx:0F0tZXTkmcyBYV0q-Lib6hqEpIiCv4Pux-bMv-5ODqWA_T4sAg5FUg>
    <xmx:0F0tZUErAVX6VkdE4Lq-zKXlVKwDAKO3QcDU3o-VnwNpa_M_zAzjrw>
Feedback-ID: iac594737:Fastmail
Date: Mon, 16 Oct 2023 11:59:08 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>,
	oss-security@lists.openwall.com
Message-ID: <ZS1dzvDl3tfczwoK@itl-email>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
 <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh>
 <ZS1UPsZo1VyHDAkV@itl-email>
 <40dc99e3-c447-471c-858b-98330127a161@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GiFWjePMCTH2ChmF"
Content-Disposition: inline
In-Reply-To: <40dc99e3-c447-471c-858b-98330127a161@oracle.com>
Subject: Re: [oss-security] linux-distros membership application of openEuler

--GiFWjePMCTH2ChmF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 11:59:08 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>,
	oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 08:53:57AM -0700, Alan Coopersmith wrote:
> On 10/16/23 08:18, Demi Marie Obenour wrote:
> > The result of this is simply that those who do not have access to
> > lawyers on staff will not participate, which will reduce the value of
> > the list substantially.  I suspect that most people who report
> > vulnerabilities via distros@ fall into this category.  I know I do.
>=20
> Perhaps linux-distros is different, but on the wider distros list,
> almost all the mail is from project maintainers providing fixes -
> the researchers generally contact the individual projects directly,
> as those projects aren't on the distros list and can't see or respond
> to reports from researchers sent there.

True, but I don=E2=80=99t know if most project maintainers belong to
organizations with legal teams that they can ask these kinds of
questions to.  For those without such access, =E2=80=9Cyou need to ask your
lawyer before posting=E2=80=9D is equivalent to =E2=80=9Cdon=E2=80=99t post=
=E2=80=9D.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--GiFWjePMCTH2ChmF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUtXc4ACgkQsoi1X/+c
IsG8Dw//fHUOawGIyJlS0Dtw4irHp/96HbScoM1NkD1Y8rK2z1UGryRpCq9wN9di
IWiLqapehylAr7bOvklIcjaaxZhFce+BUOkPsQgWREmu8GoLAcv9Z79LDVGuUTBX
AzVIk72kkKUy+Nj9rg2moq58EBEhdwYMcJ3thrnvRS6hqUk2TXqTc+ope8ft93cB
QRecto8EW7+eZd6ENregcCQuZWk8L7c7XzX6FtgZ9dN8Gk6oQeVlrXHbJodBmWHr
Byxl+D/+khi6EUw6Lr6fn0lP9HIHLpHBPZf+73ydKCP6QGUEg0JeTRvFnqYTCCzw
hurwiY6G0IdswyfX6Tx0nh1LhrLf/YF1hpkVb0Nety1uxHfNc8qRQXU0XlqS1hkS
XUqQsTPtwyZz2X/i+4jn4u8YrWnYD8kFzZBroI5NcOc1tm8FlhV1zZt3rRtejFby
9V8cr88W8d/J7/IgN0N0mq12je7sbHG01QkZIgWwTDTzG2XbS6QRliV1bE6LzpsE
6kganAE6QL7auDkNl+d6kKgqJ3Nr7vUWcUenWDpsOcLLB10SGvrgzbQfJHVrkjDa
bs2GsF0xSa6om0BDeb24rRjfMNuKAqnUnqysk4e10JyrKUzZOrgCiE+qIEd+eDcN
/pXH/M3q4McK73yIiCEZkV6HiWR2nazsjVs9/pl8Cf7kXal8mr4=
=MtG2
-----END PGP SIGNATURE-----

--GiFWjePMCTH2ChmF--
