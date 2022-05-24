Received: (qmail 5255 invoked by uid 550); 24 May 2022 20:18:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5219 invoked from network); 24 May 2022 20:18:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp-2021-07-09;
 bh=E/EWr/tDSA5mDQYU6Mq8QYPw7Z0EQlvRLKZ6o6lGYaU=;
 b=eeTOPf5fP3zrjX38n8XARaLiRNin1ZYH7Q82ASBCycH9TH/10z8Fkbz0d4ZUh4Lueiay
 BUWpAOgWchzErxFkbIhQx3+b3p3j7yZje+SHgrQtFpW2qd+QiKN1d8ahODQ79QV1GCBG
 Dc2zoUHnksJIctHh734aNXGzP+ZXs1UrINnsDWn/SRCyuor3bvsGsVy6BXEkiMHh9y2v
 CLsHAeqykN3glMJB+HVGy2WT1u6OqjQbS4IdTd8M/uz1pCEVI3XN1OH7Yv6Wln2FKEqm
 B7Hto4+hbikLtlnJnSQc7w00HSlSewJbjSmWb9xl6SA0odz78Oiql5XIz6s1NzbRxoad BA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mToJqSWd3Az65QxWROj8A9VZO76M9A+sfsgeIEloca5UnyVcDlgtDv6z0wy1U5j9uqxr338NFCP5PBM1ztsyggF1esIvM3ZqFAz8/XlSVLin/nr/K1ehlo0baarjqnULQ6IOq/3OivopoojsPUp7PKzUizdSFZxdEM2+M+kbKmimVMz6N8rHX4dPd/iWAQY7c/iux1e374FEtuLY6/zfzvz7d5T7rTrkGxwSlwQ5p7flD7hRcSQzkHgbfYsm3eFcQyfHOW/BG0J/CMnDDZjFRx0vutWqBiMuGVHKSvZhZ5tf5aEKJbd3LmZ2tn6ijX8uA3XcR+XzxELYfbGw8DU7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E/EWr/tDSA5mDQYU6Mq8QYPw7Z0EQlvRLKZ6o6lGYaU=;
 b=V8dx/GWrenG+8X/zrDObfRGX1yObPOcidKo7DggwaqrdNWYAcZYaoYnDo+OXBIDnO9hCK//eS2cZodLkeG7Ga0tpQ01SqcAVH0kMOKiGnG0IZlFPOvGYAOzRnbUtp84gZ4Fxr/xR/VB2YmKqf+5K0PnGePSsRiVZOsm48FrCkmBIAR2zvnjIG/B2a/KLhLH8RSZHSq8QhBMaNLkHXsmf5GToNv1S52E/x+YezPVyfmYrRexjw9hPTg1q85A3PsNGRC0uHUGwn3BdJ4hYVbirE2x5xZvw6Sii4Mi7k4gCpKAwV1LanCehtm37ZPGVzWe49+vqzgVR+jnFbo4xx7JabQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E/EWr/tDSA5mDQYU6Mq8QYPw7Z0EQlvRLKZ6o6lGYaU=;
 b=l25Rl2bFaoiO0y2F0BO8kC2NB1I4h2AN+pzw5zN5mhzHTiHyA84iB8+LzeRXIJ5nFQIkpAISSv8EHk3ANG5tJ4FyswogJSqh81rAWk2TM8yUS4Gy232wPhBTyuALDgOqyg1XQDsPvfnOEM/Lr0LEzG4x/JN++jcLEyJ11Gv4y74=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2022-21499: trivial lockdown break
Thread-Index: AQHYb5EyBedM4eUg/E2ThISs0hGn6q0ud5mA
Date: Tue, 24 May 2022 20:18:02 +0000
Message-ID: <D57406DE-02FB-43BD-BE4D-27A8ECA2C517@oracle.com>
References: <0A7B7D99-48F7-44B2-9E0A-C18C9EB9E2FA@oracle.com>
In-Reply-To: <0A7B7D99-48F7-44B2-9E0A-C18C9EB9E2FA@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e010451-5aa8-4c62-3074-08da3dc28132
x-ms-traffictypediagnostic: SN4PR10MB5574:EE_
x-microsoft-antispam-prvs: 
 <SN4PR10MB5574ACE27B68CBCC187E3F73E4D79@SN4PR10MB5574.namprd10.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 njAE04zchxEeJomDHymdQuCr4KQ0vKjeo61JH+zJIXfOX+4JrU6QIOSjnnfDG9ryJAWiTnjqJvO8JqknS4/QNNemPn0adtDVvCTqgXysgRPPe1tDUXT8YdhOZy49vMIFcmccnJW2bf7HshJ25kXX9D7D0bHOKKWgUth29zcF/m0BJLyhbyIBFokqhlYOf0gMHK+7vJoM58ZbVE56H7EpXgYvUh+0nzL5b5T73uTKHkbNNC8kkNCVCH2Kq+1VuManbY/fNcAuAI1oMsjjlEYwl8EU1cWpjqrqnW71A8b9j9iT0WE2rwNPT4Y1hHZGQbSqa4FIwobMVrZRxDE9PBJez4GFFWOasF7WWPLjp4X5UeiF4LZ7DLtbZQxm2oahbK1YEH4J9i29tjdSugEV57gxqhA566Qjp0CDUNzHrq0ob3r3uCNl/pOiJXLRjNREm/P87ayGooJkbSv2xxKZP/cN0PWiftSmDPUqa+PRR15r7fBEKkfW7ofw6AVf2EdcIyH5Kb8OtdDDyyBw20U0MlxN5uTrWtfEXyZPrPQafdMyDnhrrOJXCAQzhkSLvwALLltDAWBekM7p5huSNuO4EyWLg6JKNH0NJs/fKtAYth39/0LqcslHRK8lmVrpnER56w1uVQaEVC6Dr+YdvtSAahW1F53NUn6Dw3e3+yij9/rg+PoVNulYz8zluevXVYS59hxrdJnvJNWKK7m1YDUlUggA+/pEOkafwl75U9idzQdD7o2hwhP1f7qu3IENzkEJ9rpUk7LyA5av3jCksRdj5GZww7OrRzBLo3NkZeowOap/cF5Mj/CqmA/q5OtzABgROPDFKoW3Dr1umMjC9pdQeMu/mA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB5662.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2616005)(66476007)(66946007)(66446008)(66556008)(76116006)(64756008)(86362001)(91956017)(71200400001)(966005)(6506007)(6486002)(38070700005)(53546011)(8676002)(122000001)(6916009)(316002)(6512007)(508600001)(99936003)(8936002)(33656002)(5660300002)(44832011)(186003)(15650500001)(36756003)(38100700002)(83380400001)(2906002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?6HP7cy0xIj6uHi8xSbFd8bnZEhBdpJbruinGJ+J8/NZof0vcy8uD3l2UCYvv?=
 =?us-ascii?Q?6W/V66hWaI+mzdoSLaAkJMrrCZoODXiAmbsvSXDLR6KDejJkJg1I52uRqu9L?=
 =?us-ascii?Q?wH8oHGpc/KiV/Ywji6fdJgnchZxjXLkRtqMrMncn+7wDwV212nLmCaipdoIH?=
 =?us-ascii?Q?oVagLOdiUlESkmb9JYTf9v5Dek/dcVgKRMiG0p/u1oAfAQ1NLQ+KFjduCPHS?=
 =?us-ascii?Q?eRn69cqbgBlwPf9JwyBdxYuwaESWEaZRzNalx5lB3lwLt4BJn0bhtONOOX22?=
 =?us-ascii?Q?oWaw+xU5C47O/q7x/RGHlLN3hb3iw23xDr3AK0vBvKjiejU9PZdOV8S9lwmG?=
 =?us-ascii?Q?lJ8oOcjo05JZHErA/KeMAAQJo6oQ+gMpN8o0kN/4aPrZhsZysPOOtAbSRKlt?=
 =?us-ascii?Q?bIRQ7xk1pN7OAR1+5N8doGXmuyZyXyZF/WEZjpIb6aoyqRvQwD8pIDfG9u9q?=
 =?us-ascii?Q?KLYsNHdv9xju6KcUldGyCdYWg48iOKcFDzZcEbT6fOyjo11XcrkagWxjDb0t?=
 =?us-ascii?Q?7/ZGj3bBZEKIJQj8ALTQxAG4G13zYJJ7PhGvB/kg2+BnrvV3b3DfY/v4Mbwn?=
 =?us-ascii?Q?Cj3NFHijnC3WbmSf7qNBhxb+PHsjK6t/k5qmThiT3rV3DTHZrWjfstI+672V?=
 =?us-ascii?Q?seimWhKCfwaZwNR4kkgO9WmgCPthgM/UStIAS1n2zx6pTw7sE2iyGhrHy3uJ?=
 =?us-ascii?Q?slaOABnjvcmEEbyxWupr68OnxvzqgFcp/mu/wA3GN3f1Reaws3DaYGMPLE+e?=
 =?us-ascii?Q?w5YpHG/DgyfsU6K3Fizf50XTMam67VlMo3IICnrpEJnCe7id4zQKQxe9mDK8?=
 =?us-ascii?Q?Z3jhykEkCaQx09w0CpK/JLCO22oCE/7QlTN/xfURlHBfGpCeRGm0H4GEO5Qk?=
 =?us-ascii?Q?hJl3+15jOXHPHrdgk/igLUMkPx9cddXdYVPFI+ifvAt9q+YrJxyzAZWpajQE?=
 =?us-ascii?Q?nYAa/9Zz3nLVKb9u8Nvt3Vp5SnEv6wpVMYEr5bMRTO2yLUG2VP7OuXNJlWBA?=
 =?us-ascii?Q?ZF79cxSas7DMHzIvYaVGZTRokKHm0NWRU5fRsDTiHNKyk5RCC/1V0JHJodSy?=
 =?us-ascii?Q?Vbz+TQWZqerBdAffZHAoPamySs8tkXRuKyZ1A0fmWv9xASWeqpxdi1FaTVXT?=
 =?us-ascii?Q?ILNfuUhjYwmgOHoo2ZsiZW+P7+deIinrkrc1HwrcumI62+gJ7jhKcVlmi+44?=
 =?us-ascii?Q?wk5PiumeVcKPMrm0bh2uQ/VoH0dXmdny8L6GrmTlOXRC/4N3yOwa6CZJ/umX?=
 =?us-ascii?Q?QExE6G0vW535tBHuBKGMWJXs0+yYww5urI4vrKBrSf3APl3Tz8YwwzW4B4sW?=
 =?us-ascii?Q?WtEPLsP6vNCEKqD3Nct/v7SVsufI84zA20Jgc1OAHMU3cssP4oiLeAy60f+p?=
 =?us-ascii?Q?3e11+p+BzucSwM32X3Sb4A+e+pXy563MRVYk+v9cJ63lE+hqVzmyIg4ZKv9f?=
 =?us-ascii?Q?7ekcpzg2l9dUJ+aImVxAuHg+KzRvBy+ClM2V2n5MKQBIWMeju5zCvX9wv791?=
 =?us-ascii?Q?rSwtemce9uQnsT4+NtovzhLuQIgmNKnbJGXzSLzpp9VWY4Ur5UOGjawW1LpJ?=
 =?us-ascii?Q?GUnqXeTQo841gkrJV66xzE+K+wTlwpIqgoOX8E2sqZrFMp7blFWQm6uOgOl/?=
 =?us-ascii?Q?syti4qLQU39Z2ZdW839jPxyLMVtFD7pZLm5qbD4inhivG9g5xpW4ZlxpVxDY?=
 =?us-ascii?Q?D2CuCGP+ZyGShu2vPbhxAT28UM6G///f8znepUHCFTUhiOT1Xl8jm9KhNA3C?=
 =?us-ascii?Q?PsPgg8lVbYFfou2QrDjLQPobyOgQypqdW8FRmgaQEzvsV7aTzcFJ?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F899FD6C-34E4-4B1C-8C4C-98E35E38188A";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB5662.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e010451-5aa8-4c62-3074-08da3dc28132
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 20:18:02.6065
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gZg/QRJCGeVWcxoK3YXAvTOh8CZO0Ubv8sQflD7S1uNvkTTjsTlTz9y35tyqmPHcv3yw/GB1Ll8zHWNim79afw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5574
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-24_08:2022-05-23,2022-05-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 malwarescore=0
 mlxlogscore=833 bulkscore=0 suspectscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2205240100
X-Proofpoint-ORIG-GUID: pIAH8cmOJ3wyzVGM3uQ9hA9_TDiMJ8uO
X-Proofpoint-GUID: pIAH8cmOJ3wyzVGM3uQ9hA9_TDiMJ8uO
Subject: Re: [oss-security] CVE-2022-21499: trivial lockdown break

--Apple-Mail=_F899FD6C-34E4-4B1C-8C4C-98E35E38188A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 24 May 2022, at 18:10, John Haxby <john.haxby@oracle.com> wrote:
>=20
> Hello All,
>=20
> CVE-2022-21499: trivial lockdown break
>=20
> We recently discovered that it is trivial to break lockdown (and securebo=
ot) using the kernel debugger: you can use the debugger to write zero into =
a location of your choice ...
>=20
> I originally posted this with a preliminary patch on linux-distros.   Sin=
ce then we have developed a better patch that takes into account the differ=
ences between integrity and confidentiality modes.
>=20
> The updated patch will be available in the Linux mainline kernel at almos=
t the same time as I'm sending this email.  I'll reply with the commit ID a=
s soon as I have it.   If anyone wants the simpler patch that I posted to l=
inux-bistros, please let me know, but I would encourage you to take the ful=
l patch.
>=20
> jch


The commit that fixes this is eadb2f47a3ce ("lockdown: also lock down previ=
ous kgdb use") [1]

jch


[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3Deadb2f47a3ced5c64b23b90fd2a3463f63726066


--Apple-Mail=_F899FD6C-34E4-4B1C-8C4C-98E35E38188A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHQEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYo09eQAKCRBFC7t+lC+j
yOaYAQCURnz9PEkJGyQzhFHXUy7V9i4V5HUH1pqji05jwTRGQgD4pjEmVQCqWN41
wL21D+dmW2vpKc/zasiu9Pa1ktUYdw==
=pMH8
-----END PGP SIGNATURE-----

--Apple-Mail=_F899FD6C-34E4-4B1C-8C4C-98E35E38188A--
