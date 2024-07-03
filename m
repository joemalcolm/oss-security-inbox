Received: (qmail 1131 invoked by uid 550); 3 Jul 2024 11:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1113 invoked from network); 3 Jul 2024 11:27:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=7ydmiKpIuNeEc0gzIZQAl/bdJSiehC7D0QX/q92PWQg=; b=gZ
	1YkNtobK3ikjfgO+JsJSpA9yQaqbzHJDkyvBlMRo+D9yHdDKVWNISoerwKk9enm7
	vC1Ll8Edh9yuMPFjdfQkXFi6aepdWoSKMWtajmZHyONo2aaLifxqf7zzwjqQMS4c
	Rz74QGkTowlgQmbduVlXz/aUi+R32ogr9/2DlpfYhBkb8mfoDOZ92oQacUjLcRp4
	6wfZvY74HtPEiOK1OpNC8bPcno2tYLqHUtgLlWCgz+CKlYeMUbyH+tvrtiU5/DI7
	TPwVTPbbk4OcLFvb1cUOaQdA98ER7mxSaZlqIx38nThfL4gC7uAYzvPgz0nf+fJY
	aDaNZBdVJf5F2TD8t1fw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epS4/hUAm5hZG6uFZehu1E55sssjeZ/BYt9LoxFvuxsx2QllkboA4osBtQZHryIJkngD0BdXPL6smUgpDmeASbVJ7J1TKArQ1zGplAFEtY7il2uywy+AtlFzvSbmknLBoU5pRwtlyUYPbE8HQamQjH0pAwJFl8cmQ7cxAK6SwxzrCTfLQcwuYfmYvSG7Mwl1YVRLnVsBI4f1B+E/18cI51JEPNCfRf36wg+9aYI4GaS7vfVrcWp4QXYOrwiL9D3CdkHJrA69bJ2uwlPi03onp2Ixp8QVzDr8ftoo4OkNz8/nY9vbufqH7B9QNBhz6W+sS0b28ZQWpD8jhc8bN8ty/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ydmiKpIuNeEc0gzIZQAl/bdJSiehC7D0QX/q92PWQg=;
 b=WlVCKGOFTjmKEJoh0NmGTFaYP+iUTrqwb83tV9jXCJaYN4r0YkHQPn8ZeqS9M18BiNiWMv91Tt/bmiEeJIkfuzVpW0BN3RYcoJis1FVCRCxgsXmHDgivq8x2U17VG/tJH8SV1IvccZ9iammTXSJuV4Tq3wvVD1WkuGVRhrWeMXHdEMwQEJDijZWttBkcYWLBUlsuX3kAcL7auGRcqD52JUh4ObUpRPapLgkUp0q+t/7d90nvY2u6Y18Mn17WGS4/5nBexNoAM4NjbEOqYDEc68dlA7ToVAhtPI5up8YIQMUiRH04ziOcJVg1PMIAEzQZIVi3f6I89weGDhGqpB+86w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ydmiKpIuNeEc0gzIZQAl/bdJSiehC7D0QX/q92PWQg=;
 b=dGLsynn37AFghy1JHXk1Q+49pTAM2QX/FlLpjdBYjLQaJ7h0wYVQl4s83gLaAzaqOqzs7cW7D6wTzOy7D1XuXt8nctGGmifWXcTzgectmHNujOVq3UJmtdnMlBasfhd0RwqFaerSEvo17CXoPEcHM3bZITc+Hmk8z8N4w8d/N1IDvvAk2Tu5mQZL2NjsUsZ1Ea2/E9mDb9u49erSUtwoMqPUI4ff+zmgcObo2rXYi2Zu+OHnuOX97FfC9a/rss/VTEVbOuXIZEiEK4a595Jo3oVesZ+iHYAw3OW1JmkJwYKxXWnRW+Av6I0No3XZM792wF5MEFk48L9AmzfhDlkaPg==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2024-6387: RCE in OpenSSH's server, on glibc-based Linux
 systems
Thread-Index: AQHay5JGa9eb3rAM4U2ijmTpt4nx0LHk4EGA
Date: Wed, 3 Jul 2024 11:26:54 +0000
Message-ID: <20240703112525.GA8740@localhost.localdomain>
References: <20240701083838.GA12787@localhost.localdomain>
In-Reply-To: <20240701083838.GA12787@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA6PR06MB10422:EE_
x-ms-office365-filtering-correlation-id: 4ae24f60-5c05-4944-ed62-08dc9b530a85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?gXp35oaHxLcb2xywAuibJJwLbKsAWpuwoxhy8DklSZufUY4wgd1lRuO49Y2j?=
 =?us-ascii?Q?JbxDL3fQZVgeuiTyjTEShMf7H4bjpACBI8rxGleyOM+HJdnuAMIdQqRMWi63?=
 =?us-ascii?Q?LgApH5El8c/3fC4yb+I9/RVPeUHpahtgbq3TGZyWHtc78I4SVAxyTLzPd4rX?=
 =?us-ascii?Q?AFKiFlPUxA/IBFJLhoKehZz2leuZ0rknmcgySLHUx3Uofn0ksBRdJvADj4FV?=
 =?us-ascii?Q?vw0kIxAgXUwys4BStq98DIVWER/UI5Oea9XrL1v0Tp8++sk0DuE4CPosIDDh?=
 =?us-ascii?Q?oh4L8iIaxrW1rryBvP2wT5cP4y5JEPmkTJn+XApKwsC3xicZpcDYKqRSynMp?=
 =?us-ascii?Q?+lRhz2dSrQkW/6RSLBA9UrmRoqu/LD4hbb8pbe2T7heWJiL2mLaCBe2iMOjb?=
 =?us-ascii?Q?qCfeVDTu+NbXInrlap1cVWYrqFbSff6mQlzM1kEanUrMaaiGEY+nDSGiCBWi?=
 =?us-ascii?Q?VA6Uk8NjLQE98p3DRAleYRmWk1nN9gPGgO34erJRv65Q90ui1wSACq27HU7M?=
 =?us-ascii?Q?4mQieHUyiyjWEc/vD9i7gcrY9T7Nu+LFu+r6I7C5lrHQJxdcTgCCMgQyt3ab?=
 =?us-ascii?Q?/PWoAQz4WsWNVoQAv7SBdjYf9fAx2CX3jM9ZQCXx9Rug3fphG8cFC6YUTQlI?=
 =?us-ascii?Q?BeQusTfWj0cP9RyMYjbiw3FPhdpUAaifk2jlPnC4nmgPUsLJaQO2OldXYCZJ?=
 =?us-ascii?Q?URUyxoqTwhaAmOihXukEX7/ZXDzciSGZWus5bGLtGd+bW/744G7d8aMqhxSU?=
 =?us-ascii?Q?Chkba4TrYm5rsAaPNbAyQUjyGzZz4+okoc7kyYQvA5q1FwIXl6Js6wiQzGL5?=
 =?us-ascii?Q?gVTk4YAeFL/sY0dX3AkhrSWCp54hOe1J0nj6Myv1agC1Wglz6jJGo79xp+U3?=
 =?us-ascii?Q?2YjNhLbHqUwpypIgr6tbtz0WZheGq0HuPL4E3SlK/+cSGyrs5VLZkomA4DX/?=
 =?us-ascii?Q?ZAcbDDVHrvzpaJpgEsVGpu1bL7v/JA3I6yScZa+hcnTeERP0Dwr8smNm+rut?=
 =?us-ascii?Q?D6MJZFoEZIZg31qxjBcFy4QjEHHcz97GLFXI3Ewm3VsO7m0ryeHYll7btZgH?=
 =?us-ascii?Q?Y65n+8irM05TmPcT+9AD1X3mafaYkcDnFj3c3pT812PXKkYSYDlizhCyeWVg?=
 =?us-ascii?Q?qe4Uufla0FvdV9GgIwHWqMcXMJUQ8tyEUjs+xq9rH3JSRVL+Io4yKTL0MnCB?=
 =?us-ascii?Q?Use309UZcVDhiGZSROS9eB2c/Mp/YM7SNNGj3nISCyOZr+gGEO+ml1V6kMOO?=
 =?us-ascii?Q?2fyXem4HmHznHEHCtn67/eKGGX8MuDRDtypSON+SZaO0PocM0NAPn8ta/aR0?=
 =?us-ascii?Q?LtAoGKpSRO1y0fSQB6+Aw+7YD0UTuPDH8z02QPCgRIw3sKM9lUK0yt2Jfe2F?=
 =?us-ascii?Q?VNLI4NWPu8Sq07u0wjtEs7y2SAn00eBEj5SQQ4rdgayJPxR32Q=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qZKX51vNW8ILB2cXNhy4zX/38wMpHNlEKTihxJRiHh/HJid9GoSypkR4IBfZ?=
 =?us-ascii?Q?FEjOIHGhzjqF2qhvEdVlOhi4bC6HAe7IdeIwOCNJ2ed14Ui45SCpwA16QRTK?=
 =?us-ascii?Q?LF8J93gEg4xhH5K8AA1L3TmVHzx/I+5Fnt2h0ZwMxk1wC/aZRSx9mCRZRJyk?=
 =?us-ascii?Q?QrRRF/sl/t68dw81ARVMlVkq5l9ylWcSa4zshiLjN0DdGA9TQc3lcG/zfKMQ?=
 =?us-ascii?Q?x53TT/6XXfjEvLg+dDRYId/nyVhLfjswDZlLb45NTlqnvFZG2KbaCcxoC4sd?=
 =?us-ascii?Q?YEGbE0ApB9aLdOhnzQBchBLw+rjiKQJINID97Bfm8UEmXlZQn5fu2W7q/wAT?=
 =?us-ascii?Q?fQGVv8SWFtS/ZQrpzUeYFWoqM91A6rHJIaZ61HEzqfx47baDcj8qoICCY7x+?=
 =?us-ascii?Q?GdmOQr2whS9qrS5AUNfe7KxiBLOBa0Z+jGsZk/Bm8EhciMti0xriMnzJS1C4?=
 =?us-ascii?Q?GQ2g+hXLvp2PCNTxUtJLkFNcHUgHRhAr8KJLwaxRqg+Ea7ZPBLpGxIqLupEX?=
 =?us-ascii?Q?jtDv8NEYVqasGEwCI0GF7avva6apk5Ewg5/gxDkSWhmgqQZNAuQsYJpQb1NT?=
 =?us-ascii?Q?IyCjyiZhWot2Zxdg4rIGCV73OIegzsImdrtEDd2uIt+RcFn6p2JFCOrGUeid?=
 =?us-ascii?Q?4Wxvnz0Ujn3oeBxcrtOsJVMnPVVe22jrV6THr9cAuY0cu9Ss08DlsaKuhFDl?=
 =?us-ascii?Q?TYsSz49KcPQGtTmhT7aD3in5celk348gqDB6whyG9DoNI8lIa2xWF5CxmiPJ?=
 =?us-ascii?Q?eb1Pz1wZuQR6MZngmIIvA6FyhTsZBq/jSrTRKgBs6i9mf2jTtFKKNjtUP0v0?=
 =?us-ascii?Q?k8SJtMTILX6zGRT1CAt4Az1PMgN+rRKib5fYvkfwY90qrZXgl/MUp6RXcAtZ?=
 =?us-ascii?Q?0Bzo8LYtzc2lsQN+FXTprjG3Tp4dkmrUnusaAo4jnl/FyNJQmW8rfi+pw1Pz?=
 =?us-ascii?Q?14+soV4Vxk0wWEQLz9KEYnQBMx+EzARPXPyFtgEuX7Y55ca4ytf31pp8mMt7?=
 =?us-ascii?Q?kPF+pZX3XvXci5jLDW0HZQPiPnTwH2ru6HvjOhWsHGX4nv1tpXSNjGwSzylj?=
 =?us-ascii?Q?y69FjGfceaGruQyMh+C8f/0PzZgsqnTAaG+ln8q8IAMV2IRpQWRuuKrLHiKe?=
 =?us-ascii?Q?G/Zn2VVcyZMZatzOhEzq5R7DdEHRDZsQTqqfQ7bxvHtF8LYSykr7g5T92Ne3?=
 =?us-ascii?Q?YLArAbLQxu40B9WoZrRLXjdyGlSkMWG0BZj32hnUYjlT9P9CJRBJYH7zsVDX?=
 =?us-ascii?Q?VMaCCXDPXdVWKpjuLVKnfbM5uyNUm2SkfwJuBIWvCCiR9OqMx7e/C3gv17Gu?=
 =?us-ascii?Q?EUE7A1pND8Bi+qaCkr0eDSkIGI/p4F4+PNovcJ++zau8cMlykkbwtSCWggWW?=
 =?us-ascii?Q?1AaGHo/oddG78gGiM0DvMpcrhE4akiJh1y/CL7bUO+z8MK72BRbJ1kKlgemk?=
 =?us-ascii?Q?i6xNjS0xracnU3EGk1SOh0EBcgLPyDRWzorAVLgZVd1rmf2VuSEFSD8Rnyc5?=
 =?us-ascii?Q?LK01zCeonxBlyO6d3Mzt9ZOMufCQwbdl/xn9t0ikrC85sF7kUXKLKbNFnTAE?=
 =?us-ascii?Q?wnyes96VD2qurbzPAn7uWsbrzibrlywGmTFUGe4e9K9fUU1yim3l27+kudfi?=
 =?us-ascii?Q?Hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <90EA7149D5D948479091216A9A93E89C@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ae24f60-5c05-4944-ed62-08dc9b530a85
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 11:26:54.0473
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cm/90I3mU48KkG86n9hCHve5GSAlLD0m/6tNrIuj+CXXoXPA/qCFuS2O6QPVT4shnzYkdxNPOMpqCK4Ri/etLNRj+9Nbt/pNRe2oehgX0Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR06MB10422
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-03_06,2024-07-03_01,2024-05-17_01
Subject: [oss-security] Re: CVE-2024-6387: RCE in OpenSSH's server, on glibc-based Linux
 systems

Hi all,

Many people have asked us about an alleged proof of concept named
"7etsuo-regreSSHion.c": it is not a proof of concept, it is essentially
empty code (it might even be dangerous to compile and execute, we have
not checked). It is not just the shellcode that is missing, everything
else is missing too: the key-exchange code does nothing, the public-key
code does nothing useful, etc etc.

It looks great but it does nothing. A working proof of concept for this
vulnerability will be much longer and complex, and will take much more
time to write than this.

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
