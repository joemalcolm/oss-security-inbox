Received: (qmail 27657 invoked by uid 550); 13 Oct 2025 23:23:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18014 invoked from network); 13 Oct 2025 23:12:20 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fym96cKVFc1ig8DgZ8lbc9rnOMsMw2Od21Ld169QFLc6H1OKt0m2JbtiqCOXthSvNcnac2gGXAMb8n8+owgDLJpxBkskmn90pTshSiV2Q+TlBU09nk7U+ftE4/cLXG568TNMvv3e1MnDD7tNJeZ/NEcC77QzLOp0jyxcuFRzVm4IMExaKqdkuvj7qgO/BBDWuybeRi3YAz4zwK9W8itq42dCNc4o+8XusWuqYj9TiMohZ1FfvklUGKJX9I6h25Dj2w9cHvNCTuqTJ3t6VUtmJvgLUxe6r4cMotoKRPfZG0yj6w1lXID7pMs3qtU52yAyO77pvzGVgw+02bzgZgnS9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqrPeKfGaVMsjsLSARWTW7UCtXCsoJoO+uSdmwZxJqY=;
 b=lVkDU/SIHunxFzilhg/5P2LeI4rxI40dFcX9YPFNkPY9FAmw4TjMcOFh6THzR6JKJBXLwUVzKdOrb0LM0G1NCRxDqzvhfT6qjJQD/uSHY1SnnPR3Pz6+fGlnI5f7Y+s4oSj7wP/MnQc3tb3IZlGMmosZBlF6X49nV1e67vu5TIIWHT8AHP9LAUyguNVeQN+XnSwDAT/zRveG3LtNWw67EcltzPoTh+yMB8pvuRDFi3ANkpkXSug2R26FF96LN6DgPu877DSZs3f5w6GFMmXdYmG41YfwQ8E+R/Csdka6DK147uSINwaOZ1sNz3ujW0j3PcabT7V6xXclGacjprUHLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqrPeKfGaVMsjsLSARWTW7UCtXCsoJoO+uSdmwZxJqY=;
 b=sauqWKBd2GWLH1z5XGrZ4p3nFnasSqzq8oemzs1Q1JEB4HmwRPukO6VzxL52TAD9Le7p4AWER8qfI9MdIJwfNPp/PRRx6CBzMZ3ufiBhDGX9Z9Oi/zZq+lKkJfWieT/d//yfbD18vOcmXRlbChc6jkQcJN9QgXxCCvmZGwqB0aYdi0HzHELvtaKp0Tec8MzbYsNpyOr6T8qXCFbtxBn81SzymLOF/CXnYn/oPDCSvxFe4kgret69koJJffWZdq2BDmz2QipoH1I1o4qRGvdnpJC4V1fVur8vsReURnOcySjYoYbCq0eBNCvy0p/dwl/F/MBrqniqkH00GVoBvZnvcQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] BoringSSL private key loading is not constant
 time
Thread-Index: AQHcPGZeFNOi0jWGqEeAjqkOOSN6pLTAX2WAgABVLns=
Date: Mon, 13 Oct 2025 23:12:07 +0000
Message-ID:
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
 <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
In-Reply-To:
 <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY7P300MB1451:EE_
x-ms-office365-filtering-correlation-id: 97ed083b-fc2c-452a-edff-08de0aadee7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?zegZ9NZpBSNsRRYf7ukACm/Z5Vd9CczCGYw+o7Zi0RQfL3seqTD4w3VDH9?=
 =?iso-8859-1?Q?DD4Ulnh0K3iljVkjqmH9VhmIqp4XMZ7hjR2g/8KRQUNh6uOasFE7eboini?=
 =?iso-8859-1?Q?ii2Yy/plAUWirXVsaBRKZNrEaShxZPz1TNWNYv/f76dU20nTG6Fn21Uxi6?=
 =?iso-8859-1?Q?xCChczwGQGQFtj8kO26ASBWePcNpklHdmKRKUadIARviASg/I7qkOJM8gL?=
 =?iso-8859-1?Q?kCUp+gMPsCQna3YPenxBP6LCa4YJOBZMzme4Y7CD30f+s3ZfLr2YtYjNEP?=
 =?iso-8859-1?Q?sDoq4ftZmykpgcZxQ3NHESpDHdNaKR2HhYCg1dwnQgtldmyCKiry5hHaa5?=
 =?iso-8859-1?Q?1bmx7fm6eB+cix2541no+WoeYdBVaTGe6UEF1JUnhwlDSHknT7WyC0fr/y?=
 =?iso-8859-1?Q?bgokl0b8Nvx7gRvOshWfHal/SzFC+NC9PLDJbb9yO76RkTqhjLCxZ4jDfX?=
 =?iso-8859-1?Q?P0g0jjZ94rtO12YBi3zuC2T8/sPe53bcwEAumjQDggJeuDlNDJIPXHIKPc?=
 =?iso-8859-1?Q?RIRfpf68+iR+dmNSo5pfh1uXNrzaweldA7jYjMzQ5Phq/txrm7fsT+n2au?=
 =?iso-8859-1?Q?A4KN5bsP1mL+YNPBjk640T2YdoO8tQ7IRWFR73bmX7DOIdnQwvO9sg46Hs?=
 =?iso-8859-1?Q?06WkOmWtiGQaLKSnW1/jDpoBWjnExcJ/j5PdJ95RrO4fH05cxrMRALP9RJ?=
 =?iso-8859-1?Q?/CW72cjsEvnV7knbJj+KX+dmNpbwRx7/f4A9gh8ZwDgqLtM945/WMEVZuJ?=
 =?iso-8859-1?Q?4rNmIPXDkHTRHUHepvtu2BGmWl3TNTL2ihTbqwicgADtmOYon2MMxibTzl?=
 =?iso-8859-1?Q?WI5FQSVQLzWh27VwqSKBntPRqdRuhdTw3EbumUW/b0+B8K/pkKAEHIpmne?=
 =?iso-8859-1?Q?Bmq/XSAi7LDMI89c986CYfjIdcJNNkdqRCDLnhx7flaM34ryVFglblnYGG?=
 =?iso-8859-1?Q?Ag6Sw/QoBeTqNrt/WY/W4j59n8jKKcB5LKW+tKqnRQ2qImBGLa6RARTtMk?=
 =?iso-8859-1?Q?XTAqfod9ZNNXCyGUsUozzJOTExQs6lKUsmL33zDjj2aiMogY/tZug8u/Oe?=
 =?iso-8859-1?Q?dJw0E/Si11riw4sAOuEiVxZamynokZTsnJzWzFtB4J5X5bIvrh/3f5Hjzt?=
 =?iso-8859-1?Q?lMm78WL74529j2l3AzF8M/UqaSDBGBsBSKdRIheksx96dljGx6lEOgVQH+?=
 =?iso-8859-1?Q?1NTr4sGcXpmAdk1e7nsoqYQK0I+Hoe3II/pAMQtUkmvIdiz8dfXtd/rP+C?=
 =?iso-8859-1?Q?MzfrFy8531Sx6HJANAnqfynDJ2Z2Yisy2SDmyaglOAxHB27bks/w91gdt9?=
 =?iso-8859-1?Q?7+OHFr65OI7NPMi9ExxA/reDvHKySL36XrdJkvXpCIpu32n6r2lVDhPcR/?=
 =?iso-8859-1?Q?nV7QEfz64D/2mpjtAjAC9MJx+y7ng0FXue1xZ634XnKU1mxm5YjWPNj3WA?=
 =?iso-8859-1?Q?vr7V/uSbq2n4SUQmGPV78SFR/zXzhmcd36U4BqjBOGPuh0s/b8qmrd/KXO?=
 =?iso-8859-1?Q?1HyZ7G1Z/e0i1nDmDaA3qBXoZY7Ste+rbXbuGND9sK5pT/hxidIgJlcFKk?=
 =?iso-8859-1?Q?mMiYdMEuend+UVM92emM60/SLZnv?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?C7p3h5dQIU7RYSmRGm2sKmvPBKpTujJ8g0SGpb5WFWgsNRMvX3ORU/zSVe?=
 =?iso-8859-1?Q?FOiTSCuovUPgaZKNsQ7s6z0EfVqHLiK+XSx4QzEjfI+GFwomKbtxwmstcd?=
 =?iso-8859-1?Q?Mg3Md51ophdCiLVpggKBUlVwxW1CJtD/J88/m2umZlvgRApMvAuUhfTS/Q?=
 =?iso-8859-1?Q?txIgQGls+0qFKHfTWz223GyV/kfEXSx03XzBk5yo2N1WMDkqdlkLKJIvSL?=
 =?iso-8859-1?Q?oSMwxedmKmtaKVz/HpoExcmvjeL2P9A5h3JVl6JC1sCP8yNOSgpePnKDjZ?=
 =?iso-8859-1?Q?0WeaY5cqe0Jh4EaIBFitTSAI9SXdu8fvDD5zYoRVJfAgjWBEiLGNzbISvw?=
 =?iso-8859-1?Q?pRMYY3dARlFxCgFvlsCTWSvFrXKxWKM3e4Cmoin+Rii2EaWRY2t7WIER4u?=
 =?iso-8859-1?Q?YfnWw0tg6gJdpp80zzYztkxpCdkBzaX1BEewT7KSKaM3/bi9UsXTxR7zEW?=
 =?iso-8859-1?Q?acyU+UXdnNO5bESt8/NYUhUy307C23IWac9Z/o9M72xK60mMWVFT/GeRiN?=
 =?iso-8859-1?Q?pPBnk0/C+LUt1UvIlweAhVj1Pq07qvYuJXOxH/tt8e/SE3lxAjZgmmZ253?=
 =?iso-8859-1?Q?0Xh5VqMmLFaOa/ZlWargMdGb6C5IQYM/kH5TN8oM0D8CDghTQ+j247nb3s?=
 =?iso-8859-1?Q?CTv+TkgL2prajUYqi2ZYamDGLmjAIUjsXq3qsKGTjv+WsHhy+wahZGyE48?=
 =?iso-8859-1?Q?bxX5RPUkav24TRAHQZaYemnmlAwMXr+jYLCV/GehGL69vdXZ5vWGV+zTGf?=
 =?iso-8859-1?Q?7yqD6zd7unKOD/l4O/2EH9AdYt8EBYaz2VzgvO5YpDM32pLL1+e8CZiNdA?=
 =?iso-8859-1?Q?qHZF7305/Br3Vn+wUgqpdNAOBSBooWfqvC7OblAMfFlWLWlSaBGQIHj+Gh?=
 =?iso-8859-1?Q?JhsUH6ntgxO7k9BBPF0FMrQM0K7ZjOM1z8b0GGl2z3DqpGkJNz5NKApd/l?=
 =?iso-8859-1?Q?bacuLCrxET+9fSmoYXegkpFH1maKIZLGDGH35fzxRbWvoAqSYv0PFjbMI/?=
 =?iso-8859-1?Q?a2s5MDGF4qiYBx1GnDuTOvbqOs15CdY3I9B1pKvtEqtuEk+4036W219rvp?=
 =?iso-8859-1?Q?LPfLJntfzTP2+1COERHwC4IdMnlEYYBRkkirBKMiqmdTnxsoVIjnm29US4?=
 =?iso-8859-1?Q?voO/94q7tIHuvfjT2o48c8M6KeR44I1oQUj+muA+N/i7aqDXQDYXw9gDLt?=
 =?iso-8859-1?Q?CgS0eEGPHTWcARayHFqL9JtoOrExI7sF2E8+HNPaEWJC31n0JDrXYM0e+3?=
 =?iso-8859-1?Q?AstjZirfSnTGK4IUp/zfaA37rZxivn+lebQ1XXe1CmS9tpjGxFAyvHr1se?=
 =?iso-8859-1?Q?+sygDYj9mhOzEZVEQdeurH+eeHjyZn3k0YF8igb67HupyC6QH+hPQwPDEc?=
 =?iso-8859-1?Q?MLehCSI0X4QAnAVNRscoYw1M3P2koBalV9B+ZYycsrLYV0qrHyKL6213HG?=
 =?iso-8859-1?Q?F410yY1kz1mNpWaOR5nWk41Wn7fdPxWQzQQkeUYeaTlpZQ6EwDI4vP7+lr?=
 =?iso-8859-1?Q?ho39VB4TrrKJcuN7T+X0VLxAebGx2/PkrMF4fV1lhUWk9bB3fdq4YAM5VA?=
 =?iso-8859-1?Q?vAKGNgKjXAo5K8JtO6k2m/Ps2ht495NZkP7VS+pkzV3TDizyDOQKhjiFWu?=
 =?iso-8859-1?Q?S74MWxZ75rKXeGgrtWoq8x+JP0V9NxHryY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ed083b-fc2c-452a-edff-08de0aadee7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 23:12:07.9830
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZoFgm1uvHRYmLNVbmx3KNT6NaUwxVr23uF9lEGonsAwKHF+2jQkOp9tpDd3pvJuss+uThCEI/wV83QoauxPNN0yX/OEikL6RV5iNt9EGM3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY7P300MB1451
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

Jeffrey Walton <noloader@gmail.com> writes:

>What does the attacker learn besides the key length?  Isn't that mostly
>public information, like the TLS options used during cipher suite
>negotiation?

It's a proof-of-concept from a very entertaining talk at the OpenSSL
conference, "Constant-Time BIGNUM Is Bollocks".  The BoringSSL folks had
claimed there were no timing side-channels in their code, this demonstrates=
 a
timing side-channel.

Admittedly not a terribly useful one :-).

Peter.=
