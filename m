Received: (qmail 13653 invoked by uid 550); 24 Sep 2024 13:01:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23554 invoked from network); 24 Sep 2024 09:13:02 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZUPJkufjMZp5Cu47LFP6GqBFjzW2M/LolVyfZkwAkrw520IC8pVEBE5ynYe2Q3UmOmAMYUxXEvcEjumWEoST/wkQAerGoJOOzNuFCdcGKCLZktLv2t2B5Exn6q2le4ofvPIzWJw03HyHYDAKLSM4lCTkKL0/u4lrnv1b2uTmZeI4+dy6QGdG7zk2wv/isXPdDVyzozF5Qi1FZlbZRaEmUpSp1O/Pe5KJ2AW1KXToJiYct98DeF93SosHXlTHI6xGq4OwfkENh3KRUB5XjCdZe8nZx8nKiwmfalkdbacEluumDMhlZ6Vq4L6HZ3LuEFnFACyX8PG/IZ0NPw6cfSyO2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGINjr/TPUR+JdKbi5s48ESwiY/g27ic4FTOd+A1dus=;
 b=yx61ojpbU4E/EWViETLWkUBOTVWsU/yJrknrP0l4WtiVLLY6HUoW/gcjBU57EaLqUksvQUw9Lz/LHJHfEt3GkpNK9+NNjB9mTEvCbTkqEX0HfdfcFDFwsT1RfEwwwSRhECkuD8aToppj8JL6lsxfIaC2NA7aVynBux8ycf2fBsGyACULmAfCZ9QjBeGmzqU4i5zW8Tzg/8GEirfOVazIaPyPZCuVXDSiQ4qb4TZnLxa+Zz1wFaYqw2F2lrnwGmNW7rky2h5JZKN7q0ECqnabi+hPgMBT87TveKhlkLbRl5USzUlTufIHbhFAKqEDybzDMNFMV96iEYmKEkh1EhHw8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NGINjr/TPUR+JdKbi5s48ESwiY/g27ic4FTOd+A1dus=;
 b=jScblB23/dqAFmdcK/di+7zj4GS9up6YBxTPRssFb+jlIL2bf39R6SD1X9eCnWG1D6N6EQtSEYbkFgpfC/9X/+A+rLOufrimw7MSC8OJeykeSUC2tkb6T41tJxbqluY9XOBN0KMVmChRlB1Qa1gySV/FHldmw/TrsxWhkME1I7dMxRjeDkCyotQSlTpP4WLMmOcQ4d53MVraXpxnduB4bp3EARazxN7moMmkFrRq6rhNNPWX+ttps/7ayPit4JTKpnAAvGaefP0Sfa7SLj1s1r5B+iF01Rsu8Nr20mEoasC1VXZ9qlL3jWpLApG1O5dlRo0wTBlzi7XcUb5PL3Dpcw==
From: Joel GUITTET <jguittet@witekio.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Regardless the CVE-2024-42154 NETWORK flag
Thread-Index: AQHbDmFjwSL1ucGCHkKtAIsYyXY6lQ==
Date: Tue, 24 Sep 2024 09:12:46 +0000
Message-ID:
 <AM9P192MB131684EA6145690A492F481FD7682@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=witekio.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB1316:EE_|AM7P192MB0580:EE_
x-ms-office365-filtering-correlation-id: 66aca778-70a5-4558-3d1f-08dcdc790dea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|10070799003|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?jk45OEvrlkTamMNlF9+MXVjqHopcIdquWZ43kq3wBLQcWkc5/BDFAlJVdF?=
 =?iso-8859-1?Q?eNZCCSDop1XnYFJceOFAwXg9bDOkIE+myKK6j/mlETZApH1ADWCwo17RJq?=
 =?iso-8859-1?Q?7t9xzPJJPIY4ruDN9tnEaE9cVerDHIuYwXxJGPBXIaOJuBF8Phi66q+Pxm?=
 =?iso-8859-1?Q?WCA3/7Tfu3zuLbigFY8QINq22Zudr65O+wxNxSQYYHROiprpQ+GXwDep9b?=
 =?iso-8859-1?Q?kqhE6EvXqLZOlH/7lKDSzgkbCmKrnc4189lNSk0xqsHZZyznsycsPXf5OY?=
 =?iso-8859-1?Q?tXy8bhL+V2KmJo1PSXkYwBbiWLnR7MNNK8UD//3/y2uXyMygFN0ja2py+I?=
 =?iso-8859-1?Q?Ih691/2yR2uVvtt/jPnKNcKQG3w0XHEH8fwYYE9rDexr31JmHmAxTQG0pE?=
 =?iso-8859-1?Q?TMSalXw+iRvA2+Qx+BkkyfVGOC+kBFdoVymLvgmNp7N0l5kWCEuGgQCLzo?=
 =?iso-8859-1?Q?AjCj5toKiIjm6gFkjdLURc1DEr0WpDv3WSJnSXtxVIMaAkejaMcdzZdIv0?=
 =?iso-8859-1?Q?1Fx3lg8D5ipMt0xxTuXT3zhojH3JM4P7Sxeig0T6NoyzUn15msGoHXEsic?=
 =?iso-8859-1?Q?TxJTBrue8jwVqRmqVHhbgZRxYZ78ACxRJ1HLPS6DvrMgtAAITpkAr1OX5q?=
 =?iso-8859-1?Q?Gyqs83dlIwNTkxdUikLG4hw0svrZ6rqd+EP4VnZmdy9rJuRNSml2imXrSA?=
 =?iso-8859-1?Q?ESyY06xb09sg58q49vM5aN9Td59+o2RMe2Sk8r6M6vKAxpkr70mNx1QWlF?=
 =?iso-8859-1?Q?ya7FAsgc2ycgXgng+BO4x3qb1u4l7ALohlekyIvqTSAgmJQILasHLcxEqe?=
 =?iso-8859-1?Q?3m55KivnEy/jLpEYU/m27mop8CHZ59T69m0R8Oxbfh+sgvpuhr/C2YjCJi?=
 =?iso-8859-1?Q?Ig3aKGKRzl9teb+N+6VJC0BBUJyCNI46h8uzNSqOdbcwsP9k+D/ONXspWW?=
 =?iso-8859-1?Q?Wjh3FHDezwnphyA5iGABOiywqoORrJIVMbjJsUvf4FOUM0nR45LPAKiS8/?=
 =?iso-8859-1?Q?yZWY/CLe03SJHS1MwQ1PF8xtraIakcL31FonpmCJypzYcOnEjp4qd9YRUX?=
 =?iso-8859-1?Q?QZHaO94rQ3yALhtgKzl7dv2e+WOJ90CCROCSRSeqC5Zr+FMVBLQ0lwKYvf?=
 =?iso-8859-1?Q?YGrOg+yq+xAD7pws6hW/wYriSaNx4JlXqes8QLYGtu3gkVgbWTxOuUXQzt?=
 =?iso-8859-1?Q?Abd1KxvQrEWCSNivQzl7URvqCRbr7RL7MqUI1kudeaYH9oeJ1zIdNYJQQ8?=
 =?iso-8859-1?Q?3Mk8CRoKMnW5XfTauY+q/bTQvcBL+YNSgcZxwwHhfTn9dBta52stc4Nskc?=
 =?iso-8859-1?Q?w9hUOw+WQN89PbqearqsTkdMnMEN3DFQ6PhqR266+56yMsPHcOuvIa6HqH?=
 =?iso-8859-1?Q?kwDbRbCCXBx5V/o20MAf/4EhuyNqejMA=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P192MB1316.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?dOez/zXgjBs8eEhyQ79M1vMJTvrKGWvmH7NQA7WxfBPhIx7H95ic6Xr1d3?=
 =?iso-8859-1?Q?l/XVLClZ9bIQcdADy0A3TTcZxtezoslU+zAb9fa53Wl7UMdNyGgvUU+JzE?=
 =?iso-8859-1?Q?7WXfMWaYj0GQqxpZjLNTqmDcKDmD+N3yE9y3Xr4BZVsoZDJoZnVBVLJsFw?=
 =?iso-8859-1?Q?6BTMAcLXx+TiyduJEfis9Fz7hMOBHvoATa52CpLGjN0QK+39iynXNOgdRc?=
 =?iso-8859-1?Q?p5KeSOz7W6wi2zDQwV3/kh9YOhQwVzAL3A8fMmnEGxhif1c+7ZrLq6uHOA?=
 =?iso-8859-1?Q?1mBA2PF+PIr5m/XSgjrT+e6ZNwFio7hxdi5dQ8QTEHbbwIka6QuLdKOAxN?=
 =?iso-8859-1?Q?cjZJe0/IcEX9mSyBQi8wAGfZ0HfJ9lwdhs6XVWALJrScp+JqNNB8y4A+0i?=
 =?iso-8859-1?Q?6fDRO++s+WSdXnzuzO/wkD2Re/jt8uLH5Ml5677Haw+kS8aDKtVf/8OuEE?=
 =?iso-8859-1?Q?n+qweXa4k5jxfPKxCvzMWAex4MV55/e/X00/GmyokHdLbYYHHKLe3v/1aC?=
 =?iso-8859-1?Q?PgyZYjmCG7vrlr+uLVCN0oKpecS75j50uHpJPpfzW7xxkLZWgp7+Oi6VOw?=
 =?iso-8859-1?Q?3kjHDEnFtAt7JTF6BjKkyNNmQ6VKg55+WlRMjRwzRK21pGLhDvMs5CCr3L?=
 =?iso-8859-1?Q?hKauuzGBZ4dFV5BpgMYh/BxFHgc9D87JdVUgCrulqZfPOWMwuWYvHDcvB7?=
 =?iso-8859-1?Q?FdCBoZb8mULbUePTNUlMK2krcdqfgpBg3M86EBhN/jhxyJc46LingQcdFn?=
 =?iso-8859-1?Q?gZWH/+v5XI6xmQXT9Q10dc+8ZTGt1JYoMbJZyXyju3aJD7erf1A7Xx2/mC?=
 =?iso-8859-1?Q?wFWa6yxDSa/A2ycrVFtiPKBixen+GSWi3Bgr10vr9INnedbveuJ3KUlGm0?=
 =?iso-8859-1?Q?4utx3hC2dDbIR9Mg2m7HLR2PaWyEYHBE4MT7m4q887cGDpjPIX6Xyn/f5s?=
 =?iso-8859-1?Q?s2pdCcCVQP/jKKjAOO68g4VECUS+8H+CziJI1e0knhsfOV+xMjaVhx5VOa?=
 =?iso-8859-1?Q?eSjs0/5chPGCE5+fuuseu7tEjDzeuDhTeqcS3+DWqesMw40CkqHGXetHVp?=
 =?iso-8859-1?Q?T2ymu2NeAK3g1CwPP/mtBO248JXc6D6k+jw+cIPuhyRKwjvCCBgmkY4GTZ?=
 =?iso-8859-1?Q?dGWkNBWwkhljvY/SAxy9t5Ujub9e5p8OfeOGPaoddPXmwPzzK6df5Imie+?=
 =?iso-8859-1?Q?Um80K7rhsOYC/HACr56mnSBpLP13YpjLAvuTownO5x+7ud2MayQDzZ3+Oz?=
 =?iso-8859-1?Q?X8dP9Bycn6c2MLLzrtnNlqTCTdA78QytHuotVczQLNJUNbNGsRLW2hRaQA?=
 =?iso-8859-1?Q?6XUTBBA5sl4+q9S8Rqr4dyXA7iD9yeYeE/jBOh2kvZTF8Y75eVy0k4qldB?=
 =?iso-8859-1?Q?0L9fRRi14rvKQYx6qwMzYwmxhtRKqp6Be8FkccG8dOvzfiEjjOvNBQVntj?=
 =?iso-8859-1?Q?eEgekv7cIDw8qYJ50zOGKd//z2kzEakcTqcCUpBy/pwDRuCpHZw5yMy74o?=
 =?iso-8859-1?Q?7qg7QvtlV5naFF5yoe+v0jtu5LlSQRwTOijzQIj0sQjeIR0gLkRxoWJJ7W?=
 =?iso-8859-1?Q?ZIkP1IRYSpu9wDrVGYn/NsUQz7XpKxyWYm4KwXdNy+WM0mfQzs6eozmrQ5?=
 =?iso-8859-1?Q?lsxmtDA8MoTp+sQH/ouE7TaUafgLBatUMFonpSIklR5sNLtQ8+lYHrTURH?=
 =?iso-8859-1?Q?SDZuVCQuXMoa80YgoGPB7Mjh49RXcDRBdNp2m7YP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 66aca778-70a5-4558-3d1f-08dcdc790dea
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 09:12:46.1998
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2PVOu9Wp/1AOgsKv75N9o9ZrwXI4RuTTetMHbOxAMuNYP+J063b9G63jtQvfH/oOaeG9fEjjSN+DNU/EdzdICQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P192MB0580
Subject: [oss-security] CVE-2024-42154: Linux kernel: tcp_metrics: validate source addr length

Hello security team!

I'm working on a medical product actually and have trouble about the CVE-20=
24-42154. It is regarding NETLINK socket which can be used only locally, bu=
t it is classified with "NETWORK" flag. NETWORK flag is annoying because it=
 means more difficult to justify the CVE.

I already ask the NIST why the NETWOKR flag was set for this CVE, they answ=
er me that it's linked to socket and without more public reference they are=
 just setting the NETWORK flag, in case of.

Can I ask you your opinion about this CVE and the pertinence of the NETWORK=
 flag here?

Thanks for any feedback,
Regard
Joel





Witekio France is an SAS company registered in Lyon. Registered office: 14 =
rue Rhin et Danube - 69009 Lyon. Registered company number: RCS 518 864 012=
 00035. VAT number FR 68 518 864 012
This message contains confidential information and is intended only for the=
 individual(s) addressed in the message. If you aren't the named addressee,=
 you should not disseminate, distribute, or copy this e-mail.

We continuously commit to comply with the applicable data protection laws a=
nd ensure fair and transparent processing of your personal data. Please rea=
d our privacy statement including an information notice and data protection=
 policy for detailed information on our website.
