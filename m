Received: (qmail 11656 invoked by uid 550); 3 Nov 2025 14:27:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28164 invoked from network); 3 Nov 2025 12:53:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G9d5a4J96QAMDUt4YWl3Y3BVf9/aT3s0epoBqJ/pYDu+uG7+lUtlLNFcvpGvo45A7ngk0rl6+nVk+HlPf7S+YKjpcapWCaVe7PIZYpmXyXB5ywglwdQC+X9fP9RDBlnxF1iBV1AF0uODbaQx3JYh6RZjcQ5tMzCMviGtN61G4JG0NNGgnK0p5xorlrI1ynXfXN5CfQByzFk8kld9HZ1kLkRHgh4BSif76jaIdvtRF2RCTmngWlQtoXTwc/BlYVrvaiZokeVKpvmFSLBvowXQPA+i6AlPM6+xpsVgDOgwbNp5pZyiYIbPI+bCukdEIw9aFJbzydsFuHSXUcLaBwJOpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rxojjGf9iy7ZlJpNGwQEf73oM6dWXoR9D/b87cEhs1Q=;
 b=mF6H+Jvqon05tUYExXfeIYIJyl0oenek129OUT9MOYi/dhJWCTi+4O25oOiy7SdXbrF9eFyqRiTRjpK2ug+lV9tS4N8ZV/sdhR8MBxAu7RsKsgQnQ+ZrDoPg6oyBSfj7Gx5q87rFfhVF7zYsG0mu+FQvG8BsHz482xCWGN04DQINOE3XIeZc1nsoNuQm4OaBVXIHCJ5jhpW4ByuAOxqBJJqix8Zk/QkMpXBdewAVbr9J44/42rEI6mVYBaNfWKgn6iAvbiBjNlV8vUVnNFrb2BGr0hRAIX47BurYgLhiUUEgo1m8RfVqQC9wUGdjQR9vKPMSKTtniDyWi8ZUhW4HxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rxojjGf9iy7ZlJpNGwQEf73oM6dWXoR9D/b87cEhs1Q=;
 b=Bw4+UMmdL2foxPGqczqLHLEoCEQBCvrA2q5S9OSHjV1VBG8hSAo9oOOIIpCRnE9ScRQWU1osWWDrVtMjpmO2wblxmHyWwtFM7OU23NRJlhFFgva7GeEyfPAoceEkOG13gN89wuanKD7++7Bn02ffSKUWR6XHSiZZ0Cvl+wIPCJR3IhDf/CgNJH6oUgre7ykmxv33k/Nr3C+9qe5FZuiciSQSTwOUXa+lPXKvd6Bhqx/XyzhNt474USFTg86KQir81U7+MMt/iD2EuqhK9Huz6a295kB2tBs1qCIpahpjqXQncbNxjvRmBk9rhenXp3HCaKtk0fjz+8XBmHQvqZCOIw==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Questionable CVE's reported against dnsmasq
Thread-Index:
 AQHcR1/QuJANdEws/E+/DnYb1yrL/7TWXygAgAAmlgCAABqVgIAAKweAgAX6QoCAAGMdAIABFob1gAKzW7A=
Date: Mon, 3 Nov 2025 12:53:31 +0000
Message-ID:
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
In-Reply-To: <875xbtlf4z.fsf@hope.eyrie.org>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY0P300MB0417:EE_
x-ms-office365-filtering-correlation-id: 57b69a72-a297-4e21-0fc6-08de1ad7fe3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?JL77zGMcJ+Jcp0MI/aFB4xpTQ1PH+soarglNwNOedR7TlCHrqiY6eCgjYj?=
 =?iso-8859-1?Q?KYWethYY9/48JDBPnTBm1HB0ZGfJfs75AaU2F44sSquqpomekU94BN3W7q?=
 =?iso-8859-1?Q?1Y0JkFkJ2kOFYFVo6C090iYelDNhGYTy9UtCSFwVrgitnDd4QnYNCTdUDn?=
 =?iso-8859-1?Q?Vc8q4u3tFMebY4fy2bbtsLfVdXlfc4ImJt1tKKn1lTiZWGP1DqzPRtRJ58?=
 =?iso-8859-1?Q?cRtpRFed0oQqDdgWxwMM3nLX277aK+tNwvusr/I1+pajzzs4uHB4rwvE7o?=
 =?iso-8859-1?Q?XOhBq6G6JwSN7eklGd//KUvHOIPZdI/Nk7BhYNCowSctUJAW3sSEXs17PU?=
 =?iso-8859-1?Q?QMItCciI/OHKJo3WEME/Bnm4Q6f9ohw521kSZ0GxA6tHsSekYx6EqbMwfn?=
 =?iso-8859-1?Q?03XG607i4NllYMe2BqueL5nqaRFpGcT0yrZzYJVbqNahZGYG9bwoGWvK/e?=
 =?iso-8859-1?Q?uTV0s47X3tyDOs2Gnv7D3ZvTV+cH7oPy7hxq0y66U/0db5gNrbsTq2/18v?=
 =?iso-8859-1?Q?zaJPddsGBb533kBVYmlaZX84M4XaQwG05hjIFG9yKxga3MxkMV0sgBeNCg?=
 =?iso-8859-1?Q?u60HQfXm69JH1UqrSc+B3Wyj2W6uk89dxUpoc536A6pslOwhLM6AjAF1AC?=
 =?iso-8859-1?Q?PwGhCESSlzGnzTiysj5Icbv1oknFmQX1dV4VbncTXq1DmZpQqwMAvfDjPn?=
 =?iso-8859-1?Q?GyS+y0TWJO30ywnuqUoeGBJsMaTo7qs5kK5JH7VbjAHl3LJXH5Nez5yxxW?=
 =?iso-8859-1?Q?JhwWJzSjTlt6laBubZPwxamBrl7bKWdcY28dbJxaUqNRzTxY7W9u2gGELk?=
 =?iso-8859-1?Q?XgPhu4tfcuorSIommLRD3zxcSmnfEZteD/m8vvN/HpltIj8KSMjszL61vQ?=
 =?iso-8859-1?Q?mYLqlZtF5mjo7IjsKY0uGLRN3V7RoJ8bYERdIhTPEx1Q72uSjp66aG94OG?=
 =?iso-8859-1?Q?a0pLjX24J/LrmlgyrlMeaX/ZyGX83SVwRCNGFpSs8l3+zkHEletho/hsiI?=
 =?iso-8859-1?Q?AT3+nDNh6yfUhEhYfzgEKlhb5ReiiyGWnVhW/bHhysAv8Iq2g2X4ZMDLd9?=
 =?iso-8859-1?Q?ifI7MMcGN5fUgbABff9d4nWXwRyIGNbYB2drylhe0WGOEEny62cxLzE3WS?=
 =?iso-8859-1?Q?A/oBr3xSLeDC6LEfoi1z1sKdk8LMzyxCDjeR027aNW9CLLjOsplbLH24pm?=
 =?iso-8859-1?Q?dAYyn0LyHLMFRjIxBAPvNkgHLG3JI16fVsbwT0qLcli+DxfEJIJ3fhI+U6?=
 =?iso-8859-1?Q?2eZ/lLt4L4yQYCjtwtuFLmWWuv3TKRRiLo6+/nP/Fjy5ULoybRl9Fpdj9d?=
 =?iso-8859-1?Q?/CWoRK9fVJMDFXzHCX5gJn97wZy08wTxafNJvm022fpcW+CZd/LS3nQVdG?=
 =?iso-8859-1?Q?lafeaBVAyyFOWC16CNr/LrTBHVxAihuHELRVAA/eSxwZKmdux1p/7SmtSa?=
 =?iso-8859-1?Q?JkBwhjLc0WVPHoy1WrlqCurI+Ak+71oC1ID2a1E4Cla5O9DCWgJzxKriG3?=
 =?iso-8859-1?Q?clzXB76uQIyZbUso/9SRLIghQxIAtpnAwJtr2B29NC24yEBq60clP9+M6e?=
 =?iso-8859-1?Q?ME4VCYSemkAd0pq0r4Gk7gG23MBG?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?7VIW785G6AOUB8+LQiGgNXbjTHJIPatjvmXtfvKt9o5zoNnAV5tNyUDfzn?=
 =?iso-8859-1?Q?Pdf4BBppnijfc7o15UMbAyTgYTUFvEBhr0RY4Bu6/+QqotNSWDWQMvRken?=
 =?iso-8859-1?Q?/BxXxdjhTCzpYKewUGUgS7f1j03TTAY1ZbiRqVlaM83qJOrFaNC4Ef7DX9?=
 =?iso-8859-1?Q?w+Kesj+XbGTYlL541Ys8YM7Zy5wqnexRqQQqx6KmuW1C2VaSOrTyCL7fuI?=
 =?iso-8859-1?Q?HwBOzco1Zh0LX8PPMJ99G9xtvTp734VW7YL6jr072PmfD3sh7RDMYuja/c?=
 =?iso-8859-1?Q?oM5Q0a5st70LjkR/fkrfhlS3fuNGxi68/E4Oq0YdxLxVptz3V+2SxWqFyt?=
 =?iso-8859-1?Q?JLHxOsqW/KkEB7uGenoLNz4iWYIUct7MV9u/XKWX1+iIPWEFfZvgfbrMZT?=
 =?iso-8859-1?Q?gYHtQ+pTksjPfztCnYX6Vui3+e1ouk9egdSn72QVKBoVzl6YZi0j5MIZTr?=
 =?iso-8859-1?Q?gelYxWyAF0XUhpztT2i/FCMIvQZM3rHv5yswd+fqeNw1kCySKnKOcGfCh4?=
 =?iso-8859-1?Q?UQ0PI6h7kz73+ZpAbF5qiNp+f0lrIO2UWXzeUOGemLhD2LamkCOMZEjr/I?=
 =?iso-8859-1?Q?eQjv62xu5ybRv7mwKWGttE9CxB/SDJ4lG1SJlecKwjC3J+gX9+HsSE7HIj?=
 =?iso-8859-1?Q?p5EBKAnW4lX1g6fAVYCI1gswSKv+Vq9vCkz2vqJu+9fjkjhWstw5ZnQEWZ?=
 =?iso-8859-1?Q?L+gBny3MImalfhQ0J0xJpoYsDoACjy/S8rAhtqK4awxR0H1bzn0tzlPXrI?=
 =?iso-8859-1?Q?XVdz+kh6lRdtKU+0lrfHIgFx//7+ZxW3Vqd1aftyMDD8CjdBu4Ob+SwskJ?=
 =?iso-8859-1?Q?kdOzocU/gJEYWqCuLUoNuDLrJLvJIw1eWak/+9yLXPK1EKPcZq1Rk8bcww?=
 =?iso-8859-1?Q?E2f2mbZ4bzTiOkGSYyfzGMz99m/5kMYv1pkdSQrGf1TdvciiNJ9sDw+cn9?=
 =?iso-8859-1?Q?anPwmCOOTdWz8VlXt0b48uHmuUl3lgKp2TnFZx4ary7cv/xmIu7zinqOlU?=
 =?iso-8859-1?Q?i/TAwxrSlgXqaPhXmk6Dbs1lMJaR2CNdxvsvrkN0zYpXiGDm5nlwI7iiDK?=
 =?iso-8859-1?Q?ftRFFLytrixQX0xQeM4o/SYQqYl+NEfjs2dDFLz63yxPXKbEQgIJh55Ovy?=
 =?iso-8859-1?Q?4O2SG4qBf7f9/ZElqfbQj337FLuxeRUUvJaMG12ULb1brYEY1V5nj7jsxC?=
 =?iso-8859-1?Q?VX23fKlYlOzKSduZ+kpszY7RbsIc58yHmSXyMzzE9SP+Bodbdg2G7oaXkn?=
 =?iso-8859-1?Q?TYZ+LUP9r+3rFil3tPmCRxD0L7OIz/HiP1FkQISTura4/zRBWdkd/dMOLY?=
 =?iso-8859-1?Q?JVauRSRaGolSZwyuCiSzcotBV+N3Bgh7U1ho2IJKZmHtZuJfFQAs21d/RP?=
 =?iso-8859-1?Q?VjHU5Fgrqvee24qeiqDwbRQo5oGDzcE3jFrZ6MYLo7hP7LWLPIxjapsKzV?=
 =?iso-8859-1?Q?Z/h9CydKwsITlKd/d1oVCUXb3HaL4lu31DNqAjrz9v/Ss9CoOKhBP1HS3A?=
 =?iso-8859-1?Q?lDkbp841+CvdgjFf1sjX00TnJKblcBKtCnOcTcEgyGVo9JMopyhL8fvjXz?=
 =?iso-8859-1?Q?zDwEaMzwDQvn+Zjg4jn0JcveJvs4XCNY2tFRN19s8wYSK6WwRN0aTuvRaa?=
 =?iso-8859-1?Q?dFgB2AbPeiulU9XAXO5rMjF21TMr9FO4HF99aoGjLuCBrS4EvGgO4X1w?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 57b69a72-a297-4e21-0fc6-08de1ad7fe3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 12:53:31.8631
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uzqxviwSiHqmUFwUn8ZO5nu9MmicZaYa3vIMAy8oOOFGKoHxFeJ6w5vMkjUlkjVTLj3D/Tmixi5sijc1T+3cKXswda2GVZa8s0BftvEBljQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0417
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Russ Allbery <eagle@eyrie.org> writes:

>This is a bit of an "ask the Lazyweb" question since I have done only mini=
mal
>research, but is there any way for me to declare, as the software maintain=
er,
>what I consider to be the security boundaries of the software in a way that
>can be at least partially machine-readable?

Even before getting into that, how do you document that people shouldn't do
certain things with their config files, or by extension which bits are insi=
de
and outside the security boundary?  "If an unauthorised party can modify yo=
ur
config files then bad things can happen" seems redundant, "We take no
responsibility for what happens if you fail to take unspecified steps to
secure your config files" might be correct but will be perceived as blame-t=
he-
victim... how do you document this for users?

Peter.=
