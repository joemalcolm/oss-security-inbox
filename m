X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1739" "Wednesday" "9" "August" "2017" "09:07:04" "-0400" "Jesse Hertz" "jesse_hertz@apple.com" "<A94014E2-68EB-47B6-88B1-088FAD967837@apple.com>" "46" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080913:07:04" "[oss-security] Cve issue discussion" (number mark "U       jesse_hertz@ Aug  9   46/1739  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>" "<A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>" "<CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>" "<SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26502 invoked by uid 550); 9 Aug 2017 13:11:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21830 invoked from network); 9 Aug 2017 13:07:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s; c=relaxed/simple;
	q=dns/txt; i=@apple.com; t=1502284026;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vJrtaVEVx0X2PzLBaciSGqggjzxFwLflXETwxN0I/u4=;
	b=ulJB5piMZUtpjHHifJutEhAovMD0wUm59WxD0VnnHkTsTCOIAXDu/EHV0jVXmEgm
	CmU8EdOf2YySuLihxi/8sf76ZVDPePzEOA4qRUdQqxaUTdxQtyF8Y5l84d/WeAGi
	HbrpzdIhSq8Yn/iZdx+2M3JVAkh1+3Sa+IJUT/3IxEW3RwdWoRCui5nT0cwIAZCQ
	NGeNYc25UQR6pE3VLUXx5eJ72OPyOdxWvPEx8K6kLNsis2TKptN4DHIo0DDLRQ5H
	yeA7YkpGuZIy62YsZr8McJQCi33Cvt57bu12RadOOhxwm+UYk9VD30+PFnmqVzob
	a73criMTONoJ052d3pVHAw==;
X-AuditID: 11ab0215-f75ff70000001b69-1d-598b08faef23
MIME-version: 1.0
Sender: jesse_hertz@apple.com
From: Jesse Hertz <jesse_hertz@apple.com>
Content-type: multipart/signed;
 boundary="Apple-Mail=_3C3BFDEB-0A84-44AB-B283-D902F525FB9B";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Wed, 09 Aug 2017 09:07:04 -0400
References:
 <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda>
 <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de>
 <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
 <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>
 <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
 <A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>
 <CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>
 <SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-reply-to:
 <CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>
Message-id: <A94014E2-68EB-47B6-88B1-088FAD967837@apple.com>
X-Mailer: Apple Mail (2.3273)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsUiuLohR/cXR3ekwdk2TYtl/90cGD1Wdj5m
	C2CM4rJJSc3JLEst0rdL4Mq4v2wVU8FP3orNG3pYGxgP8HQxcnJICJhIXF//jrGLkYtDSGA9
	k8Sd4++ZYRL9x5dAJQ4zSqzYdYoFJMErICjxY/I9FojELCaJGcv6WUESwgKyEq93PAUrYhPQ
	lJi68h07SBGzwAxGif2djSwQRQYSs1fuBrNZBFQlHt17zAZiCwnMYZN4+cQPxBYRUJa4sfsi
	E4jNKRAs0Tj7OCPEZhuJf3t6GCHOk5W4NfsS1Kkb2CQW/GaZwCg4C8mBs5DtBkkwC2hLLFv4
	mnkWIweQrSMxeSEjRFheYvvbOcwQtqXE4pk3oMptJW71LWCCsA0k5jRPZlrAyLGKUTg3MTNH
	NzPPyFAvsaAgJ1UvOT93EyM4JphEdzDOf2V4iFGAg1GJh9fiU1ekEGtiWXFl7iFGaQ4WJXHe
	9VlAIYH0xJLU7NTUgtSi+KLSnNTiQ4xMHJxSDYwSWisiD3NP3s/3/KnbQc53TJVa2vNFT/+N
	U7uxZP0iRbFZofOjV4Ulie2dEbOZ/8SRfxXP1B9yCc7xbHrBa7rJ5EtqWmLIqoIM5j2rjley
	m9ZyLHh84Eb3Z+GvS+eyav888GF59dKNF5a8sZrExpCoZJRz6djPEiHl/emS/JL7FvSsLW+Y
	JeOqxFKckWioxVxUnAgACT+6r2oCAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsUiuLphqu4vju5Ig5tPVSyW/XdzYPRY2fmY
	LYAxissmJTUnsyy1SN8ugSvj/rJVTAU/eSs2b+hhbWA8wNPFyMkhIWAi0X98CWMXIxeHkMBh
	RokVu06xgCR4BQQlfky+xwKRmMUkMWNZPytIQlhAVuL1jqdgRWwCmhJTV75jByliFpjBKLG/
	s5EFoshAYvbK3WA2i4CqxKN7j9lAbCGBOWwSL5/4gdgiAsoSN3ZfZAKxOQWCJRpnH2eE2Gwj
	8W9PDyPEebISt2ZfYp7AyDcLyVGzkO0DSTALaEssW/iaeRYjB5CtIzF5ISNEWF5i+9s5zBC2
	pcTimTegym0lbvUtYIKwDSTmNE9mWsDIsYpRsCg1J7HSyFwvsaAgJ1UvOT93EyMkiHN2MN65
	aXaIUYCDUYmH98aezkgh1sSy4srcQ4wqQDMebVh9gVGKJS8/L1VJhJcfGBtCvCmJlVWpRfnx
	RaU5qcWHGKU5WJTEeR9t7YgUEkhPLEnNTk0tSC2CyTJxcEo1MFYE6L9ymbvo75Mj0RoR1//8
	sjqUIxUakqt+MzpkWtG97C1OP+KdNs2RcF4WdWpWx8oPW3xU055pabStnmQ+Y6KyjIzO5wOf
	Lj5+NNXo54aV+V0FexXeFcxbd/xskCHna0G5uLP5LdHrT/8of8OzzUb9BNs3oTSFheFFE79+
	TdMze1p5+VpCPKsSS3FGoqEWc1FxIgDxB1ZGagIAAA==
Subject: Re: [oss-security] Cve issue discussion

--Apple-Mail=_3C3BFDEB-0A84-44AB-B283-D902F525FB9B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

If a non-ASAN build under valgrind caused it to consume a lot of memory, th=
en its a legitimate issue, report it to libpng.
> On Aug 9, 2017, at 8:18 AM, Glenn Randers-Pehrson <glennrp@gmail.com> wro=
te:
>=20
> On Wed, Aug 9, 2017 at 3:49 AM, ne xo <nexo123@outlook.kr> wrote:
>> Most bugs in ASan do not cause crash in non-ASan environments.
>>=20
>> You should check with the valgrind tool.
>=20
> That's what I do.
>=20
> Valgrind exhibited the large memory request but did it quickly.


--Apple-Mail=_3C3BFDEB-0A84-44AB-B283-D902F525FB9B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZiwj4AAoJEOrWiA5UGP7oLOgP/1HbNNCZgWMd6mrcegjy2Xju
+b7T/N+n4BDFqKr2wjF68oJ/m4uA4/1l+g5ZrBSX+LQVpnD/E5EoFlUIh1oP8fMM
motKG/5Kdild6dUthDccBtADzmo09ez52xskDMBWoVvNi+uP3SUDVYkUJzJeZSyQ
jKv++tp1k7HJAhjYuMrK25JyVxMcRcLMubclSu9r2jPNfSqQoAqQk9gv+KvzUzFw
HBijrIWWdk8rtK7/k05Oh4TFzwArD5eF/xx7549fwCHpmLa0GZd+WFf6bb16+yrW
htfGiO7qzOKWltSUM5yOzeo0gQCpbOeWjTIVv2YB7gSRRSO0pfFGmQbDRkduWAtO
8bGVMPDPFGApu7xZsP27a+VAsDWDM1w0985LLtANmtglbqrA/k6TL/oaUBBpZMLT
4fcTWxN8F/Rt1/6R2nqJ7chHc5KZ43NLLoo/FeSvc6TBKEvYkw/Lw4lSHDoIT+88
L2dA8j4z8iZGSi/DYYZGuGsgB8RHFL/5TguYba272+vpxUjjMo5i2c0n7wFSr/NM
00irthICf22jkHz5T/zJni4hd8ewuYWH18BLUQZ5EqYl/RSHeGkOZq/aRZTM8HN9
wenZv996VgdUaWsF48aSWt1onPiFXVTQrB127cuI2EWTDJncx+RVUAvdQeU7h7pu
C/6N0ppx54t3K17UTbzo
=DQ7s
-----END PGP SIGNATURE-----

--Apple-Mail=_3C3BFDEB-0A84-44AB-B283-D902F525FB9B--
