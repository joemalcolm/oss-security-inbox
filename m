Received: (qmail 19754 invoked by uid 550); 9 Aug 2024 12:32:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32312 invoked from network); 9 Aug 2024 08:37:42 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCMTYeNcHmOGLLT+Mcve9pATTF3hkav447TCkqwcbRlSdxxXmgzCuu40vg3wm3ZOYV/60i4/CKjWhg73PKTW/qXXVmwoxz8acFuOOy7JvKVFyb7Ukov1J7eb7SGbM26JXi3kXQgahEsrDpV/z6Q3QLGfeqZfsPoXpyEY6XZylcjfdeWos/uY0iqTYJYHzTrC4WaRpzpt69BIImqy4h0U6wsMO3WhqNwPR2p9EiNb5fh+6vPQSUtP4Vtv1/fzn5f3H+PBTfkVcmf5QbYUfE+L8VS/W2rXfx+uvOotYr53i40lTTJRjBZlT5zAp3TbL80RYqkmiZJBRmqi4ZN1yyx5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+oVx2+sj/r0MSwgaBFkWj3EUrEHlwEe1dxh8Ns1mR8=;
 b=Up5fXPm/aiNmpoPCPT/ydw15UqTXSjAh5gK7Sq0QavRpXzJ/yD1anvYh/RCIr8GA8TTnCg1wP0ZI0JFlo7/D+9UyrFgBJII/FGKBNUwXpWODCJru0kqLPuw7pREunLjuUvz8nw/xL0mL7MxeUHffvIEhHNwVVceMsfjcj8jdLfm1UZsW+t+UGLK9JCodWcwmBewPr/mfgmKN/7Tr1NVo0qja3uAxlDSelGC/rRoV/Ww78kzCo6tsiiBq8bgsrL6GWn2XqAsd1Kk2kjUmF7mEJL35IJXcyHLWW6SmnGScvHrHFKdeVp+czlenZHzwevulPSPCLe9a75PSNuafMeiMYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q+oVx2+sj/r0MSwgaBFkWj3EUrEHlwEe1dxh8Ns1mR8=;
 b=s+H7amK89BsuPdk8TSWCr0lq+CMBTgUD2k4Od18g2Ebnd5Yh7DtCtu8+0KT0BEPUVJZJdPK20Na4//Ts112eQHqoVAjntsSFglfeRhcvlD+UCRhKbM7KtkHrwU8sGN2Tjni5OZOOn/+d4xCK3SjU1pN61WSjOXCnDHjlSIT218AQN/QCYCLJIjjSJX9yQyRgv6MfLmIE/vGN6SlDGm5NZaKqEsL75lZEj1KdEWYVUiCvL8X8r9HTpgWFT/6W3FG7PFUfaxvMIAKpO//j51CH5gGlq3CWWDEyUUdO6DY6hD3lRptkovRriWkfDjGoZ/yhNQPrKYgEKZT3poU8+EGzwg==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1
Thread-Index:
 AQHa5/PQ5IYqx7MyhkSG2U2pFEx0vbIaVjcAgAA8RACAAU0xgIAANFiAgAAHTgCAACIzAIAA9HOAgACKAgCAAB7FAIAAw+sV
Date: Fri, 9 Aug 2024 08:37:28 +0000
Message-ID:
 <ME0P300MB0713B2849ACB451ACDC81707EEBA2@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References:
 <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
 <20240807201640.1RD27ogN@steffen%sdaoden.eu>
 <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>
 <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu>
 <20240808205540.267A1153AD7@kent.sdaoden.eu>
In-Reply-To: <20240808205540.267A1153AD7@kent.sdaoden.eu>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY0P300MB0676:EE_
x-ms-office365-filtering-correlation-id: 7c7e7b60-699e-491f-e02e-08dcb84e80c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?vqYyNvQD4/9KZd9wknb+vKdR5h8E30uoE3C/N/aEGQWh6XHDfNSY1UMvRI?=
 =?iso-8859-1?Q?oOXDRhgy+PUWugnKFtu5uJGwkgV43y+pD1xHUfmjXH1FVLTnQ/gr5wgpz6?=
 =?iso-8859-1?Q?pangGS3BNShSe94FdLIm6HOvLp9ZyquadTZ2i2ustgJzC0Pgf1Lhvm1ZP7?=
 =?iso-8859-1?Q?vE7hi6xeu6fyGNL7agyJHmmMCrPDPfYiSD1UHEoecqF8z1Ein0orkPwrCH?=
 =?iso-8859-1?Q?Ou5kM5WREhwoHn9aKrPEydMd8tYk7N2bZxlY2F1BKjP64s21MahckvxTRd?=
 =?iso-8859-1?Q?p1tY0QuhdBnFKP6+f8VcifEH4Ik7IICRic6KssT47qA6bXxMsGuHS0wPNe?=
 =?iso-8859-1?Q?Mhpx3hSniPmwHJ+89UpgrNbQ9rIoH30oMiwzNqpM29qYe8V9mbCoKUjr9R?=
 =?iso-8859-1?Q?pyZq0J1ET7s9aestKCXzXX3WvaQEYuYdVI5rdI99/oM4iPgRIxhAf9I+sB?=
 =?iso-8859-1?Q?Nzs4KBzt1yPv3oKc7mGvNm8aXjra4J/LaPGi1MC5jNR49ITX1qRe5oIIAC?=
 =?iso-8859-1?Q?nb8dh0JL0v6mMRm7Ukgculxt+Wxx+1zZmtkvEsmQDQnM06J2WhabZoe8KF?=
 =?iso-8859-1?Q?b4K5qMosF72RaN4iVqDeWJrahPAl8dbd7cQPym9xPyTiu9iLImDaqmWQ6f?=
 =?iso-8859-1?Q?jcJMCfT0b2ouXB7fjVqXWXkQie1wgpy7WfRxllkGnNFlfk0IDUdlSLa7d3?=
 =?iso-8859-1?Q?nG85DzJDHlDDVSSs4CZGmBGp+MgPRj7kJRB4tI6mkFUulL9tikHbxOXbI4?=
 =?iso-8859-1?Q?wScXankJwj11MrNVSUfq08yM3oArpOnfS8uCalVkjSH/HGjv94Hka8cbAs?=
 =?iso-8859-1?Q?cz0SgWD48LldZOE2A5V3QtD10GKcyMSzNpuAD0VgODr5lvsFHR+pTBA2LJ?=
 =?iso-8859-1?Q?vUnRwHcpGTRN+tcBEPYpSLICmFRkFZg1eVOwIkuoF5z6TskLEsvlRv6cY+?=
 =?iso-8859-1?Q?P0n/i2O4DUTgjzSriJUp+4me/Hldfs0fy4o4eHwcAeD8HdKoSfHMagA8rN?=
 =?iso-8859-1?Q?ANQD+/98BAsK3S+eErCZuMmPbQHRijl0nNb840lV+keKDesEWE7BauQwtf?=
 =?iso-8859-1?Q?vHkJPWThLdC8DnyK5OPMxt4GdFMJkslCJeVAusuIdKDpK2rdgxwHwA9EtM?=
 =?iso-8859-1?Q?U0XeM24nqVqVEGSqupNGcrP5piYa4CXfxmRj1qp9eFSZtXJNdokU4rvJQI?=
 =?iso-8859-1?Q?JRF+NTlJaCubMvgKvWbnYrlVyzEeQ7G9CmwIMOSfjXrvJGFcnHDQClHaqo?=
 =?iso-8859-1?Q?G0pnoVJoDlnlYdPVrbREpz8ChefSAvkWqZK1Mhq95bT3jcmV3iG/MCt4zA?=
 =?iso-8859-1?Q?X6OewI6dTMviWh3zJa3XmrAnsxz1HG82bmCiJDDbdnQ8w1GcN2OPX99lKB?=
 =?iso-8859-1?Q?NOwo2fNbuO34bWyBm9hMcIrRIlLnis+bFiMFCsxESODjc7AooP7vo=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?hUYFF8rcviTZppQoFPqUfzfwV+m5No9u1+cLXX4Yn1csPyUffFRp7SSwSl?=
 =?iso-8859-1?Q?MpclZAlqSaM8M+0z9OPiA3+2XlUYveK3/F9A39cEVHi+J1TnKpxfSeP3t8?=
 =?iso-8859-1?Q?VfuklpFhlhcnD0YJwoICyRMNU4TxXy6ZW1iITKpbNwnv1X8JFpsgy8ETHE?=
 =?iso-8859-1?Q?SILHb48Y1tCP2ewbt+zO201JvTri5swGtSNAgeAugPvxtbtbgxU4jcVhV+?=
 =?iso-8859-1?Q?cLHezjeQurTjcayxv729T2Y4ys2NN7YquBkFGWT8oaq6z1WKn7F6oHCFi+?=
 =?iso-8859-1?Q?iTmIvquqg4uAQMGnM+VEbLa5mUBkxU6Rmj7Wehfs4qmst0E3YcgdYi7UE0?=
 =?iso-8859-1?Q?OtYInSCtfbzRPCFvsh4SkE8BeQIAsCymRLc/CgJ2wINeXIEYTNHnFeDxLC?=
 =?iso-8859-1?Q?F2x3zd14Uxg2VZbUVOqrORTmWCJdqXKfZST6WlKO5IeH6Qsh57iNLlWbtR?=
 =?iso-8859-1?Q?lx3w6HM4XbADReqpgh1Di2o16rBW12RnZTnYZwULN3bFJnS2KLtZspdFdq?=
 =?iso-8859-1?Q?k4gq1U4yeFYV9wM0EXGbkGXmWPJZ8jL4ViTJrshauP5UEOs35zsWdJ0ScQ?=
 =?iso-8859-1?Q?ceRTEhPF6EQ7dStF0Gsn62I0CvvIf4VlmQyy5F3qrWJdFqOOrtynrO8HZF?=
 =?iso-8859-1?Q?Q6H4embpHesfTMDAsVxhmFbVE4zpuDHY8pyd/DYiso0ubXsrZ82cId4oMv?=
 =?iso-8859-1?Q?oL51O4SxDLE9qNX7fTPqE2AfWLhivkp/BsncMtHp2QKTRKtMTbm++AWGac?=
 =?iso-8859-1?Q?MoG9ZbzkqvSBpcVay5VaUoO2NKp/6J4lsu9PW/x2rX83PsB7YTll8GLLsC?=
 =?iso-8859-1?Q?+2PmcyxlsrdYVywKNTEAgE2957RIFvhKYcLPj+TrpJaTNcHdBlLcHvKdeK?=
 =?iso-8859-1?Q?KMO66eZtIharJOO86gBmF8Eih7Cwk+iZTrRcgE/UvI6a4L9yBxr7uLRP3/?=
 =?iso-8859-1?Q?ZIsQgSTnQuRsrI2Y4ZhfqaPD8Szp2YfFwsQEhLXPyLCcJorKswJ0M+Jgnh?=
 =?iso-8859-1?Q?sZy3Cz0xTCYfHoDz36R1oChSoZC/R/pqd21eKUmydHikOew8f/fcIiQjSS?=
 =?iso-8859-1?Q?12b5BpkDu6bVPfhKLKqjTazSyMZQwTSHBrPOTNNiKLlOwjtGV6SIILH5Z1?=
 =?iso-8859-1?Q?f+45/cLPSks4Wp/Cv9168eHNZFAIpJGNyCxVmMttN/MHuY2Aee7BuYSWc8?=
 =?iso-8859-1?Q?mcvPWVt+o4FXUvVpleNMgaL7+wFZ1J/z0IS3iKEssOfwFF82ddEBB8nDrQ?=
 =?iso-8859-1?Q?Si+PKCF/eIXDkBQhk2EwO6Ztp4SqNgFGfhd7OSyICuGTL6Okjhp+goX1LM?=
 =?iso-8859-1?Q?Fn3XfTsIT6osP7srdZsMm7DFtZZwqMgCP+qtEEwtmNDKtKPLaL3FM4+53K?=
 =?iso-8859-1?Q?YF8Nn33vQDvvcXutiOrdO6unQ96Alwudkv/WVkeoRy8Ry+yhxdgsSDQIPQ?=
 =?iso-8859-1?Q?bBlbOY3Fm9Th4Ps/nhy+9kGu+TCuzdtL7q6hhTymAZajd642sWFDeWhgPT?=
 =?iso-8859-1?Q?LGI0iYRx/XwWKJzJd2cyExXmtdvt/HQexiaratj1GUGpirdBMaeYzbondE?=
 =?iso-8859-1?Q?waQGv/bp8CKmNi+McQv1PH+m6sK+Tt7omkXu/jXmSnFpgg+KYhPUL7XeBg?=
 =?iso-8859-1?Q?F2GQwGXBTuz7rlZuAQJ0FT38mf38Ik33A5?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c7e7b60-699e-491f-e02e-08dcb84e80c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2024 08:37:28.6662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oxWCO+sjAaf5bZnbmjsB4EzflYOULc/ueHwuVlR9w9JFq83jSHTQ3tRJwDvOmOHDlCjuglQw0Cx9B8QlRSwbWmxypOvjyf3bqLbKbLE3s/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0676
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

steffen <steffen@sdaoden.eu> writes:

>That is: whether "vulnerability" thus means to create a fake packet with
>identical MD-5 and SHA-1 hashes (it seems TLSv1.1 always uses both
>concurrently, at least for RSA) as the cryptographically verifiable one th=
at
>ships with the packet.
>
>It seems to me this is hard stuff, especially for "the occasional attack".

It's not just hard, for TLS it's pretty much impossible.  The collision
attacks against SHA-1 have been chosen-prefix and very much offline which y=
ou
can't do with TLS.  Even then, it's only the handshake which uses SHA-1, the
rest uses HMAC-SHA1 which, even for MD5, is still secure.  Finally, TLS < 1=
.2
uses MD5+SHA1 in combination, which no-one has found an actual attack on ye=
t.
So in this case TLS 1.2 is actually weaker than TLS 1.1.

There's also the issue I cover in:

http://www.cs.auckland.ac.nz/~pgut001/pubs/bollocks.pdf

which is really about quantum cryptanalysis but also covers other attack
types.

Peter.=
