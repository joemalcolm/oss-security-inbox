Received: (qmail 32097 invoked by uid 550); 13 Sep 2023 23:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13609 invoked from network); 13 Sep 2023 22:40:02 -0000
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.47.75.177; helo=can01-yt3-obe.outbound.protection.outlook.com; envelope-from=kmcmi046@uottawa.ca; receiver=<UNKNOWN> 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kh55bH4j4Q7dnyhBkshkgppUkZfH3Tv/OdPfXvHjXCv7UyXFwKN2dZq2Cbo5BoXVL44fxWXSwH+0FbmGhp6pGHDpd8G7aaD0r/fV7BdZk+94jncx228YI7f4JFqXlT3aBxt/RdKKYSSLdTb8RzgGNgc8MoBS5yMkQDMMnwx033zpif8ooVLOMQ2LvJl+fHt9NMYBPWNqKN4Uop8uZTu2+eRUkmzSpPbHSE6yIQHNHKC+n6oPWtKGF1daZ00lXJjAM0IN3Ysd2WjoPePvc9AeXyHU95gydlxELM8cj21ROMgrzvsWJO+7zL0C1HG6mQGblsGaEckXGVmfCmYEvRpJKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UtsPjIEUZ+KZ6g+X5cCl7G5+Z3YRI1i1B2c6F/4/qGo=;
 b=XITNVBrqJz1eaqzAQ6yH2B99uS30ipmV6Ccnj1OsJE5QBLa0iHVnjUYX5DNvDVU+f4CENuaVF7Z8+WuQX6FugTqjBuoJ2C1Tv9DGpBExDh6mJ3tA1eKTzMJIQbc11ixi/LUWE1MI516K4Olkv1Yg110SB/E3Z572io1vfoDppSaDa+pLLPBu3JL+hIsF75pIexiCcYzXiHHrclo8VKWA6Mosj1AqsVli3Cb1ZpKTcQHV8/Ye7AwEI6bvuj3ujkqzLHCY1z8vfNzGcA9C7GOICO48Y/r4NM1FWSuwaojOxVMQtnqMcKk2ZaCEOh+vtEMnWRsBriCRzj1aX9MorAfiSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uottawa.ca; dmarc=pass action=none header.from=uottawa.ca;
 dkim=pass header.d=uottawa.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uottawa.onmicrosoft.com; s=selector2-uottawa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtsPjIEUZ+KZ6g+X5cCl7G5+Z3YRI1i1B2c6F/4/qGo=;
 b=jqvLrcRkMfE/ynoD6IkPfLa7M+vI8DLMDZ5nRlVe9+PJ/eRQeaDjfUb9zPWDxwJVYOlGazWsE5kxuTOdm4XaNBiJ9uFf+U+iQhxIr/IDfV4RNXfClr0dYTeEwc5IT4QgNYwXTGf+wX+NXRlh9uXe7XfqfGgd5n+CIxFJcUuW0Ho=
From: Katherine Mcmillan <kmcmi046@uottawa.ca>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: illumos (or at least danmcd) membership in the distros list
Thread-Index: AQHZ5n/cFLWz9aEfSUyMm/wMAsnC+bAZWNRx
Date: Wed, 13 Sep 2023 22:39:49 +0000
Message-ID:
 <YT4PR01MB98293522FFEC4031EC4BD7D1E8F0A@YT4PR01MB9829.CANPRD01.PROD.OUTLOOK.COM>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
In-Reply-To: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uottawa.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT4PR01MB9829:EE_|YT1PR01MB8426:EE_
x-ms-office365-filtering-correlation-id: 408158b0-2a2b-4473-6b12-08dbb4aa56d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 +FdCmG+xnAFIK2lf/mnwLeTC//AowGPhjjILMqhOF2j9kOVsdGNc4MDUW/Dx3YR/r4UGxUD3/jblZPTiUgsIxpVhcPqRbcEcxct0jTGBh0PTd2ifQxS7k5j/q0g3ji11fgq8+IEkgpRxX8QyjVbRm6HHQDNMux9RBm62jyaCLHiALD1hoslKXxM2RMUDmduBJYEhG8NASX53H5gMCCONL2Deldu0WVsmWq2jivVJQPNaTVPdb2AGtL+SE9/BKRugDIVXBp/P9/iWd1Jc7lJMzAaaESWW3jNnjSuWsAOM4YJKjC//YFr1TR6uO3FafiPxe0gnyjDG+pHSNkys88YuqDFN8po9oaUYa+PEn2wG/FI+Nayfi3c/OBIhaGfTLxvfkwNwDgxmP5sRuvI2OIKOfQOWbHy+MEeKvVuAYEPS/fI+UkBQsVhajcRjUAz0XuNitRkfoDNGYTkRadWGQ6fLESpGhYOJin2WXydWFgICRr/ASFdhaHpLFCQjgT+XgkRL4Y+dAi8Cas7rxCsIobvDOjPMGZ3b3ABKYz5jDy+kVdAUOXEljk4g1hTRhhcVgSf20yHkm0UE69M/L3t3RHRKoeteA0y4TNBwJJmFzV1mlkY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT4PR01MB9829.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(376002)(396003)(136003)(346002)(186009)(1800799009)(451199024)(7696005)(6506007)(71200400001)(53546011)(33656002)(86362001)(55016003)(38100700002)(122000001)(38070700005)(166002)(2906002)(966005)(9686003)(83380400001)(478600001)(52536014)(316002)(5660300002)(786003)(6916009)(8676002)(8936002)(41300700001)(76116006)(66476007)(64756008)(66556008)(66446008)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?tvyUmxNn0awUpNZgDp1QMPXkGwLDwTt59NVJYeKrIRBrikFWErVXh3Uc?=
 =?Windows-1252?Q?uLQF8RKIZugPhb89XP6F//oo+yx+i5t6x9Bc49USpYw59XO75Vs7laKk?=
 =?Windows-1252?Q?FU93fOzlSDgegAN3vmWG3FpoSlKezU+kExIRbf+aq6O2oepGJXn2e6jj?=
 =?Windows-1252?Q?tzL9xeDkCaKW+D5qMiBNxmCJgxUFa8EMwPSDSDYNRSKuck8flFiTvSGn?=
 =?Windows-1252?Q?FEtC9jvaUyMa9p1CcuxRUxDqSdi+5UtQPLbrXj94H6EUcM1fK/kBrFC8?=
 =?Windows-1252?Q?m8yQj6jbFM3PPxqU74pdwc53A38duvNV0mnOz+2K9aQDKzaP1wgakvTL?=
 =?Windows-1252?Q?0fIw/xteUhV+ajBc0neh2pVQ6f4d3ILtwUjPDKyngnDXUUSo7nQkCEGz?=
 =?Windows-1252?Q?O6N2ouXAPYU5D21uomDf4qnqpmzy1YFfRxG8yWZ+pywhrKqrismXZoAF?=
 =?Windows-1252?Q?qmremCBnywiQQmZA3kmkV/quYwTq6qUvFUpSfOq4G8eD8d85qlD3K4Yl?=
 =?Windows-1252?Q?yLpNFL02XfKuulRMYU438sg12U5w5G5aa//gaRG+H1YD9c+AVXQKqJML?=
 =?Windows-1252?Q?7oEnSNjRHIH0gxPyyWDTo0NIRYDbC4FAOTfvEaTeWpjxBl7rwvNfXxG0?=
 =?Windows-1252?Q?gNa11KIQE9h9rxJqrmijTh6dNXo3REu9dVGag6CC/R+PzzsyC91WZgvx?=
 =?Windows-1252?Q?MvBYw8QHO55XwtGPKqFaTuAWXpEiAMDtAq2DugBmPqtCdAD5+WmP1PMX?=
 =?Windows-1252?Q?A0YSUjvvGoB3O+WbAi4u6dA5MweRlnbpEJH64jgdiW7k7kC2sdxJ/quV?=
 =?Windows-1252?Q?+gXNUu9WMbG81L0kyp1p8SNDbiH44TibDQPqPorUi0xlbvNSv61jdSJp?=
 =?Windows-1252?Q?CT+2jiy+VYA8x7/1lnFw/MGENgFhAkDj47WS1qbBuCMf698ur8kneLfN?=
 =?Windows-1252?Q?3gBbt/Ile8W0b6ey5qtBj5DoeN2e/rw50y7EpKaQ8KlNeoUDNzl8R6Rr?=
 =?Windows-1252?Q?fA859j8ac6ftve1e6eiunOMFV2Ttr3E4ZNz36cFuUWe2Sh23xOiTi0Hk?=
 =?Windows-1252?Q?xKNSFq8EPl19o1RowxVeCaz+S+d2qjMaE9B0FWDbOvHKCpGDlSuvu2sz?=
 =?Windows-1252?Q?cb/POUh0cvSmKwPXqq2XxYKysfhFwPXfn/ZL+iWhC6PxwYzoab4n92Wn?=
 =?Windows-1252?Q?wJt2IgUzehTDkVaZkPzuJFjl8X4Bp8NxTSbMHxqv+Dh0lbXe9+CGwRXP?=
 =?Windows-1252?Q?KkAObANS8KnmkoLvE6tG0LejgBhkq4ospC0GnOQ9QF0fy9Sa0PqPjj7Z?=
 =?Windows-1252?Q?2EvEyWH5VH0pDfBkaFkhff5ky/hkFY18Jws+utVb/VNHtvepafxF1ye9?=
 =?Windows-1252?Q?1cFY1g7gotwpUEE2O/bQ2xkc9UeF8cEZQ2vtFuRJR1FmaJ3tZ4yiV3hx?=
 =?Windows-1252?Q?2w/jGuppQOeZmID700xCDqwkOdf393S0EPefjTz6w3itGoQ3sfWFxTfB?=
 =?Windows-1252?Q?3ixGsPaYIh2i2mg/Xh7pvh1Z9fdajKERyF+7g4Gjl4h8wNNN3+3Apfo9?=
 =?Windows-1252?Q?8GWpA12AD/i2S9dp/oqos5MQxnj+xV0dTMzFgBgy+KB0YCyV5QfQXazc?=
 =?Windows-1252?Q?TK7U1Ceh3OaW3oJfwtVnPY0mfcVcKpDGu6WT8VHKrcfh4nA8vU+2D5J/?=
 =?Windows-1252?Q?dBrZnW9ZrkOb+qgC3hyFrJ62nZhtHOrjlhHQ5nULSd6Y8Hzl8bl0HG8p?=
 =?Windows-1252?Q?9yId97Ey31uqOgNeUgJUFG5Huv1jtc7gGTN17ULMz0XDzA7IlFh9QKOH?=
 =?Windows-1252?Q?tk0HoQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_YT4PR01MB98293522FFEC4031EC4BD7D1E8F0AYT4PR01MB9829CANP_"
MIME-Version: 1.0
X-OriginatorOrg: uottawa.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT4PR01MB9829.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 408158b0-2a2b-4473-6b12-08dbb4aa56d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 22:39:49.6954
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d41fdab1-7e15-4cfd-b5fa-7200e54deb6b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ziVrFJQWDY//vEWngNB4oKsOZQcBa7tzH5jQknhSV0sc3m8wfjKJU/MKrtT5jvvtBBHeTQFR6PdccaN76T1vEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT1PR01MB8426
Subject: [oss-security] Re: illumos (or at least danmcd) membership in the distros list

--_000_YT4PR01MB98293522FFEC4031EC4BD7D1E8F0AYT4PR01MB9829CANP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Dan,

I saw your email about joining oss-security, and I think it=92s a wonderful=
 idea for illumos. I am fully in support of this, and I=92m wondering: is t=
here a Foundation of any kind behind illumos? Are there any conferences ded=
icated to illumos or SmartOS?

Thank you,
Katie
________________________________
From: Dan McDonald <danmcd@mnx.io>
Sent: Wednesday, September 13, 2023 9:21:22 PM
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Cc: Dan McDonald <danmcd@mnx.io>
Subject: [oss-security] illumos (or at least danmcd) membership in the dist=
ros list

Attention : courriel externe | external email

I'm requesting membership (for danmcd@mnx.io <mailto:danmcd@mnx.io> ) on th=
e "distros" mailing list on behalf of illumos ( https://illumos.org ). We w=
ould join non-Linux participants such as those from Oracle Solaris, FreeBSD=
, NetBSD, and pkgsrc.

illumos was a fork of the old OpenSolaris, established in 2010.  Once Oracl=
e closed OpenSolaris after illumos forked, we became the continuing legacy =
of what was OpenSolaris's OS/Net consolidation.  Like Linux, we have downst=
ream distros.  Unlike Linux, illumos is more than what Linux would call, "k=
ernel".  I know that Oracle Solaris is already on this list, but we are not=
 a downstream of them, despite our common ancestry.

For now, I would like to add myself:  danmcd@mnx.io.  I will be forwarding =
under separate cover a copy of this to security@illumos,org, which has part=
icipants from distros.  In addition to being a member of the illumos securi=
ty team, I'm also the lead for the SmartOS distro of illumos.  Other distro=
 leads may request joining here.

I will now address the eligibility guildelines:

> =95 Be an actively maintained Unix-like operating system distro with subs=
tantial use of Open Source components
>
>     =95 Have a userbase not limited to your own organization

illumos certainly qualifies for these criteria.

> =95 Have a publicly verifiable track record, dating back at least 1 year =
and continuing to present day, of fixing security issues (including some th=
at had been handled on (linux-)distros, meaning that membership would have =
been relevant to you) and releasing the fixes within 10 days (and preferabl=
y much less than that) of the issues being made public (if it takes you age=
s to fix an issue, your users wouldn't substantially benefit from the addit=
ional time, often around 7 days and sometimes up to 14 days, that list memb=
ership could give you)


There are people on this list who know me from one or more of:

- Old-days of Solaris inside Sun

- OpenSolaris

- illumos

who can vouch for my record here.  As an example, consider this (migrated f=
rom blogs.sun.com) post from 2007:  https://kebe.com/blog/?p=3D413

> =95 Not be (only) downstream or a rebuild of another distro (or else we n=
eed convincing additional justification of how the list membership would en=
able you to release fixes sooner, presumably not relying on the upstream di=
stro having released their fixes first?)


Per earlier, because we forked OpenSolaris and Oracle closed it, illumos is=
 the most-upstream in this sphere.

> =95 Be a participant and preferably an active contributor in relevant pub=
lic communities (most notably, if you're not watching for issues being made=
 public on oss-security, which are a superset of those that had been handle=
d on (linux-)distros, then there's no valid reason for you to be on (linux-=
)distros)


If you look at the illumos mailing list, I've addressed a few security vuln=
erabilities there.  E.g. https://illumos.topicbox.com/groups/developer/T13e=
f186a53edeb5c-M821cc18b5884e04e16daa8fd/cve-2023-31284-buffer-overflow-in-d=
ev-net

> =95 Accept the list policy (see above)
> =95 Be able and willing to contribute back (see above), preferably in spe=
cific ways announced in advance (so that you're responsible for a specific =
area and so that we know what to expect from which member), and demonstrate=
 actual contributions once you've been a member for a while
>
>     =95 Be able and willing to handle PGP-encrypted e-mail

I will abide by these.

> =95 Have someone already on the private list, or at least someone else wh=
o has been active on oss-security for years but is not affiliated with your=
 distro nor your organization, vouch for at least one of the people request=
ing membership on behalf of your distro (then that one vouched-for person w=
ill be able to vouch for others on your team, in case you'd like multiple p=
eople subscribed)

Per above, I believe someone on this maling list can vouch for me.

Thank you,
Dan McDonald -- illumos core team, and SmartOS lead


--_000_YT4PR01MB98293522FFEC4031EC4BD7D1E8F0AYT4PR01MB9829CANP_--
