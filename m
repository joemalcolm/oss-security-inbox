Received: (qmail 27825 invoked by uid 550); 1 May 2026 17:12:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28011 invoked from network); 1 May 2026 16:25:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=lanl; bh=eWfr2
	j+O+C9vCqB5gpdbeEq7AH4PCRDF6gNtGQMuvc4=; b=P9Dyblxddb92w+sgOKbLv
	2hSN45zVwJBqxwAbYNQNlWy/PefA+1Np+VGzwrJLn7I49Zg1WGrRt7HUgzUTtlkv
	dd/5+icmhq0cABw6OTVAVrQHDDNWJ99MbYCnWBzN1oZnP5/ztrg22+WdAegRyUIf
	Olz5fmU3ECtJw4q7gl//H/+1rSUR3ZO1V6TfIz0JhsyOR1VE7LJU9TwhVIHYvoXu
	LgTykyuekcNQqCS60KNdP/QwVDF3EOfFmgQkWh0/lRx2q6pj0b2YzjD0fYKzUfV/
	ia9BAgUbGjb8uDRfEVHXtO0sccB0H09tjZ5TCAQPN9yMJbKHzJhKhtj6PmqdITRt
	Q==
Authentication-Results: lanl.gov;
	dkim=pass header.s=selector1-lanl-onmicrosoft-com header.d=lanl.onmicrosoft.com
X-NIE-2-Virus-Scanner: amavis at mailrelay1.lanl.gov
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rROUP5OXG5xf70ERAafWAuD/4b+/ml0+ScpSohjRUGAnuknRF0EYcSFhPEG0/rJedADBrQKdOKKaszxgSTP9VbGt2WAZWADTHzA7FQcMUXjmekCJ7O8q1TYqQHO0bcyKrIKS30yfjSGejCI8pJ9cpp4zWXvqSvsu/npVWGaoAinwy/vw/7P0ZEOIhszo3cPwYE/eHuDUIMZwXE4PXgV0fDyCzKiIlbiwWxOIO3lcnrnbUxcX9po+qw3zxCTHNoyMgcRGIWpyRAADh7wWpAjR6bAf9v0gln7sRjzvEOwluSijnPJGbi3FEdA+VsnEBAc0uvpIjfLba+SkSfpATg1TuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWfr2j+O+C9vCqB5gpdbeEq7AH4PCRDF6gNtGQMuvc4=;
 b=jx7EjHaekn1z0tmUwAQ9x1GIxnO+a6rAK+YCC6I/U2oBAktX86N6gtrsWDhyjSZuPRs8S2k+JnoTGXIdHyQy86WnW4c9K5iBBBnWjkhXHcOSLFgVq/OkznS/SrUh7Vs6Lpqxo3bx9Zt8wjoN4qou3w5vHwpSxO61RXUwoKf+FVZIrWh4fgFJtsaED0T0SdE0dKh2WL7Ppv7EIVGRjBkHOld7O6TZ2kcn9IKN7S6z6TPoixrPiyRtX5RorLj+U4UD/JbxMXhUmM7EjEBJ4UZ7g148CoD7OUvYpGDrTWPp3ujMqkqDKVQbKWAPtZfWJANTadIOI8rBBoAIv+ZWwscQ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lanl.gov; dmarc=pass action=none header.from=lanl.gov;
 dkim=pass header.d=lanl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.onmicrosoft.com;
 s=selector1-lanl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eWfr2j+O+C9vCqB5gpdbeEq7AH4PCRDF6gNtGQMuvc4=;
 b=aLVu/hXx2R7+1QhgfrZUSSv+wZXXz3W8Dt+Aipvu1eqsyd/zy5g2zam40P00oWy2ahuS67HIAQDyqYr9q4rTrLbhKBGNiFszs8kddJ525V0yesHEKgoOFMm4BIPrsnWB9WkZK4QWY5ET5y4jR1w/iWz6nLgohxgEq+D7cT8IpoA=
From: "Shrader, David Lee" <dshrader@lanl.gov>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [EXTERNAL] Re: [oss-security] CVE-2026-31431: CopyFail: linux
 local privilege scalation
Thread-Index: AQHc2CwwBhoTl/2+A0anIJsnfK09/LX3CfyAgAAj+QCAAAPNAIAAAMeAgACpq4CAAWwqgIAAFCeD
Date: Fri, 1 May 2026 16:25:05 +0000
Message-ID: <BY5PR09MB581282F0FB431D66F9DB9A5EBA322@BY5PR09MB5812.namprd09.prod.outlook.com>
References: <afJorKIje4O6dXbH@netmeister.org>
	 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
	 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
	 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
In-Reply-To: <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR09MB5812:EE_|DM8PR09MB6470:EE_
x-ms-office365-filtering-correlation-id: 93cad9fe-8d48-4945-2f1a-08dea79e3413
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: VdqoPMmAM+iThdUWwMIa1V7uKaRt6QEC9EOIIxBAZOUdSkGNXcodtE3mAyR6sAJSKxmoypL4JSV47GWze2DQtV5+uMWJ9p3ut51k+vJzhhDFcw1R6Y+QEd4/Cam1+EA28+TY/37acs3PbVR0ys6bwuZpcASJJaYWXrT3u+/H7QFen2flC0NUkgCT9MkvUFNbE7gwnJVl4mrb0HPeNuOnCGp2MIj6C9xINgQOp5RsHLw361TI6tN/rLkreJdAZtBJoDznbYfidMa4DLTZ3/lyxjj/8AlN77ht7sJgUewwyQhGPKQfAZg7qfJVZUfdC2AFQjN2Gjq6DOA0iP4Nj6V0ogltt90c69kZZ1+c5WNZK3V08+93aL393Hqpv1XqIn+4foPoTCF2FgAAdk2Wq9y9YQuVDHDw5TBa7XXvWBPJD0/nzqydTKfg7m+SiWE49XBxoxlq3Vv0C23Se6My3D6F0vRbINl0msq+HqGbH386639RuzT8Nn37JDlZ60QZyGmvos1TAE0QlwHIhMpT2J2W5z9YmkfFJ+efPBOPjxKI77hPMCABkX68zPXBVFmaizkzm1BRQmoJCdeMtHmCvMOys93jU4LXub4FXUs8eB3hhlW7tqs3NQf2vR9Y1Wxv90WKahT0WklUCaKuUfusLXs8aik6gxFRSBO2GKS0EIkN+vYV18YeM+JerijSOjawbFxSHSYmZGiml5a2BDpyAvEpZ76dERBgxBQEIcaFYrojbIMNwiCPeEb7xsMBUb/UOTBE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR09MB5812.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FkJDCICPwAtBnnC4R2Kq6/qfBn5aQft+IygE0/iGf4NPVTt6kZ5KMWv3It?=
 =?iso-8859-1?Q?3GS0PxBdnNckZuJ9eRJfhYLmk+6haRrplT6VkkiVVzY4KCEJtKKtDx/eUO?=
 =?iso-8859-1?Q?3MTmIrMZCh4H+1QSIMJ2VveJjvgQETTByhVlE8IrZszHpMtx7XYLXBh7sq?=
 =?iso-8859-1?Q?L3/qd13m2q/eCsqr1oC19BwrI6PZlmOIdGLSfrzcVVAfz8z+DY+O1PBVXT?=
 =?iso-8859-1?Q?kc9TczWl6rbuQ9fZvJUaSSgadZO5iIV6X0lBx38s8ud4IG5U8vC526iYSv?=
 =?iso-8859-1?Q?9Y+3N4y0oMufcXAwXDK+t4pIP571QKwwDR1mivRJah1D7mEbc0IkuKBvpL?=
 =?iso-8859-1?Q?ReIyyVMVk4llNw4LQOq4xq0C4ux9kIEDF32vnM6Fu8m5y8ael4zGwhH1Oy?=
 =?iso-8859-1?Q?KXHISGot6yCcPjTtlUmSCaQhA8XMsLRP7netELQLpjvkUAV/O2ImwnG7KH?=
 =?iso-8859-1?Q?T1X9SbputI1otF4cu4AGg642c1ZagswtmX9lrTX9pHSGxL+f/T7c0j86GS?=
 =?iso-8859-1?Q?SNXWHNQbzrM4BKOfsInNC20injipjoW9hfl0ibMHHVQ353wRbtib866axo?=
 =?iso-8859-1?Q?ERn7EfcgE4Ost94pxt6U48ugLfFWnrtgdc8P4bEJT40Ob7iXqLGapIkuFb?=
 =?iso-8859-1?Q?Nkh3iAcv8j43YD1p1NGhNRm/8Rle9hucnsII1WInO5455ucuGrlHGrMNYS?=
 =?iso-8859-1?Q?RV7EjsjTCjboboa1M0k/s2RLpJQy1t2Aunk+cH870BtlciRrpoduu+3NWQ?=
 =?iso-8859-1?Q?sgXu0D+oapJ4lwBN0pcNLkrbBU/RTFoxua1zKv7Iry7zC0URM0aRImndyV?=
 =?iso-8859-1?Q?Hew7POg1HFBQEXQhqv/QGu14OVTH/qNYGSiZTqp3y5K9+inOGolJvPiVQj?=
 =?iso-8859-1?Q?fcYlcjFlZ7KYnvR+WDje95Y4/FQxWF02nZwHMJcfdSXaribBIOEEplz8L1?=
 =?iso-8859-1?Q?W5wOMEcl7qRmQVdoX37mxAEmU4A+iPR5a+KedSnvEy4owh7xMSW6dcx+Om?=
 =?iso-8859-1?Q?UOYUPWMwwAErD3tgnaVakF6VDlPkHhZZqe6Y8BZRes77iHCjQHc0vvKZOl?=
 =?iso-8859-1?Q?nPQr+p/0YzDhMQw4fPHr4amxTsaR3Fh0yeMFpJyWdzsPaahR3f8Zj0Flvb?=
 =?iso-8859-1?Q?mXyWVeyFN+zMi15f2dNMs4ZUCbiGW4eqvZow8jj/leaUIygWeOK8NIJ32m?=
 =?iso-8859-1?Q?dF9ojJBl1uwQR7oeVtk8BFg06WesNKF1fgwmyTRERc2uE8koxBzxwScCl6?=
 =?iso-8859-1?Q?J62VWVGkWCORqxRHKtNogy/4lheuD5E6dbPpR07jDsRguhvhQ2NdtuEwd9?=
 =?iso-8859-1?Q?fuxs/Z8yoxANYTHhUsKgOroTLD1OVrKYHJhVJX3qdQ0/CT4onBXc6hB/PB?=
 =?iso-8859-1?Q?93JeDmgoEtlfsxoj10ORYWmNUGqr1uR+tX0U5lkaZypfD0Rkv96Up94x6/?=
 =?iso-8859-1?Q?b3fZD+x5s54ee9IW3/my7ALFINcXMH/eyem0n9kDL7/TCwsXCAfLTvmrC6?=
 =?iso-8859-1?Q?T5sQk9jQfuTC3Fq6P8RsUoHyyiYpHT5V5gJ9+2xbxmCYM3eANpVmJJK6E4?=
 =?iso-8859-1?Q?54Tv1C1RR6658pjssd05sdG/59cevclde1x9IFABSNvYEDVljBOMVJbqLN?=
 =?iso-8859-1?Q?MU4XylR/OpfTknZqwE7Dz66fbart9EpgMimMsjgQMNfLp78y9Hu46Xuo4S?=
 =?iso-8859-1?Q?f+ZVtwqQbmDe+Jt8nhImjMFlaJOnGYhgSaPuX580RDv/5TwyE/rZZk1bD1?=
 =?iso-8859-1?Q?XZhsjVfci67xCzgCpOnhlBvc/kz6Pf0e5NglcLbdpuqPjv?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FLiYOFDY+TYhFB1SG42DvbNE4Re7t9f2fOk+OBDPw3AIItEoljJzW0DmqxJBc//Q5K4hRkhracYEIE7jfIKpHsM1wA2JNY9v3BODpw8mqoXTepCOST1Ah62a/fP2b5CmdWM0TQXuIA4ZxThofeZwEiUPcZyRJoZ2G3m+TPIceqN9b2K7AU7eSC3wHVGpXJRZZ3b3Tx4wJgK/tahlN0LDgPlYZdBKyP+vzGFFTLNfVKw/ILh/efN33JCffjm0XKKNOrxIXOlG9pX5Eg6b1DH1IJCgA6JX7V2JbB1gW/bXfDHnmVL5OhJHOmsIWqqpx5Tz8QQ6HqX273PgjahhvO+PnQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR09MB5812.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93cad9fe-8d48-4945-2f1a-08dea79e3413
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2026 16:25:05.3211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5216f00a-5b2e-4784-b2d3-ed19b748fd60
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR09MB6470
X-OriginatorOrg: lanl.gov
X-Proofpoint-ORIG-GUID: ZhlZvnjYKS9mHiYWVmIBv7OyqjvMXn8u
X-Proofpoint-GUID: ZhlZvnjYKS9mHiYWVmIBv7OyqjvMXn8u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTAxMDE2MCBTYWx0ZWRfX/IdbM7VnyD2U
 xOLfVgaXrpm30Zfoxhat1qPnKykQzLfrH0bFAa+WclA7tiWm9UIbabHiuOjlVjqOxLtUNUH2oI/
 urkB4yB74j0+ALZUhtZWrRBNlITvJUqR10hXa2NE8POqA0bCxgC45st4DX3t/qqoDK0ANuXKVZ5
 8pQoeOndF++x7x2sLry7ShMNYl9DKYb8bMPMTJ/ZxMC1QqvDOo7CY77rrha9YhcpL3H92F0c6SW
 Owsy1kSmPM5A9DdOGgXGjAcvMmwVRbaqQya1E6MmL/Lzltn8Cy2B48+M7EStdmk6XdTZXKCD/Ty
 9JK4pYKFC9Bs2yjw/0oX7j2+mMoGW065BMB7IeN9HaNb/+53/SCW0URj/VI5a8zpvJa0HnXaBd1
 PjStxqpP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-01_04,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Reason: safe
Subject: [oss-security] Re: [EXTERNAL] Re: [oss-security] CVE-2026-31431: CopyFail: linux
 local privilege scalation

In our environment we found that user action could initiate the loading of =
the algif_aead kernel module. It appears to be loadable on-demand.

Thanks,
David

________________________________________
From:=A0Reid Sutherland <reid@thirddimension.net>
Sent:=A0Friday, May 1, 2026 9:08 AM
To:=A0oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Subject:=A0[EXTERNAL] Re: [oss-security] CVE-2026-31431: CopyFail: linux lo=
cal privilege scalation
=A0
On Thu, 2026-04-30 at 10:25 -0700, Alan Coopersmith wrote:

> On 4/30/2026 12:17 AM, cyber security wrote:
>
> > That is very terrifying, is it is 10.0 score?
>
>
> A 10.0 score would require that a vulnerability be exploitable over
> the network, without having to login to a local account on the system
> first to run the exploit script.


Sorry but I'm having a hard time understanding the actual threat level
of this vulnerability.

# lsmod |grep aead=A0
#

Does anything load the vulnerable module by default or not?=A0 If not,
this should be low-rated IMO.

Is this a big test to highlight all the people that have no idea what
they're doing (about to find out if that's me)?=A0 Right now I'm seeing
people blindly copy/paste an advisory with "RHEL 14.3" in it.

