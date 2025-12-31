Received: (qmail 26570 invoked by uid 550); 31 Dec 2025 19:52:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19970 invoked from network); 31 Dec 2025 09:29:43 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PtlsFGHfVApf5pLbpijcXMyIidev1m6rn230pXxR39+E1ZvG6xLo72kkxuUv7n3q2ZjihFKc5J4cvSb4HfK+f6toRn87rTj3yT/Ep3cV/X5sRFcxOPg6EH2gcNbxWSPYmCKT9lXrJvWNjiAPXmaRlVygYigIlS+UQLhZqrhDOGyOblSu1tlcWmPKS+15A6I7UA1uJzBBcgcoH9xony5oijWBlpq6PHtn7QxYnVYwL7tcpRphNfiq3CxjGbzxWhbrKjIkFfGTucVNz9RojIEMC/nyulQD/DKTqW0gHT2YeK1CIVNoy9g5GO1VDV4klwSCH0DXGQE7EuOLVDarJhSzAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C/peGKi2saRhsuGr9wMTxgyO6b5Tq583//1Gek8NzTY=;
 b=O3tjzHRd/yfFC14t+ob5W+osc/xlPIQSt/gQxgOaiHkAKVljKmkRX5fEHMmDIK/VFo1lHhd3I48cN5246V1VPAOw0fqb80ZRbRid4XedmqEeMgM7h5iptaf72NGtRZoda49OmVMGvuZJaGxpReUXRhFJcQ2lofVP0NqWtz24ftIfoLgyXM5GhTHj+r4hAfSbDynbPYbTFH204wMi+IRDErVEJS8Kzn6g3QGFggBcdSBQkd7ImwtxUc0OVDOLO9huIvihY0YyBOBtp2AeuUyjNMhB81YEv/vdgF4sITEfRfpEMnZdB3/5KGWHFJ1nUHXUQ3UNqJGQptOuFx4IuV5Efw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C/peGKi2saRhsuGr9wMTxgyO6b5Tq583//1Gek8NzTY=;
 b=bJmQ66H1cE3QvkN1KNbixJ9xKd3rshViQHMPcJNdKTy4bkVDiuoxDpPretbZYPl1qLj4aIs86fRPZKR5X3Ar62yEnVdt7ZXgY7ZRedSqx5W8/rTlcWlW1tmMXDXoV3ZU58ZnUYU2cn04aWAJxv4M3QFUa78ge2zpHPFUJuljc806OmOaMO9+Lft0VfpkXTtdJ1FDuMcqF9VqPnl496ZWyh9iBRsTwLd89HfMjFbBngk6Fer+uhJ1vXXrnFnUfY2NbJCwWUa41qDEgPfnPEgs8u5P6Q3mmNb+QU6Pexw42NNheKwh1UJteprAxsoUZwbPHDC6iQCP2l3b3XIpkrLwNw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Many vulnerabilities in GnuPG
Thread-Index:
 AQHcd6ITPUNTv428j0KUV5yevVmCvLU2qG2AgAK0ajGAAIpzAIAAKCjygADK1ZWAAKZN/Q==
Date: Wed, 31 Dec 2025 09:29:29 +0000
Message-ID:
 <SYCPR01MB366120477B22779F76479CFBEEBDA@SYCPR01MB3661.ausprd01.prod.outlook.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
	<SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
	<d46c3c34-0fa8-4b79-a624-b7ccc9662ce8@gmail.com>
	<SYCPR01MB3661EE9E2D62A122A271AE98EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <87h5t7aa7r.fsf@noux.seestieto.com>
In-Reply-To: <87h5t7aa7r.fsf@noux.seestieto.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYCPR01MB3661:EE_|SY7PR01MB10690:EE_
x-ms-office365-filtering-correlation-id: 5abf4f67-4956-432d-0368-08de484f1947
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|786006|10070799003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?1cOcxJ7/4MhMAX0ffMC4N5y3gX9Sr6koY0IGbyZws65fnK1lLhmvrJ/o7X?=
 =?iso-8859-1?Q?+2INs6keIDiXRTegIFVUgK1hgHtwvCUouGEOYsAZM2P2g0JK4cs+CMEUv7?=
 =?iso-8859-1?Q?iBok4Zekxph2keQBcr1LKqthA4cO8nnh8nrYI6ruh3qq9KbUAFWaaakbWV?=
 =?iso-8859-1?Q?Ov1/lmqFfZCY2phcrnSR5iyKa5qF1n1LHD+nctJGGPAgcTF+O+RH5Tau0D?=
 =?iso-8859-1?Q?dECG50RogcA2TNpjm32PBGwNM56w4u2+gQK9LEGf7N2KoJMTfax1d/scpL?=
 =?iso-8859-1?Q?rd1fBOufm+JxGQEc23zuplrfc8rMJucm2pqkUhmibM1RVuWh81T5vbNDsL?=
 =?iso-8859-1?Q?5yJFebvuqugd6byUJEqa22ct1qorS+ApnHuH96a8Gx5BnwHDxYRc8sxMDc?=
 =?iso-8859-1?Q?qrKCRKXobQaTMS6VUdX1Qds9WWqicGoIYYjPiQQdmstSBodqOfaG+gFxZ7?=
 =?iso-8859-1?Q?Ms82wzxkvko3CDdQFly0ydYXrckVPeH2oU+hckx/BZ+j3rWvm7Ktq8TFVd?=
 =?iso-8859-1?Q?wc3wLOqase0t+jFk9hCAZHkbku9FBz5bg/e52GQ1alF3ZmefO0r8Z+AOLT?=
 =?iso-8859-1?Q?fBUT2dBj6/UaHduKA0kIRufKoNLdMPe0UoDUyqJie6fpSee3G1Q8g8ovEd?=
 =?iso-8859-1?Q?jZVTnohWVRbHOYabda+cpRwmzx0QUCA+wg7f0rbuzIlXoDJIPM34ep5XJo?=
 =?iso-8859-1?Q?OYFnNojwszhMgsNCqP13F+PHVDK02wTEcRtPObQG48z+5YAZ26xPAU8xFq?=
 =?iso-8859-1?Q?gpIIFJmONkfnp7CMqJ9eJ3HKXOtKPkoxUyDUnWTy7AkriLWxk0//1zZQ4e?=
 =?iso-8859-1?Q?/l3if4VryfMWXcDsgTJK+nWviLzuSVWyYnvi+l032d28+rCMD3MItQi1ks?=
 =?iso-8859-1?Q?CW1qy8dmY7PGVr8cEQCoTOruwT8Q6hyX/7dZx4y02n95redsDsQMOA2l28?=
 =?iso-8859-1?Q?M0NymwI/gR4Hw+yCAOIiM7/iDFeLwrE8hRYBYNuRFj4Ykt7qurdF+61G2Y?=
 =?iso-8859-1?Q?5JWAYU7FbGBm/B4rGU1Bc224jRzr7khTxScZ8MMgaRos4iqTWq46yksNoB?=
 =?iso-8859-1?Q?CwnI4paD57itUnxmNjrtRdMw0LClkQQH/Vwcona3Jh8/d3J34uSMia/ini?=
 =?iso-8859-1?Q?HVcApTSLS40iHvHsFFFTHdKwlctvfXCwbxe7O5DYwcqnd2SYlxx8vyzhPM?=
 =?iso-8859-1?Q?VLyktCF9n0B3+RAPM7xeoJy6bm8+1eaQAxSDai+aLqeprWMBnif/4MTVeY?=
 =?iso-8859-1?Q?mnWuwsS3Dge+ahu4CidWOvqEk2AJwMHOik7mT2n9ptggMKBZZPuBHok5jq?=
 =?iso-8859-1?Q?wK7/E14MK2KHKsIihc0GaLEtn22dqqz+Vw/gixVkmkUaiNag4QwNRv83ek?=
 =?iso-8859-1?Q?5CZp9haXPaONdrHJwPPKRpwxgnTnGsouL4IuC8QRgQOa6FoAOe29gu2OUg?=
 =?iso-8859-1?Q?Y6NgiJBy4ekbWkm+NGnpVt2X8tVO3r8yfFPMJPmR+fjiTSE0Bod7rbnYJo?=
 =?iso-8859-1?Q?7jot8UMb2Yo816VUP3tAFqXn8GkxF7El14w/WQX4QnnB7dHnrTOqTfV2g4?=
 =?iso-8859-1?Q?gAvIK+ebkbkXRkODWtwu1V5GTwMH?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYCPR01MB3661.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(786006)(10070799003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?cUPq/G4PGrK0xpCIk1b+VZi3fGy0HiOFXeAdXJ6V4COb7l2J9BHkS9G/xa?=
 =?iso-8859-1?Q?coo6oyMgJeFBdlAJB/ut1ijFKTOHYOgqng8xN3MTAFseNogg63e7BNV5GW?=
 =?iso-8859-1?Q?haswGQVddtgB0ysWEGYvrNEGr8/TKqHRtmUpMAMxVl+V+2KHJFTcCrjQLm?=
 =?iso-8859-1?Q?t2mrNE6/6wIJ1kkM9agDn/W4Va9qbvMPrDTwiaK6OhHoZ+GgaV2SilDWxZ?=
 =?iso-8859-1?Q?nErneUIGlc+CWJ1go7whTtRPruH/vbmq5VsEnXDs4av5ZW/J34vB4xd4t0?=
 =?iso-8859-1?Q?ovhOLM8aitn3z3ZEjQsjL1wYiiUBK9JXuNYge7cZR43/R1D5bPB3oXVwJz?=
 =?iso-8859-1?Q?QwpiuOtZUTUGYeD+xjJ4s3iCjJ/ZZFsSM+e1xbb0oUUw8RK9FTXImU+aIm?=
 =?iso-8859-1?Q?cs/fyckOuhi7ZJV7xUI5ECM7xZjvSsyFGG8VDIw8jdqrks9gSTXSOgDFM2?=
 =?iso-8859-1?Q?5zGmEoC6xkaR3Y85xsRXrMJbVBUcK4lcyx1+pedNBMU8Nh0vVb1IcX/HH6?=
 =?iso-8859-1?Q?fqlCNDsdWhZhudYseDjiG9v4QPAviFU7MExtY+Bq9Cqv4ZeYVcA3iCx6aB?=
 =?iso-8859-1?Q?uNT1grxdjpF+hab5rFFGBUrCIT5pizFKZjgWuEO2o3dIorTrjlTtWOA8lM?=
 =?iso-8859-1?Q?K1PEaChbgeio6RDgkV0iIfiU4lCXxN83Jmy7M7cZcCVa1bsFLD3ivlXujW?=
 =?iso-8859-1?Q?bDF7130aPMAFvmu1PW3slKej5bpto7L2Qsvylpn3PpoyDSld8qpIn4FeWQ?=
 =?iso-8859-1?Q?9fvaGCYPK7QTnDVCjwVUe1OtvEbfrYKfXLRmStXjuHu1Ab16ZqDeAoayHk?=
 =?iso-8859-1?Q?e4lp9DxhtOmHTKJFKDE3bu2B/Bsmc+K/9BrsfoUHou4VNohHbVzIkJEwBF?=
 =?iso-8859-1?Q?tV/f1Id2nM0EhWJeVZI1uXHtIP5/PdEAQJ3Srpqs6o8qJ5Do9lND8Viy5C?=
 =?iso-8859-1?Q?+1PGcpFChXz5CbpCdSi1OO1RJ7lkzUqbXThnMPTZzr+YQHtPZtoLpGA6eD?=
 =?iso-8859-1?Q?s6ypNfvFDtwWRfzAfw/euipq7BlbFS9KR1bI5ftPo6oPEhMt8yXk1nesEX?=
 =?iso-8859-1?Q?yNy3hZm6ZiuR3iWkPKL1rlOR0Hi0boR+rh+mD+K17GO6yYreTqPrCccSop?=
 =?iso-8859-1?Q?wAOG/2b5evEEAzvuSO30hjCOyD/pXHct76BVvw3/J8GXQNMS4BVqV1fPYM?=
 =?iso-8859-1?Q?OGR8Gy0lhl/mG21MR2MTgDD6a3NAt6E3NNh56+HsRwqznrzBL1pIFSP+PE?=
 =?iso-8859-1?Q?PZj0fYtvXJofsvok73ZRsFbuEVvYn1nZ2j6M8twd0UUOiCOGRiCoSj1tX9?=
 =?iso-8859-1?Q?368CaFhLZxgO6tRK1ofPljp+IfdJsKvEup4FTGayv2Xm1Zk7b0t7n9AYxB?=
 =?iso-8859-1?Q?6vobnoc3gRcyFUCMVIeGWg+ywGTC1XXGINMfRpS4rqKu5Rb29thbS9FWHJ?=
 =?iso-8859-1?Q?qkORgOR7zDRy2Kj8mMkCTB8DTD1dzJUGV9Pq0jObSV9yr55qKb+qfi8HxG?=
 =?iso-8859-1?Q?djAW8gfbkEkyr9aPYk7UYMb6x/0aOlWyJ3S1v+1h6gU6R+Qhno8FCeFQ71?=
 =?iso-8859-1?Q?RKTUmSSI+SK0xmIs4XVNfVx18XBv0qbY/gNvDt8w6eErH82bubjVehRdJs?=
 =?iso-8859-1?Q?E/zNGyhnjjzK/pL1I6k0eFMPiNYAKWXCtY3e30B0aVc9iGIXPgd1UUWhLN?=
 =?iso-8859-1?Q?dIylIJcfarnB9mG9G3ZPE2kjyoBPYew2BokxRpUnkVbDJuGEMl+KXU2610?=
 =?iso-8859-1?Q?IRNbzdQ6hCZlwwbA9Cgvx1PaHd5/rtwguvzbAjCPh1F0WxzALOIjGP8bPF?=
 =?iso-8859-1?Q?kpzIwk8urSgs2EWtX2b/JvywGAFYUKIMTsL9OGZNmKiJ0xZZYzUXK71Ojd?=
 =?iso-8859-1?Q?qp?=
x-ms-exchange-antispam-messagedata-1: cc+TcH7jkRIlNA==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYCPR01MB3661.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5abf4f67-4956-432d-0368-08de484f1947
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2025 09:29:29.6256
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JJXuZ9RamosYrlO/7WsZ0DdGdcvydIGUBwTiUzhVwnT2HeBpMjRkAMpKbdAr58rfvvDVTtqsNYp9ZX0CBxM7J38xpRw4ONSEtp6bVFqj4Jg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7PR01MB10690
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Henrik Ahlgren <pablo@seestieto.com> writes:

>Perhaps the Debian developer keyring would serve as a compelling example?
>They even organize actual key-signing parties, which many cryptography
>experts today appear to regard as "LARPing" or otherwise ridiculous.

That sounds almost exactly like a CA key signing ceremony rather than any k=
ind
of WoT thing...

Peter.=
