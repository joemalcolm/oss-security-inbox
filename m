Received: (qmail 24333 invoked by uid 550); 10 Jun 2023 10:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7355 invoked from network); 10 Jun 2023 10:04:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wz1eY3gTU75t2OEFXaUvBjaX5C7/jpcpGusVo8yl6gpKgVk6G7be5CIqvIQHH/IVJxyJN549WkB5X3+SoZeLMqVZ6DFPr0m+Xv9888VxOEuJ0q1otxhC5oW+W9KWlWSt/p3uA/m8OpP2vh1DHGcYi7L7C4x3Sfh+rKcRNonQ2kMVeFelMNqsruJRcdfYHU4sOIXgsebzaoaDutxVwJ2CQEZGlSO55paqAJbWYbJFJr7YSNjyXE5ZnJU7e00dDiPag15fwB8H/R/6yoXtdIQNeo8hMPXjdhqQg1E9XoRyWU6gJg9zsT/++yMlRbD6Tl6aC6Quv2AparqTnDzG1lRGJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMmYfao6/+7X8ssOIVkxb+S5ZlSFeZ1Hq8BMPvZN58U=;
 b=PJ5ruXQZ/JIMROJTQDaMOdDztOFD140hefbWHRx7/kvs0Z+znnhvO8iqU05McqI7cOBd5NNqAfQN1ueCbMyLYyJn+vZ3Q3RAl2gbjazE7uaox5ivS84SeAZbVPA3PZ5MTFnMTcyIlARooaM8krFyGDTFzKp3e95TAW6abkLAEl5WG3CMaxyrR48IJLqFYQZaM9Sx3lAxk0Fk1Gw4haFzaypvVjSaV8+iTPACan5In6BKCHrSEaNCh6IH4wYXJdbmdET9xSiAL2fEqvBlr20Pljjv19zqqZzZL3mbufI1/1bDf6Qd1V4N6MtiaSa5pSqIxAH8fDLkTClMFEyOAnCjWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uottawa.ca; dmarc=pass action=none header.from=uottawa.ca;
 dkim=pass header.d=uottawa.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uottawa.onmicrosoft.com; s=selector2-uottawa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMmYfao6/+7X8ssOIVkxb+S5ZlSFeZ1Hq8BMPvZN58U=;
 b=dD10iVoTqCJgrELZN+30oayl7kVXkkJs7lE6vv8t+dgdN4NYf6yb+/cKtUEEVObmdAgsEGeDioDr/SDZjItt1/Js5ATPrYnDST9kv7GSoZgEKC17qgykX/bB9wIoKxFH/VC/Jaszog2w6OAZSPa76eIEfj2Sa856Q3C8M3KdeQk=
From: Katherine Mcmillan <kmcmi046@uottawa.ca>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Solar Designer talk about 15 years of
 oss-security at SSTIC conference
Thread-Index: AQHZm4F+H9qzQH+qpUqcKv5u3BJMB6+DzIyg
Date: Sat, 10 Jun 2023 10:04:44 +0000
Message-ID:
 <YT2PR01MB98273D8129B5BB67241FB30BE856A@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
References: <b43dbbf1358a42df945de86dee00f452109a7a2e.camel@debian.org>
In-Reply-To: <b43dbbf1358a42df945de86dee00f452109a7a2e.camel@debian.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uottawa.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT2PR01MB9827:EE_|YT3PR01MB5370:EE_
x-ms-office365-filtering-correlation-id: f1177c94-001a-4643-b4f1-08db699a1d50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ab8XGMD3z3Wms/9JbPINhcr7EmFpqpxLKUDepsFRlTYJufmBgUGb1sTk59mtI+rWHZjXgiI3aTdZNFjsA0fMnQ7mgsdcrI0yaHJE6fMwYKcxQK/O9gEAW8Y/Pmg8Fnjnbi3Y4quWoHiTmwlm6BMZpntdK6x3ZTUmXK+6aHkngN//8TuNsv7+4lgaKVoW8+U3zxHHdMiQVi3g+0zrTKxAgRw0BOG682HIsNDTTBHw0OSFGxyIRtgbythPibjRo2ZszS/03Eb/9qFerap92d8F6DtMapu2i0MTB9puZ4DTeF3NEdfJp85UMrrNDI0K/VGVunyxwY/IvQHJukCZd80DvKhOk9nin2fhINbAO/+dvDzemahFUFJ0IAsDbpEiz0Slb9xgU7ELva1UJxNCcdkcNQnwIL0eP9zox/Rl/NQiPRURPtOlODCfb6Rhy0PAiHpVAWd9MFY5hJjicm9vC0ldR0SOiEpIdFJ024sZGzJH18q3bLzQVxKveTJnJtTfocQco50qosyDaXaPCScY1qmU08JzAmI0Z7x2I1lnmVA10qAOt1dIiXl6eo/BvrjnFkIT1I2YpfF4C6arWn2sfwnaUT9w9Rq9ExlmSnbzoBTOKWM=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(451199021)(86362001)(166002)(7696005)(786003)(316002)(8676002)(966005)(41300700001)(38070700005)(83380400001)(5660300002)(26005)(55016003)(38100700002)(122000001)(9686003)(53546011)(6506007)(52536014)(33656002)(71200400001)(41320700001)(8936002)(66446008)(64756008)(66476007)(66556008)(76116006)(66946007)(6916009)(478600001)(186003)(15650500001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?jd+kTIRrKuxhX6+a11bgmVxyReLuHW6qcv9f2fAX+4yGOfGOcz05/Nll?=
 =?Windows-1252?Q?6B/XTp6GP6B0Q2q0gwzPVO81WODZvDTPNXfi+Ndbat+qXYWKPdCUBIeP?=
 =?Windows-1252?Q?JCk1DYxWekcrkxMO90ZJO40lpxXghtwvPS5tKRjUeuqEeP1PUeJfsTPg?=
 =?Windows-1252?Q?afDhcHyo/KthubT819lZm+b5xUXeWmtQXCXJzOTHLJmND1SZgtYakJU+?=
 =?Windows-1252?Q?7efGkX6Ck3eeC8qA4XjFvF7WbaLc3qUNSNothMB3FN7XO9piJ46OxhGg?=
 =?Windows-1252?Q?IpjHmXmA7K2C2HfuyGoUIv6sEBJPAL007MqF7jVCtn9QGfTLJlQbU00v?=
 =?Windows-1252?Q?yPsW3VyWfhQj8vx8yPItI5zET/cdedskjKcQg5NazgxbY7a/l/qVnppw?=
 =?Windows-1252?Q?7zWJQBvUOT6rpUMlZFgsCJjLZCu67azanXuUXatk508x/MnYYg0EESm2?=
 =?Windows-1252?Q?mMxLpQsSiM4rhiC6FSqsQ6aZKbOhKjFq1vbUO5oiBCKDOzX3MQEpo09j?=
 =?Windows-1252?Q?2Dj2EQmR1/UaZ+coR18mEzYiBVIKStazzFy/MeUNXs03biZoD1Nw1Ahf?=
 =?Windows-1252?Q?zpORJd3hmPovJgrIc2cj0gzxojhCdO0d4JR7DJZuUMn3Wh79zxj5ErQm?=
 =?Windows-1252?Q?NJ8YLKDAeRYRyk+gOJcvLfxW1XYrVxsNnFh/q2Uv+0qbhyhZZ46BQGCc?=
 =?Windows-1252?Q?Y6IEVm1xcKy0zcHN9j7phmhSyGlisz4a8ZEmD8cAjISA7QER2T2rz8gW?=
 =?Windows-1252?Q?ibJN/LadpEgSwFuKramAVLVJW0CQ6QIW8Rg3/Q3fj3wikLnGw5bBf3HD?=
 =?Windows-1252?Q?HdXHL+lpGWk+WKXt3MT5yNvcUq3dJ0RHNwiKlW6A/SEh/r44O0b7yj8/?=
 =?Windows-1252?Q?nsqv+TjSiwoTEzuupeduj9ictR1Ss8vVGzzuGGkRlh4k8DxDmP6+THYe?=
 =?Windows-1252?Q?M9rq+Se+F/ftL914sXIDaLSrDJ24WRCn1gZK/k15+Ks2qltjDmb7N7vC?=
 =?Windows-1252?Q?yYMVJPU0Ocuh+/+oQJSh/AKVVR+7rh7p9msuvlX9VnVIiyZu/8qeOAzN?=
 =?Windows-1252?Q?Gabcx+FOdoDlQqwqTfIECisWZg55xLTpvRlNM9jBGGWnIb0rYeoj1fny?=
 =?Windows-1252?Q?2rgCnZQzLA2pZOh26zHCyqQSBQtsfT7QLunAwSxuiI1a0lNAuPnyOzw5?=
 =?Windows-1252?Q?xvM373cd9a4EWpBtW1dCvZYBsRJK9v0Jk0rsUZnbua0mJd355jeWABY7?=
 =?Windows-1252?Q?oRJbXhdXm8BTnsD+kIWJIaZ8jGi+qMTT4LP8ymJtBTCorjYY+NsyCzpv?=
 =?Windows-1252?Q?RlWGa+/2gTPBwhSJIl7itAWmho/pvfcLmW2aJHd1BHyBpC2o7b618Xdo?=
 =?Windows-1252?Q?WGV8Lv0JAzPE/pafLBTPcQ6fAvD42FjkQaUEoeL15lLFtxsl28measaC?=
 =?Windows-1252?Q?aZh3YQrFDBQUg2715vML1r8c8rRstefKfjjFV19qu535OhBqx/shOIQa?=
 =?Windows-1252?Q?d8jww1livBg1H9sNhOCeDT0VtRZpSZfFiYruu7CtyySfX4BnOo94zOLW?=
 =?Windows-1252?Q?tXq54WRXQRbZyOn3mOVqG6Pql/wN4gbD8EMTcKLF4iBiPtQkloL1N4Fk?=
 =?Windows-1252?Q?EYfwX78sbEyTM6YOatMWauvat+O8LII+0G2YCjsK4YU3uzmiGUGLXvOi?=
 =?Windows-1252?Q?bPWZv5BMMtfDoCyZa7hA4q8+3sXUJGNIKe/X1Hp98qOJjlacTxNE4w?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_YT2PR01MB98273D8129B5BB67241FB30BE856AYT2PR01MB9827CANP_"
MIME-Version: 1.0
X-OriginatorOrg: uottawa.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f1177c94-001a-4643-b4f1-08db699a1d50
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2023 10:04:44.0418
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d41fdab1-7e15-4cfd-b5fa-7200e54deb6b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SCWcI5WhsA56Xv8gw1PL+7C8z37EM2AoiLtRrd1BwRf5JuCSjnaYgdsqDH06FC1GOpwoHyHeGg2EwLhxF7vlsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT3PR01MB5370
Subject: Re: [oss-security] Solar Designer talk about 15 years of oss-security
 at SSTIC conference

--_000_YT2PR01MB98273D8129B5BB67241FB30BE856AYT2PR01MB9827CANP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Yves-Alexis,

Personally, I don=92t mind the plug for this at all - wonderful job Solar D=
esigner!

Speaking of which, has there ever been any consideration of having an =93os=
s-security-advocacy=94 list? I like seeing/sharing relevant updates like th=
is.

I also don=92t want to use this list to plug oss-security related talks and=
 conferences, but having said that, the *BSD community supports these effor=
ts and I think I can speak for many when I say that we would love to have a=
n oss-security talk at some point at EuroBSDCon. Keep it in mind, and consi=
der submitting an abstract - open source security is a key topic at this co=
nference too!

Sincerely,
Katie


________________________________
From: Yves-Alexis Perez <corsac@debian.org>
Sent: Saturday, June 10, 2023 5:51:21 AM
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Subject: [oss-security] Solar Designer talk about 15 years of oss-security =
at SSTIC conference

Attention : courriel externe | external email

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi all,

while conference talks aren't really the list focus, I guess there might be=
 an
exception for this one.

Earlier this week, Solar Designer made the opening keynote of the SSTIC
conference in Rennes (France). A retrospective about the open-source securi=
ty
community and coordination around vulnerabilities, attack surface etc.

For interested people, the video replay is available at
https://www.sstic.org/2023/presentation/ouverture_2023/

Many thanks to Solar Designer for the talk and all the years of managing os=
s-
security (and the distros list).

Regards,
- --
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAmSER5oACgkQ3rYcyPpX
RFs8UggAh23FhFo9nbg+hPovw5sZ1cQuHxcCpVmnWE5COhUSzmF1/JVSEZMLWxez
dOeVEgvCJWOl92u0lwTiTfK+tG4eNi0R2UO+uQHW+pv/5dPMV1ti/DmpwD/BhS6w
FzzpUdMM05E9hZEDjOfsXJkBn4pMg3kCzrSuK/KlOdkp9/qI7dCD4J27KwZX2VDB
tih4MjBexSUkdaX/hhvWq7n9plvs5Jbf8U4vy4jBaHFlVdJohu3QVrPb5H7p7mAW
YVkUhhPX8GSBBtkAoIYcnrDZQv4762PVkixV6dRZlhowjbzsBJ198PRk1Ct7Pepo
gRAM0FC7qE4GMyXTFhU2b80wLSTB9Q=3D=3D
=3DK4GU
-----END PGP SIGNATURE-----

--_000_YT2PR01MB98273D8129B5BB67241FB30BE856AYT2PR01MB9827CANP_--
